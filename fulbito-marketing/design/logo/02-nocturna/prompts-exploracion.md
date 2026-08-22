# Prompts de exploración — Logotipo "NOCTURNA · El Haz"
## Fulbito · Córdoba, Argentina

> Seis prompts listos para pegar. Sirven para **explorar variantes del símbolo antes de cerrar**, no para producir el logo.
>
> **Advertencia de uso.** Ningún generador de imagen produce un vector limpio, ni una grilla, ni un archivo con áreas medibles. Lo que sale de acá es material de conversación: siluetas, ángulos de apertura, proporciones de cabezal, densidad de negro. La forma final se dibuja con paths, como está en `isotype.svg`. Si alguien trae un PNG de Midjourney a la revisión y dice "este es el logo", la respuesta es no.
>
> **Trampa a evitar en cualquier prompt propio que escriban.** Las palabras `circle`, `rounded`, `soft`, `glossy` y `app icon green background` empujan a los modelos directo al vecindario de Spotify, porque es el ejemplo dominante de "logo verde de app" en los datos de entrenamiento. Están en el bloque `--no` de todos los prompts de abajo y conviene dejarlas ahí.
>
> Los parámetros están escritos para **Midjourney v7**. Al final de cada bloque va la traducción a **Flux** (que no usa `--` sino texto plano + ajustes del sampler).

---

## 1. Calibración del referente real

**Qué busca:** verificar el ángulo de apertura del haz y la proporción del cabezal contra un reflector de verdad. Antes de estilizar hay que saber cómo es la cosa. Lo que interesa mirar en el resultado es la relación entre el ancho de la carcasa y el ancho del charco de luz en el piso, y cuánto se abocina el cabezal.

```
floodlight fixture at a small five-a-side football pitch in Cordoba Argentina,
photographed straight on from ground level at night, single light head mounted
on a pole, hard volumetric beam falling on wet grass, sodium and LED mixed light,
deep black sky, no people, no ball, documentary photograph, 50mm, high contrast
--ar 1:1 --style raw --s 50 --v 7
--no crowd, stadium, players, soccer ball, lens flare star, bokeh hearts, watermark
```

**Flux:** mismo texto sin los flags; `guidance 3.0`, `steps 30`, formato cuadrado. Bajar guidance si sale demasiado publicitario.

---

## 2. El símbolo, exploración de la partición

**Qué busca:** variantes de **cómo se corta el haz en dos**. El corte entregado es un canal recto de ancho constante con eje inclinado. Las alternativas que vale la pena ver son: corte en zigzag, corte escalonado, dos haces que nacen separados, tres franjas en vez de dos. Mirar cuál sobrevive achicada y cuál se convierte en ruido.

```
flat vector logo symbol, a stadium floodlight reduced to two shapes: a wide
trapezoid lamp housing on top and a downward widening cone of light below it,
the cone split lengthwise into two separate solid pieces by a straight negative
gap, hard mitered corners, no curves anywhere, emerald green shapes and a single
amber horizontal bar, pure black background, centered, geometric construction,
flat color only, no shading, no outline
--ar 1:1 --style raw --s 0 --v 7
--no circle, rounded corners, gradient, glow, 3d, bevel, soccer ball, shield,
ribbon, whistle, player silhouette, perspective pitch, text, letters, mockup
```

**Flux:** agregar al final `absolutely flat two-color vector, no gradients`; `guidance 2.5`, `steps 28`. Flux respeta mejor "flat" con guidance baja.

---

## 3. Variante a línea

**Qué busca:** saber si el símbolo aguanta como contorno de trazo constante. Importa para bordado fino, para grabado, para el ícono de notificación de Android y para la ilustración de estados vacíos que ya especifica el UI kit (trazo de 1,5 px en gris). Si a línea se desarma, hay que aceptar que el mark es exclusivamente de masa.

```
monoline icon of a floodlight beam, outline only, uniform 2px stroke weight,
trapezoid lamp head above a downward widening cone split in two by a straight
gap, mitered stroke joints, no fills, single light stroke on pure black,
technical drawing feel, 64px icon grid, centered
--ar 1:1 --style raw --s 0 --v 7
--no filled shapes, gradient, glow, rounded joints, variable stroke, sketch,
hand drawn, soccer ball, shield, text
```

**Flux:** `line art icon, uniform stroke, no fill`; `guidance 2.0`, `steps 24`.

---

## 4. Contrapropuesta: la torre entera

**Qué busca:** poner a prueba la reducción. Saqué el mástil porque a 16 px es un pelo de un píxel — pero conviene ver qué se gana en reconocimiento con la torre completa, y si ese reconocimiento justifica el costo a tamaño chico. Es la exploración honesta de la decisión que ya tomé, no una formalidad: si la torre completa se lee muchísimo mejor a 200 px, hay una conversación sobre un lockup de dos niveles de detalle.

```
flat vector emblem of a complete football pitch floodlight tower seen frontally,
vertical lattice mast with a rectangular bank of lamps on top, geometric,
symmetrical, hard corners, two colors only: emerald green structure and one
amber bar of lamps, pure black background, no light beam, badge free, centered,
flat color, no shading
--ar 1:1 --style raw --s 0 --v 7
--no circle, rounded, gradient, glow, 3d, realistic, perspective, crowd, pitch,
soccer ball, shield, ribbon, text
```

**Flux:** mismo texto; `guidance 2.8`, `steps 30`.

---

## 5. El ícono en su hábitat

**Qué busca:** el único test que importa del app icon es **cómo se ve al lado de los demás**. Este prompt genera una grilla de home de teléfono con un tile negro en el medio, para evaluar el contra #3 del README: si el tile negro se pierde contra el wallpaper. Mirar el resultado entrecerrando los ojos y ver si el tile aparece o desaparece.

```
smartphone home screen grid of app icons photographed straight on, one icon in
the middle is a matte pure black square tile with a small emerald green
downward light cone and a tiny amber bar inside it, the surrounding icons are
generic colorful app tiles, dark wallpaper, screen glare minimal, product
photography, top down, sharp
--ar 4:5 --style raw --s 100 --v 7
--no spotify, music app, green tile, text labels legible, hands, reflections,
tilted angle, blur
```

**Flux:** sacar `--no spotify` (Flux lo ignora) y agregar en positivo `the black tile is clearly not a music app`; `guidance 3.2`, `steps 32`.

---

## 6. Key visual de campaña (no es el logo)

**Qué busca:** material para la Semana 1 de "100 Capitanes", donde el brief pide puntos de luz de reflector en la oscuridad y **el logo todavía no aparece**. Sirve para sembrar el mundo visual del símbolo antes de mostrarlo. Es el único prompt de esta lista cuyo output puede terminar en una pieza real, y aun así como referencia de dirección de arte para una foto, no como imagen final: la campaña exige fotografía real de canchas de Córdoba.

```
empty five-a-side football pitch in Cordoba Argentina at 21:40, seen from the
sideline, floodlights on, hard volumetric cones of light cutting the darkness
and splitting the wet grass into lit and unlit halves, no players, no ball,
worn goal without a new net, deep blacks, amber sodium and cold LED mixed,
heavy photographic grain, cinematic, wide angle, film still
--ar 9:16 --style raw --s 250 --v 7
--no people, crowd, stadium, ball, daylight, pastel, teal orange grade, text,
logo, watermark, clean modern arena
```

**Flux:** mismo texto; `guidance 3.5`, `steps 35`. Subir el grano en post, no en el prompt: Flux lo interpreta como ruido de compresión.

---

## Cómo leer los resultados

Tres preguntas por cada tanda, en este orden. Si falla la primera, las otras dos no importan.

1. **Achicada a 24 px, ¿qué queda?** Guardar el thumbnail, no el original. Un símbolo se juzga por su peor tamaño.
2. **En una tinta, ¿sigue estando?** Convertir a blanco y negro puro sin grises. Si la variante depende de que el verde y el dorado sean distintos, no es un logo.
3. **Entrecerrando los ojos, ¿se parece a un disco verde?** Si sí, volvió a Spotify y hay que descartarla, por linda que esté.
