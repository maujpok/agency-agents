import sys, os, glob, base64
from playwright.sync_api import sync_playwright

d, out = sys.argv[1], sys.argv[2]
os.makedirs(out, exist_ok=True)
svgs = sorted(glob.glob(os.path.join(d, "*.svg")))

with sync_playwright() as p:
    b = p.chromium.launch(executable_path="/opt/pw-browsers/chromium-1194/chrome-linux/chrome",
                          args=["--no-sandbox"])
    pg = b.new_page(viewport={"width":1000,"height":300})
    for s in svgs:
        name = os.path.basename(s)
        svg = open(s).read()
        # checkerboard bg so we see transparency + overflow
        html = f"""<!doctype html><html><body style="margin:0;padding:24px;
        background:#fff;display:inline-block">
        <div style="outline:1px dashed #f0f;display:inline-block;line-height:0">{svg}</div>
        </body></html>"""
        pg.set_content(html)
        try:
            pg.wait_for_function("document.fonts.ready.then(()=>true)", timeout=8000)
        except Exception:
            pass
        pg.wait_for_timeout(1200)
        el = pg.query_selector("div")
        el.screenshot(path=os.path.join(out, name + ".png"))
        print("ok", name)
    b.close()
