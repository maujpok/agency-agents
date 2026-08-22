# UI Kit "NOCTURNA"
## Dirección 02 · FulbitoApp · Córdoba, Argentina

> Propuesta de sistema de interfaz. Una de tres direcciones a comparar.
> Autor: UI Designer (NEXUS) · Revisión de marca: Brand Guardian
> Estado: propuesta cerrada, lista para handoff a diseño y a dev Flutter.

---

## 1. Concepto en una frase

**Es el jueves a las nueve de la noche, la luz del reflector pega en el pasto mojado, y la app se ve exactamente como se siente ese momento.**

### Fundamento

Cuando el capitán abre FulbitoApp, en el 80% de los casos está en una de estas tres situaciones: en la cama el martes a la noche confirmando quién juega, en el auto estacionado frente a la cancha un minuto antes de entrar, o dentro de la cancha con la luz artificial encima y las manos frías. Ninguna de esas tres situaciones es de día, ninguna es tranquila, y en ninguna tiene dos manos libres.

NOCTURNA no elige dark mode por moda ni por "se ve premium". Lo elige porque **es el ambiente real del producto**. Una interfaz clara a las 21:40 en una cancha de Villa Allende es una linterna en la cara: quema, obliga a bajar el brillo, y hace que el capitán tarde tres segundos más en leer la lista de convocados. Tres segundos con diez tipos esperando para empezar son una eternidad.

El segundo argumento es de estatus, y es el más importante para el negocio. El fulbito amateur cordobés se toma en serio a sí mismo: se discute la formación, se guarda el resultado, se habla del partido durante tres días. Pero las herramientas que existen para organizarlo (un grupo de WhatsApp, una nota del celular, un Excel) tratan al fulbito como una cosa menor. **NOCTURNA le da al partido de los jueves la misma dignidad visual que Sofascore le da a la Premier League.** Ese salto de categoría es el argumento emocional: no es una app de tareas con pelotitas, es la liga.

Y el dorado es el mecanismo. El capitán ya hace el trabajo — arma, junta, paga la seña, banca al que no responde. Nadie se lo reconoce. En NOCTURNA el rol tiene un color que nadie más tiene en la app. Eso no es decoración: es la traducción visual de "estamos de tu lado".

---

## 2. Continuidad con la campaña "100 Capitanes"

El capitán que descarga la app viene de ver cuatro semanas de contenido negro y verde con un número dorado gigante. Si abre y no reconoce nada, rompimos la promesa. Si abre y ve el Story de Instagram convertido en pantalla, tampoco sirve: un Story se mira dos segundos, una app se mira cuarenta veces por semana.

### Lo que se mantiene idéntico

| Elemento | Por qué no se toca |
|---|---|
| Verde Cancha `#1DB954` como color de acción | Es el ancla de reconocimiento. Cada botón primario es un recuerdo de la campaña. |
| Negro Noche `#0A0A0A` como fondo base de la app | Continuidad total y, de paso, es lo que menos batería consume en OLED. |
| Blanco Línea `#F5F5F5` como texto principal | Nunca `#FFFFFF`: el blanco puro sobre negro puro produce halo. |
| Dorado Capitán `#F5A623` como marca exclusiva del rol | Es el activo emocional entero de la campaña. |
| Bebas Neue para números y momentos | La cifra grande es el activo visual de "100 Capitanes". Sobrevive intacta. |
| Insignia hexagonal del capitán | Se simplifica por tamaño, pero la silueta se mantiene reconocible. |

### Lo que se adapta, y por qué

**1. Un negro pasa a ser seis superficies.**
La campaña tiene un solo negro porque una pieza gráfica es plana. Un producto tiene jerarquía: una tarjeta sobre un fondo, un menú sobre la tarjeta, un diálogo sobre todo. En dark mode esa jerarquía se comunica con luminosidad, no con sombra (una sombra negra sobre fondo negro no existe). Por eso NOCTURNA agrega una escala de cinco superficies elevadas por encima del Negro Noche. El `#0A0A0A` sigue siendo el piso; simplemente ahora hay pisos arriba.

**2. Bebas Neue baja de protagonista a solista invitada.**
Bebas es condensada, es solo mayúsculas, tiene un solo peso y una altura de x enorme. Es perfecta para "100 CAPITANES" a 200px y es un desastre para "Faltan 2 jugadores para el jueves". En un Story el ojo hace un escaneo; en una app hace lectura sostenida, y la condensada sostenida cansa y genera errores de lectura (la *I*, la *l* y el *1* se parecen demasiado a 14sp).
**Regla:** Bebas Neue vive en display, marcadores, cifras de estadística y eyebrows de sección. Nunca por debajo de 16sp, nunca más de cuatro palabras, nunca en un párrafo, nunca en un campo de formulario, nunca en un mensaje de error. Ver §6 para la solución completa (una tercera familia puente).

**3. El dorado se raciona hasta volverlo escaso.**
En la campaña la semana 4 es dorada entera. En el producto el dorado no puede pasar del **5% de los píxeles de una pantalla**, y solo aparece en tres contextos: la insignia del capitán, el botón de herramientas de capitán, y el anillo del avatar cuando el usuario es capitán del grupo que está mirando. Si el dorado aparece en un logro, en una notificación o en una promo, deja de significar jerarquía en dos semanas y se convierte en un amarillo más. **La escasez es la feature.**

**4. Rojo Urgencia deja de ser marketing y pasa a ser sistema.**
`#E53935` en la campaña significa "quedan pocos lugares". En el producto tiene que significar error, destructivo, y nada más. No se puede usar un color de sistema para generar FOMO adentro del producto: el día que el usuario vea rojo por una promoción y otro día por "no se pudo guardar el partido", perdimos la capacidad de avisarle algo grave. El rojo de la campaña se conserva como color de relleno destructivo, pero el rojo de *texto* se aclara a `#FF6B6B` porque `#E53935` sobre negro apenas araña el AA y falla apenas sube a una superficie elevada.

**5. El grano de foto se limita a la fotografía.**
El noise al 4% sobre un header con imagen refuerza el mundo de la campaña. El mismo noise sobre una superficie de UI destruye la nitidez del texto renderizado, pelea con el subpixel antialiasing y agrega costo de render en cada frame de scroll. **El grano vive dentro del recuadro de la foto y termina donde termina la foto.**

**6. Se agregan cuatro colores que la campaña no tenía.**
Una campaña no necesita comunicar "guardado", "sin conexión", "revisá esto". Un producto sí. NOCTURNA suma éxito, error, advertencia e info (§3), con una restricción fuerte: **la advertencia no puede ser dorada.** El ámbar de advertencia se corre deliberadamente hacia el naranja (`#FF7A2F`) para que nunca se confunda con el Dorado Capitán, y siempre va acompañada de ícono, nunca sola.

**7. El verde tiene dos valores según el trabajo que hace.**
`#1DB954` como relleno (botones, barras, indicadores) y `#2FCA6E` como texto e ícono sobre superficies elevadas. La razón es óptica: un trazo fino de un color pierde peso percibido frente a una masa del mismo color. Con dos valores, el verde se ve *igual de verde* en los dos usos.

**8. La fotografía deja de ser el 100% del fondo.**
En campaña todo es foto de cancha con texto encima. En producto la foto aparece solo en tres lugares: header de perfil, header de partido pasado con media, y onboarding. En el resto, la referencia a la luz de reflector se hace con un **degradado radial verde al 6-8% de opacidad** naciendo de la esquina superior de las tarjetas héroe. Cuesta cero de red, no depende de que el usuario suba fotos buenas, y evoca lo mismo.

---

## 3. Paleta completa

### 3.1 Primitivos de marca

| Nombre | Hex | Origen |
|---|---|---|
| Verde Cancha | `#1DB954` | Campaña (primario) |
| Negro Noche | `#0A0A0A` | Campaña (fondo) |
| Blanco Línea | `#F5F5F5` | Campaña (texto) |
| Dorado Capitán | `#F5A623` | Campaña (acento exclusivo) |
| Verde Oscuro | `#0F7A35` | Campaña (secundaria) — pasa a ser el verde de light mode |
| Rojo Urgencia | `#E53935` | Campaña (secundaria) — pasa a ser destructivo de sistema |

### 3.2 Rampa Verde Cancha

| Token | Hex | Uso |
|---|---|---|
| `green.50` | `#E7FAEE` | Texto sobre relleno verde oscuro (raro) |
| `green.100` | `#C2F2D6` | Fondos de éxito en light mode |
| `green.200` | `#8FE7B3` | Bordes de contenedores de éxito, light |
| `green.300` | `#56D98D` | Texto de éxito sobre superficies muy elevadas |
| `green.400` | `#2FCA6E` | **Texto e íconos verdes en dark.** Botón terciario. |
| `green.500` | `#1DB954` | **Verde Cancha. Rellenos, CTA primario, barras.** |
| `green.600` | `#17A048` | Estado pressed del CTA primario |
| `green.700` | `#0F7A35` | **Verde de light mode** (texto/ícono). Verde Oscuro de campaña. |
| `green.800` | `#0A5726` | Degradados, sombras de verde |
| `green.900` | `#063418` | Contenedor de éxito en dark |

### 3.3 Rampa Dorado Capitán

| Token | Hex | Uso |
|---|---|---|
| `gold.300` | `#FFD07A` | Texto dorado sobre superficies elevadas (dark) |
| `gold.500` | `#F5A623` | **Dorado Capitán. Bordes de insignia, rellenos de badge.** |
| `gold.700` | `#B87A0C` | Estado pressed del botón de capitán |
| `gold.900` | `#8F5A00` | **Dorado de light mode** (texto/ícono sobre claro) |
| `gold.container` | `#2A1E05` | Fondo de bloques de capitán en dark |

### 3.4 Superficies dark (la escala de elevación)

| Token | Hex | Nivel | Dónde se usa |
|---|---|---|---|
| `surface.canvas` | `#0A0A0A` | e0 | Scaffold. El piso de la app. |
| `surface.1` | `#121513` | e1 | Tarjetas en reposo, tarjeta de partido, listas |
| `surface.2` | `#181C19` | e2 | Bottom navigation, app bar al hacer scroll, campos de texto |
| `surface.3` | `#1F2420` | e3 | Bottom sheets, menús, segmented control activo |
| `surface.4` | `#262C27` | e4 | Diálogos, snackbar |
| `surface.5` | `#2E3630` | e5 | Tooltips, elementos arrastrados |

Los neutros tienen una desviación de matiz mínima hacia el verde (H≈140, S≈6%). No se percibe como color: se percibe como que **no es un gris de app de fintech**. Un neutro puro frío al lado del Verde Cancha se ve azulado; este no.

`Gris Cemento #2C2C2C` de la campaña no sobrevive como superficie (es un gris neutro puro que pelea con la escala). Se reubica como color de trazo en ilustraciones de estado vacío.

### 3.5 Texto y trazo — dark

| Token | Hex | Uso |
|---|---|---|
| `text.primary` | `#F5F5F5` | Títulos, valores, cualquier cosa que importe |
| `text.secondary` | `#A8B0AA` | Subtextos, metadatos, "Nueva Córdoba · 12 min" |
| `text.tertiary` | `#8A938C` | Labels de overline, ejes de gráfico, placeholders |
| `text.disabled` | `#5A625C` | Solo deshabilitado (exento de WCAG) |
| `text.onGreen` | `#0A0A0A` | Texto sobre relleno verde. **Siempre negro, nunca blanco.** |
| `text.onGold` | `#0A0A0A` | Texto sobre relleno dorado |
| `border.subtle` | `#232823` | Divisores, hairlines decorativos |
| `border.default` | `#3A423C` | Borde de tarjeta sobre fotografía |
| `border.strong` | `#6E7770` | **Bordes funcionales: input, botón secundario, checkbox** |

### 3.6 Colores semánticos — dark

| Rol | Texto/Ícono | Relleno | Contenedor | Uso concreto |
|---|---|---|---|---|
| Éxito | `#2FCA6E` | `#1DB954` | `#063418` | "Confirmaste", pago acreditado, partido completo |
| Error | `#FF6B6B` | `#E53935` | `#3A1210` | Validación, "no se pudo guardar", eliminar partido |
| Advertencia | `#FF7A2F` | `#FF7A2F` | `#2E1706` | "Faltan 2 jugadores", equipos desparejos, pago vencido |
| Info | `#4DA3FF` | `#4DA3FF` | `#0A1D33` | Tips, cambios de horario, novedades |

**Regla dura:** ningún estado se comunica solo con color. Cada uno lleva ícono y, cuando hay lugar, texto. Un capitán con daltonismo protán tiene que poder distinguir "faltan jugadores" de "todo listo" sin ver el matiz.

### 3.7 Ratios de contraste WCAG — combinaciones críticas (dark)

| Primer plano | Fondo | Ratio | Nivel |
|---|---|---|---|
| `#F5F5F5` texto | `#0A0A0A` canvas | **18.2:1** | AAA |
| `#F5F5F5` texto | `#121513` surface.1 | **16.9:1** | AAA |
| `#F5F5F5` texto | `#181C19` surface.2 | **15.8:1** | AAA |
| `#A8B0AA` secundario | `#121513` surface.1 | **8.3:1** | AAA |
| `#8A938C` terciario | `#121513` surface.1 | **5.8:1** | AA |
| `#8A938C` terciario | `#1F2420` surface.3 | **5.0:1** | AA |
| `#0A0A0A` sobre `#1DB954` | botón primario | **7.7:1** | AAA |
| `#0A0A0A` sobre `#F5A623` | badge dorado | **9.8:1** | AAA |
| `#2FCA6E` texto verde | `#121513` surface.1 | **8.6:1** | AAA |
| `#F5A623` texto dorado | `#121513` surface.1 | **9.1:1** | AAA |
| `#FF6B6B` error | `#121513` surface.1 | **6.6:1** | AA+ |
| `#FF7A2F` advertencia | `#121513` surface.1 | **7.1:1** | AAA |
| `#4DA3FF` info | `#121513` surface.1 | **7.0:1** | AAA |
| `#6E7770` borde funcional | `#181C19` surface.2 | **3.7:1** | AA (componente, ≥3:1) |
| `#6E7770` borde funcional | `#0A0A0A` canvas | **4.3:1** | AA (componente) |

Las combinaciones que **no** pasan y por eso están prohibidas, escritas acá para que nadie las descubra por accidente:

- `#F5F5F5` sobre `#1DB954` → **2.4:1**. Nunca texto blanco sobre verde. El label del botón primario es negro.
- `#F5F5F5` sobre `#F5A623` → **1.9:1**. Nunca texto blanco sobre dorado.
- `#E53935` como texto sobre `#121513` → **4.1:1**. Por eso el error de texto es `#FF6B6B`.
- `#F5F5F5` sobre `#E53935` → **3.9:1**. Los rellenos rojos llevan texto negro o se cambian por contenedor oscuro.
- `#232823` y `#3A423C` como único límite de un control → por debajo de 3:1. Son decorativos: si un borde comunica el límite de un control interactivo, es `#6E7770`.

---

## 4. Modo claro

NOCTURNA es dark-first, pero el light mode **no es una concesión**: es la respuesta al único escenario donde el dark falla de verdad (cancha al sol, §11). Tiene que sentirse como el mismo producto a otra hora del día, no como el mismo producto con el brillo roto.

### Cómo se traduce sin degradarse

**El principio: no se invierte, se traslada de hora.** Dark es la cancha de noche bajo reflector. Light es el mediodía en el potrero: cal blanca, sombra corta, contraste duro. No es "la versión clara", es "las 13:00".

Cuatro decisiones que evitan que se sienta genérico:

1. **No hay blanco puro de fondo.** El canvas es `#FAFBFA` y las tarjetas son `#FFFFFF`. La jerarquía se invierte respecto del dark: en dark las tarjetas son *más claras* que el fondo, en light son *más blancas y con sombra suave*. Un canvas gris con tarjetas blancas se lee como papel sobre mesa, y ese es exactamente el registro de "planilla del partido".

2. **El botón primario no cambia.** Relleno `#1DB954`, label `#0A0A0A`. Es idéntico en los dos temas. Ese botón es el punto de anclaje de marca: el usuario que cambia de tema tiene que reconocer la app en el mismo lugar, con el mismo color, con el mismo peso.

3. **El verde cambia de valor solo cuando es texto.** `#1DB954` sobre blanco da 2.5:1 y es ilegible. El verde de texto e ícono en light es `#0F7A35` (Verde Oscuro de campaña, 5.3:1). Como es un color que ya existía en el sistema de marca, no se percibe como un verde nuevo.

4. **El dorado deja de ser texto y pasa a ser relleno.** `#F5A623` sobre blanco es ilegible (2.0:1). En dark, la insignia del capitán es hexágono negro con borde dorado y número dorado. En light, se invierte: **hexágono con relleno dorado pleno y número negro** (9.8:1). Cambia la técnica, no cambia el objeto: sigue siendo el mismo hexágono con el mismo número, y sigue siendo el único elemento dorado de la pantalla. Para los pocos casos donde el dorado tiene que ser texto en light (por ejemplo, "Capitán desde marzo"), existe `gold.900 #8F5A00` (5.8:1).

### Superficies y texto — light

| Token | Hex | Uso |
|---|---|---|
| `surface.canvas` | `#FAFBFA` | Scaffold |
| `surface.1` | `#FFFFFF` | Tarjetas, con sombra `0 1 2 rgba(10,10,10,0.06)` |
| `surface.2` | `#F2F4F2` | Campos de texto, bottom navigation |
| `surface.3` | `#E8EBE8` | Segmented control activo, chips en reposo |
| `surface.4` | `#FFFFFF` + sombra `0 8 24 rgba(10,10,10,0.12)` | Diálogos, bottom sheets |
| `surface.5` | `#0E120F` | Snackbar y tooltip: en light se **invierten** a oscuro |
| `text.primary` | `#0E120F` | 18.6:1 |
| `text.secondary` | `#4C534E` | 7.6:1 |
| `text.tertiary` | `#6B736D` | 4.7:1 |
| `text.disabled` | `#A2A9A4` | Exento |
| `border.subtle` | `#E2E6E3` | Divisores |
| `border.default` | `#CBD2CD` | Bordes decorativos |
| `border.strong` | `#7C857E` | Bordes funcionales (3.8:1) |

### Semánticos — light

| Rol | Texto/Ícono | Ratio sobre `#FAFBFA` | Contenedor |
|---|---|---|---|
| Éxito | `#0F7A35` | 5.3:1 | `#E7FAEE` |
| Error | `#C62828` | 5.4:1 | `#FDECEC` |
| Advertencia | `#A64B00` | 5.6:1 | `#FFF1E4` |
| Info | `#0B63C5` | 5.6:1 | `#E7F1FF` |

### Cómo se elige el tema

Por defecto la app sigue `platformBrightness` del sistema, con **dark como fallback** si el sistema no informa preferencia. Pero además existe el interruptor de un toque descrito en §11 (Modo Sol), que fuerza light desde el app bar de la pantalla de partido, sin entrar a Ajustes. Nadie con las manos mojadas y diez tipos esperando navega tres niveles de menú.

---

## 5. Tipografía

### 5.1 El problema de Bebas Neue, y cómo se resuelve

Bebas Neue es la fuente correcta para esta marca y es imposible como fuente de producto. Tres razones concretas:

1. **No tiene minúsculas.** Renderiza todo en versalitas. "Cancha La Tablada" sale "CANCHA LA TABLADA". A escala de titular es potente; en una lista de doce canchas es gritar.
2. **Tiene un solo peso (400).** Un sistema de UI necesita al menos tres pesos para construir jerarquía sin cambiar de tamaño.
3. **Es ultra condensada.** A 14sp en pantalla de 5,5", los caracteres de contraforma estrecha (a/e/s en versalita, y sobre todo I/l/1) se degradan. En un contexto de lectura rápida y a un brazo de distancia, eso produce errores de lectura reales.

**La resolución es un sistema de tres familias con roles no negociables:**

| Familia | Rol | Google Fonts | Pesos a empaquetar |
|---|---|---|---|
| **Bebas Neue** | Display, marcadores, cifras grandes de estadística, eyebrows de sección | Sí | 400 |
| **Archivo** | Titulares h1–h3, nombres de sección, nombres de equipo | Sí (variable) | 600, 700 |
| **Inter** | Todo lo funcional: cuerpo, labels, botones, campos, captions, tablas | Sí (variable) | 400, 500, 600, 700 |

**Por qué Archivo como puente y no dos familias solas.** Si se salta directo de Bebas (100% condensada, todo mayúsculas) a Inter (grotesca neutra de ancho normal), el salto visual entre un display y un h2 es tan grande que el sistema se lee como dos apps pegadas. Archivo es una grotesca semi-condensada con altura de x alta: al 700 y con tracking negativo tiene registro de gráfica deportiva televisada, y al mismo tiempo tiene minúsculas legibles y una escala de pesos real. Es el escalón intermedio que hace que el conjunto se lea como un sistema y no como una colisión.

**Si el equipo quiere reducir a dos familias** (bundle, disciplina de uso, mantenimiento): cortá Archivo y usá **Inter 700 con `letterSpacing: -0.5`** para todos los titulares. Se pierde carácter, no se pierde funcionamiento. No cortes Bebas: es el activo de marca. No cortes Inter: es la que hace que la app sea usable.

**Peso de bundle.** Empaquetadas como assets locales y con subset latin: Bebas Neue 400 (~28 KB) + Archivo variable (~120 KB) + Inter variable (~180 KB) ≈ **330 KB**. En producción se empaquetan como assets, no se resuelven por red — `google_fonts` con descarga en runtime deja la primera pantalla sin tipografía en conexiones malas, y en el conurbano cordobés eso pasa.

### 5.2 Escala tipográfica

Escala base 16sp. Todas las medidas en **sp** (escalan con la preferencia de tamaño del sistema).

| Token | Familia | Tamaño | Peso | Line-height | Tracking | Uso |
|---|---|---|---|---|---|---|
| `display.large` | Bebas Neue | 64 | 400 | 60 (0.94) | +1.0 | Marcador final, número de capitán en perfil |
| `display.medium` | Bebas Neue | 48 | 400 | 46 (0.96) | +0.8 | Fecha/hora del próximo partido |
| `display.small` | Bebas Neue | 36 | 400 | 36 (1.0) | +0.5 | Resultado en tarjeta pasada, cifra hero de stat |
| `heading.1` | Archivo | 28 | 700 | 34 (1.21) | −0.4 | Título de pantalla en scroll extendido |
| `heading.2` | Archivo | 22 | 700 | 28 (1.27) | −0.2 | Nombre de sección grande, nombre de jugador en ficha |
| `heading.3` | Archivo | 18 | 600 | 24 (1.33) | 0 | Título de tarjeta, nombre de cancha, app bar |
| `title.medium` | Inter | 16 | 600 | 22 (1.38) | 0 | Título de fila de lista, encabezado de bloque |
| `title.small` | Inter | 14 | 600 | 20 (1.43) | 0 | Nombre de jugador en lista de equipo |
| `body.large` | Inter | 16 | 400 | 24 (1.50) | 0 | Texto explicativo, onboarding |
| `body.medium` | Inter | 14 | 400 | 20 (1.43) | 0 | **Cuerpo por defecto.** Descripciones, snackbar |
| `body.small` | Inter | 13 | 400 | 18 (1.38) | 0 | Metadatos, "Nueva Córdoba · 12 min" |
| `label.large` | Inter | 15 | 600 | 20 (1.33) | +0.2 | Label de botón primario y secundario |
| `label.medium` | Inter | 13 | 600 | 16 (1.23) | +0.2 | Label de chip, botón compacto |
| `label.small` | Inter | 11 | 600 | 14 (1.27) | +0.4 | Label de bottom navigation |
| `caption` | Inter | 12 | 500 | 16 (1.33) | +0.1 | Helper text, timestamp, pie de gráfico |
| `overline` | Inter | 11 | 700 | 14 (1.27) | +1.2 | MAYÚSCULAS. Encabezados de sección pequeños |
| `eyebrow` | Bebas Neue | 16 | 400 | 16 (1.0) | +1.5 | MAYÚSCULAS. "PRÓXIMO PARTIDO", "LA PLATA" |
| `stat.hero` | Bebas Neue | 40 | 400 | 40 (1.0) | +0.5 | PJ / Goles / Promedio en ficha |
| `stat.medium` | Inter tnum | 20 | 700 | 24 (1.2) | 0 | "9/10" en tarjeta, puntaje de equipo |
| `stat.small` | Inter tnum | 15 | 600 | 20 (1.33) | 0 | Cifras en fila, monto de pago |

**Sobre `overline` y `eyebrow`:** son dos cosas distintas y conviven a propósito. `overline` (Inter) es funcional y aparece en cualquier lado. `eyebrow` (Bebas) es de marca y aparece solo encima de bloques importantes — como máximo dos por pantalla. Si aparecen tres, el sistema se vuelve ruido y hay que revisar la jerarquía de esa pantalla.

**Cifras tabulares.** Todo número que se compare en columna o que cambie en vivo (contadores, puntajes, montos, cronómetros) usa `FontFeature.tabularFigures()`. Sin eso, "9/10" pasando a "10/10" hace saltar el layout, y ese salto en una pantalla que el capitán mira mientras la gente llega se lee como un bug.

**Reglas de uso que no se negocian:**
- Bebas Neue nunca por debajo de 16sp.
- Bebas Neue nunca en contenido generado por usuarios (nombres de jugador, nombres de grupo, nombres de cancha). Un apodo en versalitas condensadas es ilegible y, además, le saca la voz al usuario.
- Nunca Inter Light (300) sobre fondo oscuro: el trazo fino sobre negro se deshilacha (regla heredada de la campaña, y es correcta).
- Máximo dos familias por bloque visual.

---

## 6. Espaciado y grilla

### 6.1 Escala de espaciado

Base **4dp**. Escala: `0 · 2 · 4 · 8 · 12 · 16 · 20 · 24 · 32 · 40 · 48 · 64`.

Los saltos son deliberadamente gruesos a partir de 24: en mobile no hace falta un 28, y ofrecerlo garantiza que dos pantallas terminen con dos valores distintos para el mismo problema.

| Contexto | Valor |
|---|---|
| Margen lateral de pantalla | 16 |
| Padding interno de tarjeta | 16 |
| Separación entre tarjetas de una lista | 12 |
| Separación entre secciones | 32 |
| Separación entre título de sección y su contenido | 12 |
| Separación mínima entre dos objetivos táctiles | 8 |
| Padding horizontal de botón | 24 (primario) / 20 (secundario) / 12 (terciario) |
| Padding horizontal de chip | 10 |
| Espacio entre ícono y texto | 8 |
| Padding inferior de scroll (para que el CTA fijo no tape contenido) | 96 |

**Grilla:** 4 columnas, gutter 16, margen 16. En 360dp de ancho eso da columnas de 71dp. Dos columnas exactas es el layout de "Armar equipos". Una tarjeta a ancho completo son 328dp.

### 6.2 Radios de borde

| Token | Valor | Uso |
|---|---|---|
| `radius.xs` | 6 | Barras de gráfico, indicadores finos |
| `radius.sm` | 8 | Chips pequeños, badges de conteo |
| `radius.md` | 12 | Campos de texto, botones secundario y terciario, snackbar |
| `radius.lg` | 16 | **Tarjetas.** El radio por defecto del sistema |
| `radius.xl` | 24 | Bottom sheets (solo esquinas superiores), diálogos |
| `radius.full` | 999 | **Botón primario (pill)**, chips de posición, avatares, barras de progreso |

**Por qué el CTA primario es pill y todo lo demás no.** No es inconsistencia: es señalización. El botón pill verde es el objeto más grande, más brillante y de forma más distinta de toda la pantalla. En una cancha de noche, con el celular en una mano, el usuario no lee el botón: lo reconoce por silueta. Además, la pastilla es la forma de la banda de capitán, que ya está en el sistema gráfico de la campaña. Un solo elemento tiene esa forma, y por eso funciona.

### 6.3 Elevación en dark mode

**En dark mode la sombra casi no existe.** Una sombra negra proyectada sobre un fondo negro no produce ninguna diferencia perceptible. Insistir con `BoxShadow` en dark es el error más común al portar un sistema claro. La elevación en NOCTURNA se comunica con tres herramientas, en este orden de importancia:

**1. Luminosidad de superficie (herramienta principal).** Cuanto más cerca del usuario, más claro. La escala de §3.4 es literalmente la escala de elevación: `surface.1` es +1 nivel, `surface.4` es +4. Cada paso sube aproximadamente 4% de luminancia relativa, que es el mínimo que el ojo distingue con confianza en un rango oscuro sin que se vuelva gris.

**2. Hairline superior de luz (herramienta secundaria).** Un borde de 1px de `rgba(245,245,245,0.06)` **solo en el canto superior** del elemento. Simula la luz del reflector pegando en el borde de arriba. Es sutil, es barato de renderizar y es lo que hace que una tarjeta se despegue del fondo cuando la diferencia de superficie sola no alcanza. Se usa a partir de `e2`.

**3. Sombra (herramienta excepcional).** Solo cuando el elemento flota **sobre fotografía o sobre otro elemento elevado**, donde sí hay algo que oscurecer. Valores: `e3 = 0 8 24 rgba(0,0,0,0.60)`, `e4 = 0 16 40 rgba(0,0,0,0.70)`. Nunca sobre el canvas negro.

**4. Glows (herramienta de marca, no de elevación).** Dos, y solo dos:
- `glow.primary = 0 0 24 rgba(29,185,84,0.35)` — únicamente en el CTA primario en reposo y en el indicador de "en vivo". Es la luz del reflector del producto.
- `glow.gold = 0 0 20 rgba(245,166,35,0.28)` — únicamente en la insignia del capitán en la pantalla de perfil, nunca en tamaños chicos ni en listas.

Ambos desaparecen en estado `pressed` (el elemento se apaga al hundirse: es la lectura física correcta) y se desactivan por completo si el sistema tiene reducción de movimiento o de transparencias.

**En light mode se invierte:** la luminosidad deja de servir (todo es claro) y la sombra vuelve a ser la herramienta principal. Los tokens de elevación son los mismos nombres con implementación distinta por tema — el código de un componente nunca pregunta por el tema, pide `elevation.e2` y recibe lo correcto.

### 6.4 Motion

| Token | Valor | Uso |
|---|---|---|
| `duration.instant` | 80ms | Feedback de presión, cambio de color |
| `duration.fast` | 140ms | Chips, switches, ripples |
| `duration.normal` | 220ms | Transición de estado, expandir tarjeta, recalcular equipos |
| `duration.slow` | 320ms | Bottom sheet, navegación entre pestañas |
| `duration.deliberate` | 480ms | Revelaciones (resultado de equipos, logro desbloqueado) |
| `easing.standard` | `cubic-bezier(0.2, 0, 0, 1)` | Por defecto |
| `easing.decelerate` | `cubic-bezier(0, 0, 0, 1)` | Entradas |
| `easing.accelerate` | `cubic-bezier(0.3, 0, 1, 1)` | Salidas |
| `easing.emphasized` | `cubic-bezier(0.2, 0, 0, 1)` @ 400ms | Momentos de marca |

**Movimiento firma — "el sorteo".** Cuando la IA termina de armar los equipos, las diez tarjetas de jugador caen a sus dos columnas con un stagger de 40ms y un pulso verde de 140ms al asentarse. Total: 900ms máximo, y **cualquier toque en pantalla lo saltea al estado final**. Un capitán apurado no debería tener que mirar una animación dos veces.

**Pulso "en vivo".** Loop de 1200ms, opacidad 1 → 0.35 → 1, curva `easeInOut`. Se congela por completo si `MediaQuery.disableAnimations` está activo — un punto pulsante permanente es un disparador real para usuarios con sensibilidad vestibular.

---

## 7. Iconografía

**Set: Phosphor Icons** (`phosphor_flutter`). Grilla de 24, keyline de 2, esquinas y terminaciones redondeadas.

**Por qué Phosphor y no Material Symbols:** Material Symbols hace que la app se vea como una app de Google. Phosphor tiene un dibujo levemente más geométrico y redondeado, y — decisivo — trae las variantes `regular`, `bold`, `fill` y `duotone` del mismo set, que es exactamente lo que hace falta para diferenciar estados de bottom navigation sin cambiar de familia de íconos.

**Grosores por contexto:**

| Contexto | Variante | Grosor efectivo | Tamaño |
|---|---|---|---|
| Bottom navigation, inactivo | `regular` | 1.5px | 24 |
| Bottom navigation, activo | `fill` | sólido | 24 |
| Íconos de acción (app bar, botones) | `bold` | 2.0px | 24 |
| Íconos inline en texto | `regular` | 1.5px | 16 o 18 |
| Íconos de estado (éxito/error/advertencia) | `fill` | sólido | 20 |
| Ilustración de estado vacío | trazo custom | 1.5px | 120–160 |

El `bold` en los íconos de acción no es capricho: sobre fondo negro un trazo de 1.5px pierde masa percibida frente al mismo trazo sobre blanco. El 2.0px iguala el peso óptico. Es el mismo ajuste que se hace con el verde (§2.7).

**Íconos custom que hay que dibujar** (no existen en ningún set y son el vocabulario propio del producto): pelota de fútbol de paneles hexagonales, botín, arco, silbato, banda de capitán, hexágono de insignia, y el ícono de "modo sol". Se dibujan en la misma grilla de 24 con keyline de 2 y se entregan como `IconData` de una fuente de íconos propia.

**Prohibido:** íconos multicolor, emojis dentro de la UI (sí en contenido de usuario), y el ícono genérico de pelota blanca y negra que usan todas las apps de fútbol.

---

## 8. Componentes clave

Todas las medidas en dp. Los estados `hover` y `focus` aplican en tablet, web y navegación por teclado o control externo.

### 8.1 Botón primario

**Anatomía.** Pastilla (`radius.full`), alto **56** (compacto: 48), padding horizontal 24, ancho mínimo 120, máximo el ancho disponible. Relleno `#1DB954`. Label `label.large` en `#0A0A0A`. Ícono opcional 20 a la izquierda, con 8 de separación. Glow `glow.primary` en reposo.

Los 56 de alto no son un capricho de aire: es la altura que permite acertar con el pulgar, con el celular en una mano, con la pantalla mojada y sin mirar. La recomendación de 48 es un mínimo de accesibilidad, no un objetivo.

| Estado | Especificación |
|---|---|
| Default | Relleno `#1DB954`, label `#0A0A0A`, glow activo |
| Hover | Relleno `#2FCA6E`, glow al 45% |
| Focus | Igual a default + anillo `2px #2FCA6E` con 2 de separación del borde |
| Pressed | Relleno `#17A048`, escala 0.98 (140ms), **glow apagado**, haptic `lightImpact` |
| Disabled | Relleno `#1F2420`, label `#5A625C`, sin glow, sin haptic |
| Loading | Ancho **congelado** al ancho previo, label reemplazado por spinner de 20 en `#0A0A0A`, no tappable, duración mínima visible 400ms |

El ancho congelado durante loading importa: si el botón se encoge al mostrar el spinner, el pulgar que ya venía en camino aterriza afuera.

### 8.2 Botón secundario (outlined)

Relleno transparente, borde **1.5px `#6E7770`**, `radius.md` (12), alto **48**, padding horizontal 20, label `label.large` en `#F5F5F5`.

Borde neutro, no verde. El verde aparece una sola vez por pantalla y es el primario: si el secundario también es verde, la jerarquía desaparece justo en el momento en que más se necesita (de noche, de reojo).

| Estado | Especificación |
|---|---|
| Default | Borde `#6E7770`, label `#F5F5F5` |
| Hover | Relleno `rgba(245,245,245,0.06)` |
| Focus | Borde `2px #2FCA6E` |
| Pressed | Relleno `rgba(245,245,245,0.10)`, borde `#8A938C` |
| Disabled | Borde `#232823`, label `#5A625C` |
| Loading | Spinner 18 en `#F5F5F5`, ancho congelado |

**Variante dorada (exclusiva del capitán):** mismo componente con borde `1.5px #F5A623` y label `#F5A623`. Solo para acciones de administración del partido. Máximo un botón dorado por pantalla.

### 8.3 Botón terciario (text)

Sin relleno ni borde. Alto **44**, padding horizontal 12, label `label.large` en `#2FCA6E`.

| Estado | Especificación |
|---|---|
| Default | Label `#2FCA6E` |
| Hover / Pressed | Relleno `rgba(47,202,110,0.12)`, `radius.sm` |
| Focus | Anillo `2px #2FCA6E` |
| Disabled | Label `#5A625C` |
| Loading | Spinner 16 `#2FCA6E` reemplaza al label |

Aunque mide 44 de alto visual, el área táctil se extiende a **48 mínimo** con `MaterialTapTargetSize.padded`.

### 8.4 Campo de texto

**Anatomía.** Relleno `surface.2 #181C19`, `radius.md` (12), alto **56**, borde 1px `#6E7770`, padding 16 horizontal / 18 vertical. Label flotante: en reposo `body.medium` en `#8A938C` centrado verticalmente; al enfocar sube y se achica a `caption` (12sp) en `#2FCA6E`. Ícono opcional 20 a izquierda o derecha, en `#8A938C`. Helper text `caption` en `#A8B0AA` a 6 debajo, con 20 de alto reservado **siempre** (si el helper aparece recién con el error, todo el formulario salta).

| Estado | Especificación |
|---|---|
| Default | Borde 1px `#6E7770`, relleno `#181C19` |
| Hover | Borde `#8A938C` |
| Focus | Borde **2px `#1DB954`**, label `#2FCA6E`, cursor `#1DB954`, selección `rgba(29,185,84,0.28)` |
| Error | Borde 1.5px `#FF6B6B`, label e ícono de alerta `#FF6B6B`, helper `#FF6B6B` |
| Error + focus | Borde 2px `#FF6B6B` |
| Disabled | Relleno `#121513`, borde `#232823`, texto `#5A625C` |
| Loading | Spinner 18 como sufijo, campo en solo lectura |

Los campos que reciben plata o números (monto de la seña, cantidad de jugadores) abren teclado numérico y usan `stat.small` con cifras tabulares.

### 8.5 Tarjeta de partido

Es el componente central de la app. Todo lo demás gira alrededor.

**Anatomía, de arriba hacia abajo:**
- **Barra de estado**: 3dp de alto, ancho completo, pegada al borde superior con el mismo radio de la tarjeta. Verde `#1DB954` = confirmado y completo. Ámbar `#FF7A2F` = faltan jugadores. Rojo `#E53935` = en riesgo o suspendido. Es el único elemento que se lee a un metro de distancia, y es la razón por la que la barra está arriba y no adentro.
- **Cuerpo**: `surface.1 #121513`, `radius.lg` (16), padding 16, hairline `#232823`.
- **Eyebrow**: `eyebrow` (Bebas 16) — "JUEVES 21:00" — junto a un chip relleno verde con `label.small` — "MAÑANA".
- **Título**: `heading.3` (Archivo 18/600) — nombre de la cancha, máximo dos líneas con elipsis.
- **Meta**: `body.small` en `#A8B0AA` con íconos inline de 16 — "Nueva Córdoba · 12 min · $4.500 por cabeza".
- **Divisor** hairline `#232823`, márgenes verticales de 12.
- **Pie**: a la izquierda, avatares de 32 superpuestos −8 (máximo 6 visibles, luego un círculo `surface.3` con "+3" en `label.medium`); a la derecha, el contador `stat.medium` con cifras tabulares — "9/10" — y debajo `caption` — "confirmados".

**Variantes:**
- **Próximo (héroe)**: 240 de alto, con degradado radial verde al 8% desde la esquina superior derecha (la luz del reflector), contador radial de 72 en lugar del numérico, y el CTA primario embebido.
- **Listado**: 120 de alto, sin degradado, sin CTA. Toda la fila es tappable.
- **Pasado**: opacidad 70%, sin barra de estado, con el resultado en `display.small` (Bebas 36) y, si hay media, la foto en 16:9 con scrim vertical de 0 → 70%.
- **En vivo**: borde 1.5px `#1DB954` + punto pulsante de 8 junto al eyebrow.

| Estado | Especificación |
|---|---|
| Default | `surface.1`, hairline `#232823` |
| Hover | `surface.2`, hairline `#3A423C` |
| Pressed | `surface.2` + escala 0.99 (140ms) |
| Disabled (cancelado) | Opacidad 45%, título tachado, barra de estado gris `#3A423C` |
| Loading (skeleton) | Bloques `surface.2` con `radius.sm` y shimmer de 1200ms que va de `#181C19` a `#262C27`. **Nunca un spinner centrado**: la forma del skeleton le dice al usuario qué va a aparecer. |

### 8.6 Avatar de jugador

Circular. Tamaños: **24** (listas densas, deudores), **32** (pie de tarjeta), **40** (filas de lista), **56** (encabezado de equipo), **96** (ficha de jugador).

**Anillo** de 2px (3px en 96), separado 2 del borde de la imagen:

| Variante | Anillo |
|---|---|
| Confirmado | `#1DB954` sólido |
| Pendiente | `#6E7770` punteado (dash 3, gap 3) |
| Rechazado | Sin anillo, avatar al 40% de opacidad, línea diagonal 1px `#6E7770` |
| Capitán | `#F5A623` sólido + insignia hexagonal de 14 (en 40) o 32 (en 96) pisando la esquina inferior derecha |
| En racha | `#1DB954` sólido + micro-glow verde (solo en la ficha, nunca en listas) |

**Fallback sin foto** (mayoritario al principio, cuando nadie subió imagen): iniciales en `Inter 700` centradas sobre un fondo elegido determinísticamente por hash del nombre, de una paleta de **seis tonos oscuros derivados de la escala de superficies** — `#1F2420`, `#26302A`, `#2A2A33`, `#332A26`, `#232E33`, `#2E2633`. Nunca colores saturados aleatorios: una fila de avatares fucsia y cyan destruye la paleta en la pantalla que más se mira. Las iniciales van en `#F5F5F5` y el ratio contra cualquiera de los seis fondos supera 12:1.

### 8.7 Chip de posición

Pastilla de **32** de alto (área táctil 48 con hit slop), padding horizontal 10, borde 1px, texto `label.medium` en MAYÚSCULAS con tracking +0.8.

Codificado por línea, con relleno del mismo color al 12%:

| Posición | Color | Contraste sobre `surface.1` |
|---|---|---|
| ARQ | `#4DA3FF` | 7.0:1 |
| DEF | `#A8B0AA` | 8.3:1 |
| MED | `#2FCA6E` | 8.6:1 |
| DEL | `#FF6B6B` | 6.6:1 |

Fondo al 12% y no relleno pleno: cinco chips a color pleno en una lista de diez jugadores convierten la pantalla en un arcoíris y anulan el trabajo del verde. El color acá es una ayuda de escaneo, no una jerarquía.

| Estado | Especificación |
|---|---|
| Default | Borde y texto en el color de la línea, relleno al 12% |
| Hover | Relleno al 18% |
| Pressed | Relleno al 24%, escala 0.97 |
| Selected | **Relleno pleno** del color, texto `#0A0A0A`, sin borde |
| Disabled | Borde `#232823`, texto `#5A625C`, sin relleno |
| Loading | No aplica: los chips nunca cargan |

Nunca se usa el color de la línea solo. La sigla siempre está: es el dato, el color es el atajo.

### 8.8 Bottom navigation

Alto **64** más el área segura inferior. Relleno `surface.2 #181C19`, hairline superior `#232823`. Sin sombra: en dark la separación la da la diferencia de superficie contra el canvas.

**Cuatro destinos**: Partidos · Equipo · Stats · Perfil. Ícono 24 (`regular` inactivo, `fill` activo) más label `label.small` a 4 de separación, siempre visible (los labels ocultos obligan a aprender los íconos, y esta app se usa dos veces por semana: no hay memoria muscular).

| Estado | Especificación |
|---|---|
| Activo | Ícono e ícono `#F5F5F5` + pastilla indicadora de 32 de alto, `radius.full`, `rgba(29,185,84,0.16)` detrás del ícono |
| Inactivo | Ícono y label `#8A938C` |
| Pressed | Ripple `rgba(245,245,245,0.08)` |
| Con novedad | Punto de 8 en `#1DB954` arriba a la derecha del ícono; contador `#E53935` con número si son más de 9 |
| Disabled | No existe: nunca se deshabilita un destino de navegación |

**El quinto slot dorado.** Si el usuario **es capitán** de al menos un grupo, aparece al centro un botón hexagonal de 56 con borde dorado, elevado 8 por encima de la barra, que abre "Nuevo partido". Si no es capitán, la barra es de cuatro destinos simétricos y no hay ningún hexágono. La jerarquía del rol no se explica con un texto en Ajustes: **se ve en la estructura de la pantalla**. Es la decisión de layout más importante de esta dirección.

### 8.9 Insignia de capitán

Hexágono de lado plano arriba (flat-top), esquinas redondeadas 2. Tamaños **96** (ficha), **56** (encabezado de grupo), **32** (esquina de avatar), **20** (inline en texto).

**Anatomía (96):** relleno `#0A0A0A`; borde 2px `#F5A623`; arco verde `#1DB954` de 3 de grosor en el interior del canto superior (la banda de capitán); número en Bebas Neue 40 en `#F5A623` centrado; debajo, "CAPITÁN" en Bebas Neue 11 en `#F5F5F5`; glow dorado sutil.

**Degradación por tamaño** (un hexágono con dos líneas de texto y un arco no sobrevive a 32dp):

| Tamaño | Qué conserva |
|---|---|
| 96 | Todo: borde, arco verde, número, palabra "CAPITÁN", glow |
| 56 | Borde, arco verde, número. Sin palabra, sin glow |
| 32 | Borde 1.5px y número. Sin arco, sin palabra |
| 20 | Silueta hexagonal **rellena** en `#F5A623` con una "C" en `#0A0A0A`. Sin número: a 20dp un número de dos cifras es una mancha |

**En light mode se invierte:** relleno dorado pleno, número y texto en `#0A0A0A`, borde `#8F5A00` de 1px.

| Estado | Especificación |
|---|---|
| Default | Como arriba |
| Pressed | Escala 0.96, glow apagado |
| Histórico (ex-capitán) | Borde y número en `#8F5A00`, sin arco verde, sin glow |
| Loading | Silueta hexagonal en `surface.2` con shimmer |

`semanticsLabel`: "Capitán número 47 de Los Pibes del Jueves".

### 8.10 Estado vacío

**Anatomía:** ilustración de línea de 140 centrada; 24 de espacio; título `heading.3` en `#F5F5F5`; 8; cuerpo `body.medium` en `#A8B0AA`, máximo dos líneas, ancho máximo 280; 24; CTA primario. Todo el bloque centrado vertical y horizontalmente, con 32 de margen lateral.

**Ilustración:** trazo de 1.5px en `#3A423C` — silueta de cancha vacía, dos torres de reflector — con **exactamente un elemento en `#1DB954`** (la pelota, o la luz encendida de un reflector). Sin cartoon, sin personajes, sin degradados pastel. Un dibujo técnico con un punto de vida.

**El texto es el componente.** El tono cómplice de la marca se juega acá más que en ningún otro lugar, porque un estado vacío es el momento en que la app no le sirve de nada al usuario:

| Contexto | Copy |
|---|---|
| Sin partidos | "Todavía no hay partido. Alguien tiene que arrancar y ese sos vos." + CTA "Armar el primero" |
| Sin estadísticas | "Jugá un par y volvé. Con un partido no se puede decir nada de nadie." |
| Sin fotos | "No hay ni una foto del jueves. Grave." + CTA "Subir fotos" |
| Sin conexión | "Se cortó. Guardamos todo, lo mandamos apenas vuelva." + botón secundario "Reintentar" |
| Búsqueda sin resultados | "No hay ninguna cancha con ese nombre." + terciario "Ver todas" |

Nunca "No se encontraron elementos". Nunca signos de admiración de más. Nunca disculpas.

### 8.11 Snackbar

Flotante, `radius.md` (12), relleno `surface.4 #262C27`, margen 16 a los lados, alto mínimo 52, padding 16. **Borde izquierdo de 3px** con el color semántico. Texto `body.medium` en `#F5F5F5`, máximo dos líneas. Acción a la derecha en `label.large` con peso 700 en `#2FCA6E` (o el color semántico correspondiente).

Se levanta **76dp por encima del borde inferior** para no tapar el bottom navigation, y si hay un CTA primario fijo en pantalla, se levanta por encima de él: la barra que confirma una acción nunca puede tapar el botón de la siguiente.

| Variante | Borde izquierdo | Ícono | Duración |
|---|---|---|---|
| Neutro | `#6E7770` | — | 4s |
| Éxito | `#1DB954` | check `fill` 20 | 4s |
| Error | `#E53935` | alerta `fill` 20 | 6s |
| Advertencia | `#FF7A2F` | triángulo `fill` 20 | 6s |
| Con acción (deshacer) | según tipo | — | 6s |

Entra con slide-up de 220ms `decelerate`, sale con fade + slide-down de 140ms `accelerate`. Máximo **una** en pantalla: la nueva reemplaza a la anterior sin animación de salida. Nunca se usa un snackbar para un error que bloquea la tarea — eso es un estado en la pantalla, no un mensaje que se va solo.

---

## 9. Tres pantallas

### 9.1 "Próximo partido" (la pantalla de inicio)

Arranca con un app bar transparente de 56 sobre el canvas negro: a la izquierda el nombre del grupo en `heading.3` truncado a una línea — "Los Pibes del Jueves" —, a la derecha dos íconos de 24 en `bold`, el de sol (Modo Sol, §11) y la campana con un punto verde si hay pendientes. **El app bar no colapsa al hacer scroll.** De noche, en la cancha, el capitán no debería tener que recordar en qué grupo está parado.

Debajo, el bloque héroe: no es una foto, es una tarjeta de 240 de alto a 16 de cada margen, `surface.1` con `radius.lg`, atravesada por un degradado radial verde al 8% que nace de la esquina superior derecha — la luz del reflector, sin peso de imagen. Arriba a la izquierda, el eyebrow en Bebas con tracking abierto: "PRÓXIMO PARTIDO". Debajo, la fecha en `display.medium`: "JUE 21:00", y a su derecha, alineado a la línea de base, un chip verde relleno con "EN 2 DÍAS" en negro. Tercera línea, el lugar en `heading.3`: "La Tablada — Cancha 3", y debajo, en `body.small` gris, "Nueva Córdoba · 12 min en auto · $4.500 por cabeza". Ocupando el alto del bloque a la derecha, un contador radial de 72: anillo de 6 que se llena en verde según los confirmados, con "9/10" en Bebas 28 al centro. Al pie de la tarjeta, cruzada por un divisor hairline, la fila de avatares de 32 superpuestos (seis visibles y un "+3") y, a la derecha, un terciario "Ver lista".

Inmediatamente debajo, la barra de acción, a 16 de los bordes. Si el usuario es jugador: un solo pill verde de 56, "Confirmar que voy". Si es capitán: dos elementos en fila — el pill verde de 56 "Armar equipos" ocupando el espacio flexible, y a su derecha un cuadrado de 56 con borde dorado y el ícono del hexágono, que abre las herramientas de capitán. **Ese es el primer dorado de la sesión, y no vuelve a aparecer hasta el perfil.**

Sigue la sección "PENDIENTES" en overline con un contador al lado, y debajo dos o tres filas de 64: avatar de 40 con anillo punteado, nombre en `title.small`, subtexto en `body.small` gris — "no contestó desde el lunes" —, y a la derecha un botón terciario de 44 con el ícono de WhatsApp. Ese botón es la razón por la que el capitán vuelve a la app: le ahorra la parte más tediosa de su trabajo. Si están todos confirmados, la sección entera se reemplaza por una sola línea en `body.medium` verde: "Están los 10. No tenés nada que hacer."

Después, "LA PLATA": una barra horizontal de 8 de alto con `radius.full` que se llena en verde según lo cobrado; encima, "$31.500 de $45.000" en `stat.small` con cifras tabulares; debajo, tres avatares de 24 con anillo punteado — los que deben — y un terciario "Recordarles".

Cierra "ÚLTIMO PARTIDO": una tarjeta al 70% de opacidad con la foto en 16:9, scrim vertical de 0 arriba a 70% abajo, grano al 4%, el resultado en `display.small` (Bebas 36) sobre el scrim y, en la esquina, un contador de fotos con ícono de cámara.

Al pie, el bottom navigation de 64 con los cuatro destinos y, si es capitán, el hexágono dorado elevado al centro. Padding inferior del scroll: 96, para que la última tarjeta nunca quede debajo de la barra.

### 9.2 "Armar equipos con IA"

App bar sólido en `surface.2` con flecha atrás, título "Armar equipos" en `heading.3`, y a la derecha un terciario "Rehacer" deshabilitado hasta que exista un primer resultado.

Arriba, el bloque de control sobre `surface.1` con `radius.lg` y padding 16. Primera fila: tres chips de criterio con scroll horizontal — "Parejo" (seleccionado: relleno verde pleno, texto negro), "Por posición", "Random". Debajo, dos filas de 56 con switch verde a la derecha: "Respetar posiciones" y "Separar a los que siempre juegan juntos", cada una con un subtexto de una línea en `caption` gris que explica qué hace de verdad — "para que el Colo y el Negro no armen la dupla de siempre". **No hay sliders.** Un slider con una mano, de noche, con guantes o con los dedos mojados, es un compromiso que la interfaz no puede pedir.

Estado inicial: un bloque vacío de 200 con la ilustración de la cancha y el texto "Tenés 10 confirmados. Decime cómo los reparto.", y anclado al fondo el pill verde de 56 "Armar equipos" sobre un degradado del canvas de 32 que evita que el botón se pierda contra el contenido que scrollea debajo.

Al tocar: como máximo 900ms de carga, con los diez avatares en una fila barajándose (traslaciones cortas, stagger de 60ms) y un texto rotativo en `body.small` gris que dice cosas concretas y no genéricas — "mirando los últimos 8 partidos…", "el Colo viene goleador…". Si tarda más de 900ms, se muestra el resultado parcial: nunca se deja al capitán mirando una pantalla vacía con diez tipos esperando.

El resultado son dos columnas de igual ancho separadas por 12. Cada una encabezada por una barra de 44 con el nombre del equipo en Bebas 20 — "CLAROS" y "OSCUROS" — y a la derecha el puntaje de fuerza en `stat.small` tabular: "7.4". Debajo de cada barra, cinco filas de 56: avatar de 40 con anillo, nombre en `title.small` truncado, y el chip de posición de 24 alineado a la derecha. Entre las dos columnas, a la altura de los encabezados, un círculo de 32 en `surface.3` con "vs" en Bebas 14.

Debajo de las columnas, una franja de 48 con el veredicto: si la diferencia es ≤ 0.5, un punto verde y "Parejo"; si es mayor, el ícono de advertencia y "Diferencia de 1.2 — Claros pica en punta" en ámbar `#FF7A2F`. Ese es el único ámbar de la pantalla, y no es un error: es una opinión honesta.

**La interacción que define la pantalla:** mantener presionado un jugador lo levanta (escala 1.04, sombra `e3`, glow verde) y se arrastra a la otra columna. Al soltar, los dos puntajes se recalculan con una animación de 220ms y la franja de veredicto cambia en vivo. La IA propone; el capitán decide. Si el diseño no hiciera trivial corregir a la IA, estaría diciendo lo contrario, y el capitán —que conoce a los diez tipos desde hace años— dejaría de usar la función a la segunda vez que la máquina le dice algo que él sabe que está mal.

Al pie, fijo: el pill verde de 56 "Confirmar equipos" y, debajo, un terciario "Mandar al grupo" con el ícono de compartir. Ese terciario es en realidad el destino final de toda la pantalla: el resultado termina siendo un mensaje de WhatsApp, y el diseño no puede pretender lo contrario.

### 9.3 "Estadísticas del jugador"

Header de 280 con la foto del jugador a sangre, scrim vertical negro de 0% arriba a 95% abajo y grano al 4%. Sobre el scrim, abajo a la izquierda: el avatar de 96 con su anillo (dorado si es capitán, con el hexágono de 32 pisando la esquina inferior derecha), al lado el nombre en `heading.2` (Archivo 22/700), y debajo, en `body.small` gris, "Capitán de Los Pibes del Jueves · desde marzo 2025". **Si el jugador no es capitán, no hay un solo píxel dorado en toda la pantalla.**

Inmediatamente debajo del header, la fila de las tres cifras que importan — sin tarjeta, separadas por divisores verticales hairline de 32 de alto: "PJ 47", "GOLES 31", "PROMEDIO 7.2". Los números en `stat.hero` (Bebas 40), las etiquetas en overline gris. Es el único lugar de la app donde Bebas convive con datos pequeños, y funciona porque son tres cifras aisladas y no una tabla.

Debajo, un segmented control de 40 con tres opciones — "Temporada" / "Últimos 5" / "Histórico" — con pastilla deslizante en `surface.3`, texto activo `#F5F5F5` e inactivo `#8A938C`.

Sección "RENDIMIENTO": tarjeta `surface.1` con `radius.lg` y un gráfico de barras de los últimos diez partidos. Barras de 16 de ancho con `radius.xs`, verde `#1DB954` para las victorias, `#3A423C` para los empates y **contorno rojo de 1.5px sin relleno** para las derrotas. Las derrotas no van en rojo pleno: una fila de cinco barras rojas macizas se lee como un error de sistema, no como una racha mala. Eje X con las fechas en `caption` a 10sp; sin eje Y — el valor aparece en un tooltip al tocar la barra.

Sección "POSICIONES": una silueta de cancha vertical de 200, dibujada con trazo de 1.5px en `#3A423C` sobre `surface.1`, con manchas de calor verdes translúcidas donde más jugó. No es un dato preciso y no pretende serlo: es material de discusión para el grupo de WhatsApp, que es donde vive el valor social del producto.

Sección "LOGROS": grilla de tres columnas con insignias hexagonales de 72. Las conseguidas en verde con borde luminoso; las pendientes en outline `#3A423C` con el ícono al 30%. Debajo de cada una, el nombre en `label.medium` a dos líneas máximo — "10 partidos seguidos", "Goleador del mes". **Los logros no son dorados.** El dorado es del rol de capitán y de nada más: si premiara logros, en dos meses todo el mundo tendría algo dorado y la insignia del capitán dejaría de significar jerarquía.

Al pie, un botón secundario de ancho completo, "Compartir mi ficha", que genera una imagen de 1080×1920 con la estética exacta de la campaña — negro, grano, Bebas gigante, el hexágono si corresponde. Es el puente explícito entre el producto y el marketing: cada ficha compartida es una pieza de "100 Capitanes" que el usuario produce solo.

---

## 10. Accesibilidad

### Objetivos táctiles
Mínimo **48×48** para cualquier elemento interactivo, sin excepción, incluso cuando el dibujo visual es más chico (chips de 32, terciarios de 44): el área táctil se extiende con padding transparente. El CTA primario es de 56 porque el mínimo de accesibilidad es un piso, no una meta, y el contexto de uso real es peor que el del laboratorio. Separación mínima de 8 entre dos objetivos.

### Contraste
Todo el texto cumple **WCAG AA** (4.5:1 normal, 3:1 en ≥18sp o ≥14sp bold) y la mayoría de las combinaciones llegan a AAA (§3.7). Todos los bordes que comunican el límite de un control cumplen 3:1 (`#6E7770` en dark, `#7C857E` en light). Los estados nunca dependen solo del color: llevan ícono, texto o posición.

### Texto ampliado
El sistema soporta hasta **200%** de escala. Tres reglas de implementación:
1. **Ninguna altura de contenedor de texto es fija.** Todo usa `IntrinsicHeight`, `Flexible` o `Wrap`. Un `SizedBox(height: 56)` con texto adentro es un bug de accesibilidad esperando a que alguien active el tamaño grande.
2. **Bebas Neue se limita a 1.3×.** Un display de 64sp escalado a 128sp rompe cualquier layout y, sobre todo, un marcador ilegible por desborde es peor que un marcador un poco chico. El texto funcional (Inter) escala sin tope.
3. **Los layouts en fila se reflujan a columna** por encima de 1.5×: los dos botones de la pantalla de partido pasan a apilarse, las dos columnas de "Armar equipos" pasan a una sola con dos secciones.

### Lectores de pantalla
Todo ícono sin texto lleva `semanticsLabel`. Los datos que dependen de contexto visual se describen completos: la barra de estado de la tarjeta de partido anuncia "Partido confirmado, 9 de 10 jugadores", no "verde". El contador radial anuncia el valor, no la forma. La insignia anuncia "Capitán número 47", no "imagen".

### Movimiento
`MediaQuery.disableAnimations` desactiva el pulso "en vivo", el shimmer de los skeletons (pasan a un bloque estático), el sorteo con stagger (aparece el resultado final directo) y todos los glows animados.

### El problema real: dark mode a pleno sol

Es la debilidad estructural de esta dirección y merece una respuesta seria, no un párrafo tranquilizador.

Bajo luz solar directa una interfaz oscura es objetivamente peor: la pantalla emite poca luz total, el reflejo especular del vidrio compite con el contenido, y el contraste efectivo se derrumba aunque el ratio calculado siga siendo de 18:1. Un partido de domingo a las 15:00 en una cancha al sol en Córdoba —donde en enero hay 38 grados y sol vertical— es un escenario de uso real, no un caso de borde. **Ninguna cantidad de ajuste de dark mode arregla esto.** La única solución honesta es cambiar de tema.

La respuesta tiene cuatro capas:

**1. El light mode es un entregable de primera clase**, no un modo de cortesía (§4). Está especificado completo, con sus propios tokens y sus propios ratios, y se testea en cada release.

**2. "Modo Sol": un toque, no un menú.** El ícono de sol vive en el app bar de la pantalla de partido — la única que se mira en la cancha. Un toque fuerza light mode para la sesión. No hay que entrar a Ajustes, no hay que buscar nada, y el estado es evidente porque toda la pantalla cambió. El ícono está siempre en el mismo lugar, así que se puede tocar sin leer.

**3. Modo Sol no es solo el light theme: es el light theme endurecido.** Sube el texto principal a `#000000`, las tarjetas a blanco puro, engrosa los pesos de cuerpo en +100, **elimina toda fotografía de fondo detrás de texto** (los headers con foto pasan a color plano) y desactiva los degradados y las opacidades intermedias. Es feo comparado con el dark. Es legible con el sol pegando de costado, que es lo único que importa en ese momento.

**4. Sugerencia automática, decisión del usuario.** Si el dispositivo reporta luz ambiente alta de forma sostenida, o si son las 14:00 y hay un partido activo, la app **ofrece** el cambio en un snackbar con acción — "Hay mucha luz. ¿Paso a Modo Sol?" — y nunca lo hace sola. Un cambio de tema no pedido, en el medio de una tarea, desorienta más de lo que ayuda.

Además, las pantallas de uso en cancha (lista de convocados, equipos armados) tienen un **layout "de vistazo"**: tipografía mínima de 18sp, cero fotografía de fondo detrás de texto, cero información secundaria. Están diseñadas para leerse con el brazo estirado, de reojo, entre dos jugadas.

---

## 11. Cuándo elegir esta dirección

NOCTURNA gana claramente en estos escenarios:

- **Si el lanzamiento se apoya en los 100 Capitanes.** Cuatro semanas de campaña negra y verde con un número dorado tienen su máximo retorno cuando la app abre y es literalmente lo mismo. La tasa de activación del cohorte de campaña es el KPI donde esta dirección es imbatible.
- **Si el diferencial de producto es el estatus.** Si la tesis de retención es "el capitán vuelve porque acá se le reconoce el rol", el dorado exclusivo y el hexágono en la barra de navegación son mecanismos de producto, no adorno.
- **Si el uso real es mayoritariamente nocturno.** El fulbito amateur cordobés se juega entre las 20 y las 23. Si los datos confirman que el 80% de las sesiones son después de las 19:00, optimizar para la noche es optimizar para el uso real.
- **Si el contenido visual (fotos y videos del partido) es central.** Los medios nocturnos con luz artificial se ven infinitamente mejor sobre negro que sobre blanco. Una galería de fotos de cancha sobre fondo claro se ve como un álbum mal impreso.
- **Si el benchmark competitivo es Sofascore, OneFootball o Strava.** El capitán ya usa esas apps y espera esa densidad y ese registro. NOCTURNA compite en esa categoría, no en la de las apps de organización.
- **Si hay presupuesto de contenido fotográfico real.** Esta dirección se ve espectacular con fotos buenas y mediocre con placeholders.

Pierde si: el producto apunta a un público mucho más amplio que el capitán (padres organizando fútbol infantil, mixto, mayores de 50), si el uso diurno resulta ser mayoritario, o si el equipo no tiene capacidad de mantener dos temas con la misma calidad.

---

## 12. Contras honestos

**1. El verde `#1DB954` es, literalmente, el verde de Spotify.** Es el riesgo más serio de esta dirección y hay que decirlo con todas las letras. `#1DB954` sobre `#0A0A0A` con tipografía sans y esquinas redondeadas es la firma visual de Spotify para cualquier persona con un teléfono. El color solo no es protegible legalmente, pero la percepción de "app clon" es real y afecta la credibilidad de una marca nueva. Mitigaciones posibles, en orden de costo: (a) diferenciar fuerte por tipografía condensada, hexágonos y dorado — es lo que hace este kit, y alcanza para que no se confunda de cerca, no de lejos; (b) correr el matiz a `#22C860` o `#16BF5B`, que a ojo desnudo es el mismo verde pero rompe la coincidencia exacta —cuesta rehacer las piezas de campaña ya producidas—; (c) asumirlo y revisarlo en el próximo ciclo de marca. **Recomendación: (b) antes del lanzamiento público, (a) durante la beta de los 100 capitanes**, donde la continuidad con la campaña vale más que la diferenciación.

**2. El dark-first castiga el uso diurno, y el light mode va a ser ciudadano de segunda por más que lo diseñemos bien.** No porque esté mal especificado, sino porque el equipo va a diseñar en dark, revisar en dark y hacer QA en dark. Los bugs visuales de light se van a descubrir en producción. Es un costo de mantenimiento permanente, no un problema de arranque.

**3. Las fotos de los usuarios se van a ver mal.** Canchas con luz mixta de sodio y LED, camisetas saturadas, flash de celular: todo eso sobre negro produce halos y colores que pelean con el verde. La solución (scrims obligatorios, desaturación leve, encuadre forzado) agrega complejidad de implementación y, sobre todo, le saca fidelidad a la foto que el usuario subió. En una app donde compartir el momento es parte del valor, eso tiene un costo.

**4. El dorado se devalúa solo si el producto no lo gobierna.** Si en la práctica el 60% de los usuarios es capitán de su propio grupo, el dorado deja de marcar jerarquía y pasa a ser un segundo color de marca. **Este es un problema de reglas de producto, no de diseño**, y hay que resolverlo antes de codificar: definir si "capitán" es un rol por grupo o una distinción global, y si es lo primero, aceptar que el dorado señala rol contextual y no estatus. El kit no puede arreglarlo desde el CSS.

**5. Tres familias tipográficas es más de lo que un equipo chico sostiene.** Bebas + Archivo + Inter funciona en el documento y se degrada en la práctica: alguien va a usar Bebas en un label de formulario porque "quedaba lindo", y el sistema empieza a filtrarse. Necesita disciplina de revisión o linting de diseño. La salida de emergencia está en §5.1.

**6. El contraste altísimo tiene un costo fisiológico.** `#F5F5F5` sobre `#0A0A0A` a 18:1 produce halation (el texto blanco "sangra" sobre el fondo negro) en usuarios con astigmatismo, que son entre el 30 y el 40% de la población adulta. Lo mitigamos usando `#F5F5F5` y no blanco puro, poniendo el cuerpo largo sobre `surface.1` y no sobre el canvas, y ofreciendo light mode de verdad. No lo eliminamos. Un porcentaje real de usuarios va a preferir el tema claro por razones médicas y hay que estar listos para eso.

**7. Negro puro en OLED tiene un efecto secundario.** Ahorra batería (que es la razón principal para mantener `#0A0A0A`), pero produce *black smearing* al hacer scroll rápido: los píxeles apagados tardan en encenderse y dejan una estela gris. Las tarjetas en `surface.1` reducen el efecto porque nunca hay grandes áreas de negro puro scrolleando, pero en pantallas de gama baja se va a ver.

**8. Es la dirección más segura y por eso la menos memorable.** Negro, verde, condensada y dark mode es el look por defecto de la categoría deportiva en 2026. NOCTURNA lo ejecuta bien y con criterio, pero nadie va a decir "vi una app que se veía distinta". Si el objetivo estratégico es diferenciación de marca por encima de reconocimiento de campaña, otra de las tres direcciones probablemente sea la respuesta correcta.

---

## 13. Archivos de esta dirección

| Archivo | Contenido |
|---|---|
| `README.md` | Este documento |
| `tokens.json` | Design tokens completos (primitivos + semánticos, dark y light) |
| `flutter_theme.dart` | `ThemeData` de Material 3 listo para compilar, con `FulbitoColors` y la extensión de colores semánticos |

**Dependencias del tema Flutter:** `google_fonts` únicamente. Requiere Flutter ≥ 3.27 (usa `CardThemeData` y `WidgetStateProperty`).
Para producción, reemplazar `google_fonts` por fuentes empaquetadas como assets: la resolución por red deja la primera pantalla sin tipografía en conexiones malas.
