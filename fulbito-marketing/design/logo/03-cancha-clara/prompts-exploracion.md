# Prompts de exploración — Logo 03 Cancha Clara
### Fulbito · Brand Guardian · NEXUS

---

## Cómo usar esto

Seis prompts listos para pegar. **No son para generar el logo final** —ningún generador dibuja geometría con precisión decimal ni respeta un `wdth` 110— sino para abrir el abanico antes de cerrar, y para conseguir contexto de aplicación que en Figma cuesta dos días de mockup.

**Regla de lectura de los resultados:** todo lo que salga hay que juzgarlo contra el mismo criterio del §12 del README — *¿sobrevive en una tinta y a 16 px?* Si una variante es linda pero necesita tres colores y 200 px, no entró.

**Notación de parámetros**
- **Midjourney:** los flags van tal cual (`--v 7 --style raw --ar 1:1 --s 50 --no ...`). `--s` bajo (25–100) mantiene la salida cerca del prompt en vez de embellecerla, que es lo que necesitamos en trabajo de marca. `--style raw` saca la capa estética de MJ.
- **Flux (dev / pro / Krea):** ignorá los flags de MJ. Usá `guidance 2.5–3.5`, `steps 30–40`, y el aspecto por selector. Flux respeta mucho mejor las descripciones de negativos escritas en prosa, así que en cada prompt dejé la línea de exclusiones también en texto.
- **Universal:** si el motor soporta *seed*, fijalo. Comparar variantes con seeds distintos no compara nada.

---

## Prompt 1 — Variaciones del corte

**Qué busca:** abrir la única decisión formal abierta del símbolo. Hoy el canal es vertical, recto y de `D/6`. Antes de cerrar quiero ver el vecindario: canal más fino, más grueso, con extremos que no llegan al borde, dos mitades con caras internas levemente cóncavas. Salida esperada: una grilla de estudio, no un logo terminado.

```
minimal geometric logo study sheet, grid of 12 variations of a single circle
divided by a vertical negative-space channel into two equal halves, flat
electric blue #1B4DFF marks on pure white, each variation isolated in its own
cell, variations explore channel width from hairline to one sixth of the
diameter, straight cut versus slightly concave inner faces, full-bleed channel
versus inset channel, pure vector geometry, absolutely flat fill, no gradient,
no shadow, no outline, no texture, swiss design specimen sheet, clinical
documentation photography of a logo grid
--ar 4:5 --v 7 --style raw --s 25 --no text, letters, football, soccer ball,
hexagon, shield, gradient, 3d, bevel, glow, mockup, hands
```

**Flux — línea de exclusiones en prosa:** *Do not include any text, letters, footballs, soccer balls, hexagons, shields, gradients, 3D rendering, bevels or glows. Flat two-dimensional vector marks only.*

**Qué mirar:** ¿en qué ancho de canal el símbolo deja de leerse como "dos mitades" y pasa a ser "un círculo rayado"? ¿La cara interna cóncava mata la lectura de "pausa" (contra #5 del README) sin romper la simetría?

---

## Prompt 2 — Presencia del wordmark

**Qué busca:** validar la apuesta tipográfica central: **grotesca ensanchada, no condensada.** El reflejo de todo el rubro es condensar. Quiero ver, lado a lado, la misma palabra en ancho 85, 100, 110 y 125 para poder defender el 110 con algo más que una opinión.

```
typography specimen poster, the single word "Fulbito" repeated four times
stacked vertically, each line the same neutral grotesque typeface at a
different width axis: condensed, normal, slightly extended, extended, bold
weight, tight negative tracking, ink black #0F1115 on off-white #FAFBFC,
enormous scale, edge to edge, no other elements, type foundry specimen page,
signage lettering, high legibility grotesque, flat vector lettering, precise
letterforms, open counters
--ar 3:4 --v 7 --style raw --s 50 --no serif, script, handwriting, italic,
outline, gradient, texture, grunge, football, ball, mockup, background image
```

**Flux — exclusiones:** *No serifs, no script or handwriting, no italics, no outlines, no gradients, no grain or grunge texture, no football imagery. Clean flat lettering on a plain background.*

**Qué mirar:** a qué ancho la palabra empieza a leerse como *un objeto* en vez de *siete letras*. Y el reverso: a qué ancho se vuelve blanda. Ojo con la ortografía — los generadores rompen palabras; si sale "Fulbtio" sirve igual para juzgar ancho y peso.

---

## Prompt 3 — El ícono en la grilla real

**Qué busca:** el test de *findability* que decide el color del app icon. La pregunta no es "¿es lindo?" sino "¿lo encontrás con el pulgar en movimiento?". Por eso el ícono va **rodeado de sus competidores reales**: verdes, negros, con pelota.

```
photorealistic smartphone home screen viewed straight on, a grid of app icons,
most of them dark green and black sports app icons with generic ball motifs,
one single icon stands out: a flat saturated electric blue rounded square with
a plain white circular mark split in two equal halves by a vertical gap, no
letters inside it, iOS squircle shape, crisp screen pixels, neutral daylight,
slight screen glare, held in one hand, shallow depth of field
--ar 9:16 --v 7 --style raw --s 100 --no text overlay, watermark, logos of real
brands, gradient icon, glossy 3d icon, bevel, ornate illustration
```

**Variante obligatoria a correr:** cambiá `electric blue` por `deep indigo violet` para ver el plan B (`#4F2BD9`) en el mismo contexto. Es el insumo visual de la decisión de §3 del README.

**Flux — exclusiones:** *No text overlays, no watermarks, no recognizable real brand logos, no glossy 3D or beveled icons.*

**Qué mirar:** entrecerrá los ojos hasta que la pantalla se vuelva una mancha. ¿Cuál es el primer ícono que aparece? Si no es el nuestro en las dos versiones, el problema es el color, no la forma.

---

## Prompt 4 — Aplicación en Córdoba

**Qué busca:** sacar la marca de la lámina blanca y ponerla donde el capitán la va a ver de verdad: el cartel del complejo, el ticket del turno, la remera de entrenamiento, la calcomanía en el vidrio del auto. Es el test de si "sobria" se lee como *seria* o como *desabrida* en un contexto de barrio.

```
brand application photography, four scenes: a small flat sign at the entrance
of an amateur five-a-side football complex at dusk, a printed booking ticket on
a wooden counter, a plain cotton training t-shirt folded on a bench, a vinyl
sticker on a car window, each carrying the same minimal identity: a solid
circular mark split in two equal halves by a vertical gap next to a wide bold
grotesque wordmark, ink black or electric blue on white, no other graphics,
argentinian suburban context, worn concrete, chain link fence, floodlight glow
in the background, documentary photography, natural light, unstyled, grainy
realism
--ar 3:2 --v 7 --style raw --s 150 --no gold, neon, green turf close-up,
gradient, shield crest, ribbon, mascot, stock photo models, glossy branding
mockup, 3d render
```

**Flux — exclusiones:** *No gold accents, no neon, no shield crests or ribbons, no mascots, no glossy branding mockups, no 3D renders. Documentary photography, not advertising.*

**Qué mirar:** el cartel del complejo es el juez. Si ahí la marca se ve *cara* — como algo que un negocio serio pagó — la dirección aguanta. Si se ve *vacía*, hay que revisar el peso del wordmark, no agregarle color.

---

## Prompt 5 — Territorio de actitud

**Qué busca:** el mood de referencia declarado en el brief —Linear, Things, Mercado Pago cuando funciona bien— **sin copiar su estética**. Sirve para alinear al equipo sobre qué se siente "una herramienta que resuelve y desaparece" antes de discutir un hex.

```
brand mood board for a utility software company, six panels: a lot of white
space, one single saturated accent color used sparingly, a wide bold grotesque
headline, a monospaced number block, a thin cool grey rule, one small flat
geometric mark, cold neutral greys, no imagery, no illustration, no texture,
swiss international style, precise alignment, generous margins, calm, clinical,
confident, print specimen quality
--ar 16:9 --v 7 --style raw --s 50 --no photographs, people, sport, grass,
wood, paper texture, terracotta, gold, neon green, dark background, gradient,
illustration, icons of balls
```

**Flux — exclusiones:** *No photographs, no people, no sport imagery, no grass, no wood or paper textures, no terracotta, no gold, no neon green, no dark backgrounds, no gradients.*

**Qué mirar:** este prompt tiene una **función de control**: las exclusiones son exactamente el territorio prohibido de esta dirección (tierra, ladrillo, papel, verde neón, dorado, dark de base). Si algo de eso se cuela y mejora la pieza, es información valiosa — significa que el territorio está mal trazado y hay que discutirlo, no ignorarlo.

---

## Prompt 6 — Stress test: una tinta, tamaño chico

**Qué busca:** el criterio de calidad duro del encargo. Todo lo que sobreviva a este prompt es candidato; todo lo demás se descarta, por lindo que haya salido en el prompt 1.

```
technical reproduction test sheet for a logo, one simple geometric mark
consisting of a filled circle split by a vertical gap into two equal halves,
printed in solid black ink only, shown at seven decreasing sizes from 64
pixels down to 12 pixels in a single row, plus the same mark embroidered on
dark fabric, engraved on brushed metal, and screen printed on a coarse cotton
tee, single ink throughout, no color, no grey, no anti-aliasing artifacts
invented, production test documentation, flat top-down photography, neutral
lighting
--ar 16:9 --v 7 --style raw --s 25 --no color, gradient, multiple inks, text,
letters, shadow, glow, 3d, decorative frame
```

**Flux — exclusiones:** *Single black ink only. No color, no gradients, no multiple inks, no text or letters, no shadows or glows, no 3D, no decorative frames.*

**Qué mirar:** el punto exacto en el que el canal se cierra y las dos mitades se funden en un óvalo. En pantalla ese punto tiene que estar **por debajo de 16 px**; en bordado, por debajo de 12 mm. Si el canal se cierra antes, la variante está muerta y hay que ensancharlo — el README lo tiene en `D/6` justamente por esto.

---

## Cierre

Los seis prompts cubren el ciclo entero: **forma** (1), **tipografía** (2), **decisión de color** (3), **contexto real** (4), **alineación de equipo** (5) y **filtro de producción** (6).

Si hay tiempo para uno solo, corré el **6**. Es el único que puede matar la propuesta, y es mejor que la mate un render que una imprenta.
