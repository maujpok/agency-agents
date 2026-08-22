# Logotipo 01 — POTRERO

**Fulbito · Propuesta de identidad 1 de 3 · Emparejada con el UI Kit POTRERO**
Autor: Brand Guardian (NEXUS) · Dirección de arte: Visual Storyteller
Estado: propuesta cerrada, lista para revisión y para vectorizado final en Figma.

---

## 1. Concepto en una frase

> **El disco es un potrero visto desde arriba: media tierra, medio pasto, y la raya de cal que alguien marcó con el taco del botín para saber dónde termina un equipo y empieza el otro.**

### Fundamento

El símbolo se llama **La Raya**.

No es una pelota, aunque se lea como una. No es una cancha, aunque también se lea como una. Es el potrero: ese círculo de tierra y pasto donde la mitad está pelada de tanto jugar y la otra mitad todavía tiene algo verde, partido por una línea que no la dibujó una máquina — la dibujó alguien arrastrando el pie.

**Por qué esta idea y no otra.** El brief del producto es "armado de equipos". Todo el valor que FulbitoApp le entrega al capitán se resume en un gesto: **dividir**. Dividir el grupo en dos equipos parejos, dividir la seña entre los que van, dividir a los que confirmaron de los que no. La marca tenía que cargar ese gesto, no cargar el deporte. Un balón hexagonal dice "fútbol" y no dice nada más; dice lo mismo que dicen las otras cuarenta apps del rubro. La raya dice **"acá se divide"**, y eso sí es nuestro.

**Por qué la raya está torcida.** Porque la cal en un potrero nunca sale recta, y porque el pasto tampoco se termina en línea recta. Las dos cosas — el límite natural entre la tierra y el pasto, y la raya que traza el capitán — son la misma curva en este logo. Ahí está la idea completa: **el capitán no traza la línea que le gustaría, traza la línea por donde se le termina el pasto.** Se arregla con la cancha que hay, el grupo que hay y el clima que hay. Ese es el laburo, y ese es el logo.

**Qué ve el capitán cordobés cuando lo mira.** Primero ve una pelota — es el atajo, y está bien que exista, porque la marca se llama Fulbito y la lectura inmediata tiene que ser deportiva. A los dos segundos ve otra cosa: un pedazo de cancha de tierra. Si jugó alguna vez en Barrio San Vicente, en Villa El Libertador o en cualquier potrero con un paredón de ladrillo de fondo, reconoce el color: no es el rojo de una marca, es el color del suelo cuando pica el sol a las seis de la tarde. Y reconoce el verde: no es el verde de televisión, es el pasto pisado que queda al costado del área. **La cordobesidad de este logo no está en ningún ícono; está en la temperatura.** No hay bandera, no hay Fernet, no hay cerro. Se justifica solo si el resto del sistema — foto real, copy cómplice, el kit POTRERO — lo sostiene. Ver §11, contra 8.

**Lo que deliberadamente NO es.** No es un escudo de club: no hay cintas, no hay estrellas, no hay fecha de fundación, no hay corona de laureles. Un escudo dice *institución*, y nosotros somos exactamente lo contrario de una institución — somos el grupo de WhatsApp. No es una silueta pateando: eso convierte la marca en un pictograma de gimnasio. No es un silbato: el silbato es el árbitro, y el capitán no es el árbitro, es el que arma. Y no es retro: no hay textura de papel arrugado, no hay sepia, no hay bordes rasgados. El pasado está en el color; la forma es contemporánea y limpia.

---

## 2. Construcción del símbolo

Todo se dibuja sobre una **grilla de 100 × 100 unidades**. Todos los archivos entregados escalan ese mismo bloque; los `path` son idénticos byte a byte en los siete SVG. Si cambiás una coordenada, cambiala en los siete.

### 2.1 El disco

No es un círculo. Es un **círculo escarbado**: cuatro arcos cúbicos con radios apenas distintos, para que se lea como algo marcado en el suelo y no como algo trazado con compás.

| Ancla | Coordenada | Radio local |
|---|---|---|
| Norte | `49,2 / 11,6` | 38,4 |
| Este | `88,6 / 51,0` | 38,6 |
| Sur | `50,8 / 87,2` | 37,2 |
| Oeste | `12,0 / 49,4` | 38,0 |

- Radio nominal **38 u**; desvío máximo **±1,4 u (3,7 %)**.
- Handles de bezier a **0,552 × radio** sobre la tangente (aproximación estándar de círculo).
- Bounding box real: **76,6 × 75,6 u**. Centro óptico: **50,3 / 49,4**.
- El disco está **1 u más abajo y 0,3 u a la derecha** del centro geométrico de la grilla. Es intencional: compensa el peso visual de la pelada, que es más oscura y está abajo a la izquierda.

**El desvío es la mitad de lo que parece necesario.** Se probó con ±3 u y se veía roto, como un error de trazado. A ±1,4 u nadie lo nota conscientemente, pero el disco deja de tener la frialdad del círculo perfecto. Es la misma decisión que tomó el UI kit al no usar `#000000`: la irregularidad se siente, no se ve.

### 2.2 La raya

Una única curva abierta que entra por el hombro de las **11:30** y sale por el de las **4:30**.

- **Ancho de trazo: 6,6 u constante = 8,6 % del diámetro.** Ese número está calibrado hacia abajo, no hacia arriba: a 16 px de alto total la raya mide 1,38 px y sigue existiendo. Por debajo de 6 u desaparecía en el primer test; por encima de 7,5 u el disco se partía en dos objetos y perdía la unidad.
- **Tres cambios de ritmo, ninguna inversión.** La curva se abre, duda a media altura y se escapa hacia la derecha en el último tercio. No vuelve nunca sobre sí misma. Se probó una versión con inversión (una S real) y a una tinta se leía como un gusano; se descartó. Una raya dibujada con el pie tiene inercia: acelera, no zigzaguea.
- **Terminación a bisel (`stroke-linecap="butt"`), nunca redondeada.** El extremo redondeado la convierte en un objeto flotante; el bisel la mantiene como un corte.
- La curva **excede el disco por arriba y por abajo** y se recorta con `clipPath`. Nunca la ajustes al borde a ojo: modificá el `clipPath`, no el trazo.

### 2.3 La pelada

Es la misma curva de la raya, cerrada hacia la izquierda. **Por definición geométrica, el límite tierra/pasto y la raya de cal son el mismo trazo.** Esto no es una economía de dibujo, es el concepto: la línea que divide los equipos es la línea por donde se acaba el pasto.

- La tierra ocupa entre **36 % y 40 % del área del disco**. Debajo del 33 % se lee como un detalle y no como una mitad; arriba del 45 % el disco pierde la lectura de "pelota" y pasa a ser una bandera.
- La tierra es **la región chica y la de abajo a la izquierda**. Las dos cosas importan: el peso visual baja (queda estable, no flotando) y el ojo occidental entra por la izquierda, que es donde está el color primario de la marca.

### 2.4 Proporciones del sistema

| Relación | Valor | Dónde se aplica |
|---|---|---|
| Diámetro del disco / lienzo del isotipo | 76,6 % | `isotype.svg` |
| Diámetro del disco / lienzo del app icon | 61 % | `app-icon.svg` |
| Ancho de la raya / diámetro | 8,6 % | Todos |
| Alto de mayúscula del wordmark / diámetro | 0,60 | `logo-primary`, `logo-horizontal` |
| Alto de mayúscula del wordmark / diámetro | 0,36 | `logo-stacked` |
| Separación símbolo ↔ wordmark / diámetro | 0,30 | Lockups horizontales |
| Separación vertical símbolo ↔ wordmark / diámetro | 0,26 | `logo-stacked` |
| Cuerpo del tag "APP" / alto de mayúscula | 0,30 | Donde aparece el tag |

Tolerancia óptica admitida: **±2 %**. Más que eso ya es otro lockup y hay que rehacer el archivo, no estirarlo.

---

## 3. El wordmark

### 3.1 Familia: Fraunces (Google Fonts)

**`Fraunces`, peso 900 (Black), eje óptico `opsz` en 144.**

Es la misma display del UI kit POTRERO, y esa continuidad no es pereza: es lo que hace que el logo y la primera pantalla se sientan la misma cosa. Pero además se sostiene sola.

- **Por descarte, primero.** Una condensada tipo Bebas Neue es la voz del marketing deportivo — y ya la usa la campaña 100 Capitanes, o sea que el logo se confundiría con la publicidad. Una geométrica tipo Poppins o Montserrat es la voz de la startup, exactamente lo que el capitán desconfía ("sin rodeos ni marketing"). Una grotesca neutra tipo Inter no dice nada, y un logo que no dice nada obliga a que lo diga el símbolo solo.
- **Por lo que aporta, después.** Fraunces nació con ejes `SOFT` y `WONK` justamente para tener formas cortadas a mano sin caer en el estilo barbería-vintage. En Black tiene el peso de un titular de diario deportivo viejo y la calidez de algo dibujado. La `t` con el remate inclinado y la `o` con eje diagonal le dan carácter donde una sans no tiene nada.
- **Contra el riesgo conocido:** en cuerpos chicos y con tracking suelto, Fraunces se va a "panadería artesanal". Se contrarresta con `opsz` alto (144, que reduce el contraste de trazo), tracking negativo y no bajar nunca del mínimo de §5.

**Ajustes de tracking y kerning** (a aplicar en Figma/Illustrator, sobre 1000 UPM):

| Ajuste | Valor | Por qué |
|---|---|---|
| Tracking general | **−15/1000 em** | Fraunces Black viene suelta para lectura; en un wordmark tiene que apretar |
| Par `F` + `u` | **−8/1000** | El brazo inferior de la `F` deja un hueco de aire bajo la `u` |
| Par `b` + `i` | **+4/1000** | El asta de la `b` y el punto de la `i` se pisan a peso 900 |
| Par `i` + `t` | **+4/1000** | Misma razón, del otro lado |
| Par `t` + `o` | **−6/1000** | El remate de la `t` cuelga sobre la `o` y deja un hueco |
| Punto de la `i` | subir **10/1000** | A 900 el punto queda pegado al asta y se lee como una `l` a tamaños chicos |

**"Fulbito" en minúscula, siempre.** Nunca versalitas, nunca caja alta. El UI kit ya lo fija como regla de voz: *"MAYÚSCULA solo en overline y en el badge de capitán. En cualquier otro lado grita, y nuestra voz no grita."* El logo no es la excepción de esa regla, es su primer ejemplo.

### 3.2 Cómo se resuelve "App"

**Decisión: el wordmark es "Fulbito". "APP" es un tag subordinado y con fecha de vencimiento.**

El razonamiento:

1. **El capitán nunca dice "FulbitoApp".** Dice "abrí Fulbito", "pasalo por Fulbito". La marca es la palabra que usa la gente, no la que figura en la ficha de la tienda.
2. **"App" dentro de un logotipo envejece rápido.** Es un marcador de época — se dejó de hacer alrededor de 2015 por la misma razón por la que se dejó de poner "punto com". Y limita el negocio: si mañana Fulbito hace un torneo, una liga o una tarjeta, el logo miente.
3. **Pero al lanzamiento nadie sabe qué es Fulbito.** El nombre de tienda es FulbitoApp, la campaña 100 Capitanes va a hacer que la gente busque exactamente eso, y un disco de dos colores con una palabra no dice categoría. Negar esa necesidad sería dogmatismo, no criterio.

**Solución:** el tag `APP` va en **Archivo 700**, alineado a la izquierda bajo la `F`, a **0,30 × el alto de mayúscula** de "Fulbito", con **tracking +0,18 em** y en **grafito `#6B6255`** — nunca en Fraunces, nunca en ladrillo, nunca del mismo tamaño.

- Está en `logo-primary` (el que va a la tienda, al sitio y a la campaña), en `logo-stacked` (splash y onboarding) y en los dos cortes monotinta (prensa, sellos, co-branding).
- **No está** en `logo-horizontal`, `isotype` ni `app-icon`, que son los usos donde ya hay contexto de producto.
- **Fecha de retiro: 18 meses desde el lanzamiento, o cuando la búsqueda orgánica de "fulbito" supere a la de "fulbito app" — lo que pase primero.** Ese día `logo-horizontal` pasa a ser el lockup primario y este archivo se archiva. Hay que asignarle dueño a esa revisión, o el tag se queda para siempre por inercia (§11, contra 10).

### 3.3 Nota de producción — obligatoria antes de publicar

Los SVG entregados usan un elemento `<text>` con `@import` de Google Fonts. **Eso es un borrador de trabajo, no un archivo final.**

Antes de cualquier uso en producción hay que:

1. Abrir el SVG en Figma o Illustrator con Fraunces 900 y Archivo 700 instaladas.
2. Aplicar los ajustes de kerning de §3.1 y, si se bundlea la fuente variable, poner los ejes en **`opsz` 144, `SOFT` 60, `WONK` 1** (la API `css2` con los ejes que usamos hoy sirve una instancia sin `SOFT`/`WONK`; el `font-variation-settings` de los archivos solo controla `opsz`).
3. **Convertir el texto a curvas** (`Object > Flatten` / `Type > Create Outlines`).
4. **Borrar el atributo `textLength`.** Está puesto para que el lockup no se desarme si la fuente no carga; con el texto vectorizado sobra y distorsiona.
5. Recortar el `viewBox` al bounding box real y volver a aplicar el área de protección de §5.

Sin ese paso, el logo se ve distinto en cada máquina y se rompe en cualquier renderer sin acceso a Google Fonts. **No dibujes las letras a mano con beziers**: se nota siempre.

---

## 4. Sistema de variantes

| Archivo | Qué es | Cuándo se usa | Cuándo NO |
|---|---|---|---|
| `logo-primary.svg` | Símbolo + "Fulbito" + tag APP en bloque de dos líneas. **El default.** | Ficha de App Store y Play Store, header del sitio, deck de inversión, firma de mail, piezas de campaña, cartelería | Por debajo de 230 px de ancho (el tag se vuelve ilegible) |
| `logo-horizontal.svg` | Símbolo + "Fulbito" en una línea, sin tag | Franjas angostas: app bar ancha, footer, tira de sponsors, banner de 728×90, encabezado de PDF | Cuando la pieza necesita decir la categoría |
| `logo-stacked.svg` | Símbolo arriba, "Fulbito" y APP abajo, centrado | Splash screen, pantalla 1 de onboarding, "Acerca de", merchandising centrado (remera, pelota, stencil), avatar cuadrado de redes | Franjas horizontales: deja huecos enormes a los costados |
| `isotype.svg` | Solo el símbolo | App bar, favicon, avatar de perfil de la marca, marca de agua en imágenes compartidas, sello en el sticker de WhatsApp, patrón repetido | Primer contacto con alguien que no conoce la marca |
| `app-icon.svg` | Master 1024×1024 con capa de fondo y de primer plano separadas | Exportar los assets de iOS y Android | Cualquier cosa que no sea un icono de sistema |
| `logo-mono-dark.svg` | Una tinta birome `#1F1B16` | Fondos claros que **no** son papel: blanco de imprenta, papel de factura, remera clara, grabado, sellos, prensa, co-branding | Sobre fondos oscuros o de color medio |
| `logo-mono-light.svg` | Una tinta cal `#F4F0EB` | Fondos oscuros: piezas de la campaña 100 Capitanes, dark mode del producto, foto con scrim, remera negra | Sobre fondos claros |

**Los siete archivos traen un `<rect id="preview-bg">`.** Es un fondo de previsualización para que el archivo se vea bien al abrirlo en el navegador. **Borralo antes de usar el logo sobre cualquier otra cosa** — salvo en `app-icon.svg`, donde el rect **sí** es la capa de fondo real del icono y tiene que quedarse.

**Regla dura de esta dirección: el logo a color solo va sobre papel.** Sobre `papel.0 #FFFDFA`, `papel.50 #FAF7F2` o `papel.100 #F4F0EB`. Cualquier otro fondo — blanco puro de imprenta, un color, una foto, un oscuro — usa monotinta. Esto es porque la raya de cal **es** del color del papel: sobre otro fondo o desaparece o forma un halo sucio alrededor de la línea.

---

## 5. Área de protección y tamaños mínimos

### 5.1 Área de protección

**X = 25 % del diámetro del disco.** Ese margen tiene que quedar libre en los cuatro lados: sin texto, sin bordes, sin otro logo, sin el borde de la pieza.

| Lockup | Diámetro del disco | X |
|---|---|---|
| `logo-primary` (600 × 200) | 122,6 u | **30,7 u** |
| `logo-horizontal` (500 × 160) | 101,1 u | **25,3 u** |
| `logo-stacked` (380 × 400) | 172,4 u | **43,1 u** |
| `isotype` (200 × 200) | 153,2 u | **38,3 u** |

**Los `viewBox` entregados ya incluyen ese margen.** Si respetás el borde del archivo, respetás el área de protección. El único caso que pide más aire es el co-branding contra el verde neón de la campaña: ahí van **1,5 X** (§10).

### 5.2 Tamaños mínimos

Medidos, no estimados: se rasterizó cada archivo a cada tamaño y se miró.

**Pantalla**

| Elemento | Mínimo | Qué se rompe abajo de eso |
|---|---|---|
| `isotype` a color | **16 px** | La raya baja de 1,38 px, el antialiasing la funde con la tierra y el disco pasa a ser una mancha bicolor |
| `isotype` monotinta | **16 px** | Igual: el calado se cierra |
| `logo-horizontal` | **100 px de ancho** | Disco de 20 px y mayúscula de 12,4 px: es el piso de la palabra "Fulbito" |
| `logo-primary` | **230 px de ancho** | El tag APP baja de 6 px de mayúscula. Debajo de 230 px **no lo achiques: cambiá a `logo-horizontal`** |
| `logo-stacked` | **170 px de ancho** | Mismo motivo, el tag APP |
| App icon | **24 px** (notificación Android) | Verificado a 29 px (iOS Ajustes): la raya da 1,5 px y se lee |

**Impresión**

| Elemento | Offset / digital | Serigrafía | Bordado |
|---|---|---|---|
| `isotype` (diámetro) | **5 mm** | **10 mm** | **14 mm** |
| `logo-horizontal` (ancho) | **28 mm** | **45 mm** | **60 mm** |
| `logo-primary` (ancho) | **58 mm** | **90 mm** | no usar — sacá el tag y bordá `logo-horizontal` |
| `logo-stacked` (ancho) | **42 mm** | **65 mm** | **85 mm** |

Los mínimos de serigrafía y bordado son el doble y el triple porque la raya es un **calado**, y un calado se cierra: la tinta se corre y el hilo se junta. En bordado la raya tiene que quedar de **1 mm como mínimo**, lo que fija el diámetro en 14 mm (1 ÷ 0,086 ÷ 0,83 con margen). Debajo de eso, **bordá solo el disco lleno en una tinta y olvidate de la raya**: es una pérdida aceptable en un pin o un puño de remera, no en nada más grande.

**El número duro:** por debajo de **16 px o 5 mm**, La Raya deja de ser un símbolo y pasa a ser una mancha. Ese es el piso, y no se negocia bajándolo "solo por esta vez".

---

## 6. Paleta aplicada al logo

Todos los valores salen del UI Kit POTRERO. No hay ni un color nuevo.

| Rol en el logo | Token del kit | Hex |
|---|---|---|
| Tierra (la pelada) | `ladrillo.500` | `#C8391B` |
| Pasto | `pasto.500` | `#265E3A` |
| Cal (la raya) | `papel.100` | `#F4F0EB` |
| Wordmark sobre claro | `papel.900` | `#1F1B16` |
| Tag "APP" sobre claro | `papel.600` | `#6B6255` |
| Tinta única clara | `papel.100` | `#F4F0EB` |

### 6.1 Qué va sobre qué

| Fondo | Versión | Elementos |
|---|---|---|
| `papel.100 #F4F0EB` (fondo de app) | **Color** | Disco a color, wordmark `#1F1B16`, tag `#6B6255` |
| `papel.0 #FFFDFA` (tarjetas, sheets) | **Color** | Igual |
| Blanco de imprenta `#FFFFFF` | **Mono oscura** | La raya en `#F4F0EB` sobre blanco puro forma un halo gris sucio |
| `papel.950 #14100C` (dark mode) | **Mono clara** | Tinta `#F4F0EB` |
| `#0A0A0A` (campaña 100 Capitanes) | **Mono clara** | Ver §10 |
| Foto | **Mono clara** sobre scrim `papel.900` al 55 % | Nunca el logo a color sobre foto |
| `ladrillo.500` `#C8391B` | **Mono clara** | La tierra del disco desaparecería contra el fondo |
| `pasto.500` `#265E3A` | **Mono clara** | Ídem con el pasto |

### 6.2 Ratios de contraste (WCAG 2.1)

| Frente | Fondo | Ratio | Veredicto |
|---|---|---|---|
| `#1F1B16` wordmark | `#F4F0EB` papel | **15,0:1** | AAA ✅ |
| `#6B6255` tag APP | `#F4F0EB` papel | **5,28:1** | AA ✅ |
| `#C8391B` tierra | `#F4F0EB` papel | **4,56:1** | ✅ Borde del disco contra el fondo |
| `#265E3A` pasto | `#F4F0EB` papel | **6,69:1** | ✅ Borde del disco contra el fondo |
| `#F4F0EB` raya | `#C8391B` tierra | **4,56:1** | ✅ Supera el 3:1 de elemento no textual |
| `#F4F0EB` raya | `#265E3A` pasto | **6,69:1** | ✅ Idem |
| `#F4F0EB` mono clara | `#1F1B16` birome | **15,0:1** | AAA ✅ |
| `#F4F0EB` mono clara | `#0A0A0A` campaña | **18,1:1** | AAA ✅ |
| **`#C8391B` tierra** | **`#265E3A` pasto** | **1,47:1** | ⚠️ **Ver abajo** |

### 6.3 El dato importante: 1,47:1

**Ladrillo y pasto tienen casi la misma luminancia.** Difieren en tono (13° contra 145°), no en claridad. Traducido: en escala de grises, en un fax, en una fotocopia y para una persona con daltonismo rojo-verde, **las dos mitades del disco son el mismo color**.

El UI kit ya dejó anotado que en la población objetivo — hombres de 22 a 38 — los daltónicos son **~8 %**. Es decir: **uno de cada doce capitanes no ve la diferencia entre la tierra y el pasto de nuestro logo.**

Por eso la raya de cal existe y por eso mide 8,6 % del diámetro y no 4 %. **La raya es lo único que sostiene la lectura del símbolo**; el color es una capa de significado encima, no la estructura. Se verificó: convertida a escala de grises, La Raya sigue leyéndose como un disco partido. Sin la raya, se convierte en un círculo plano.

**Consecuencia operativa:** cualquier variante futura del símbolo que reemplace la raya por un cambio de color, o que la afine, **rompe el logo para el 8 % de la audiencia**. No es una preferencia estética, es un requisito.

---

## 7. Comportamiento como app icon

`app-icon.svg` viene con las dos capas separadas y nombradas: `capa-fondo` y `capa-primer-plano`.

### 7.1 Geometría y zona segura

- Lienzo **1024 × 1024**, a sangre, **sin esquinas redondeadas dibujadas**. La máscara la pone el sistema; si la horneás vos, en Android te queda un borde doble.
- Disco de **625 px de diámetro = 61 % del lienzo**, centrado en `512 / 512`.
- El adaptive icon de Android trabaja sobre 108 dp: **72 dp de área visible** (círculo de 682 px en escala 1024) y **66 dp de zona garantizada** (626 px). Nuestro disco entra en **625 px**: queda dentro de la zona garantizada con 1 px de margen. **Ninguna máscara le corta nada, en ningún launcher.**

### 7.2 iOS — squircle

El sistema recorta con una superelipse y agrega su propio brillo/sombra según versión. El fondo es plano `#F4F0EB` a sangre, así que el recorte no se lleva ningún contenido: solo achica el rectángulo. El disco, al 61 % y centrado, queda holgado dentro de la superelipse inscripta.

- **No entregues el master con canal alfa.** App Store lo rechaza.
- **No metas sombra ni degradado.** El kit POTRERO no usa sombras portadoras de significado y el icono tampoco.
- Slots a generar: 1024, 180, 167, 152, 120, 87, 80, 76, 60, 58, **40** y **29**.

### 7.3 Android — adaptive icon

```xml
<!-- res/mipmap-anydpi-v26/ic_launcher.xml -->
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
    <background android:drawable="@color/icon_papel"/>      <!-- #F4F0EB, plano -->
    <foreground android:drawable="@drawable/ic_launcher_foreground"/>
    <monochrome android:drawable="@drawable/ic_launcher_mono"/>
</adaptive-icon>
```

- **Capa de fondo:** color plano `#F4F0EB`. No pongas el disco acá: la capa de fondo no se mueve con el parallax y el icono queda muerto.
- **Capa de primer plano:** 108 × 108 dp con el disco de **66 dp** centrado — exactamente el 61 % que ya tiene el archivo. Exportá el grupo `capa-primer-plano` sobre un lienzo transparente de 1024.
- **Capa monocroma (Android 13+, iconos temáticos):** obligatoria, y hay que hacerla a mano. Exportá el grupo `isotipo` de **`logo-mono-dark.svg`** — el corte de dos tintas con el calado — como silueta plana. El sistema la tiñe con el color del wallpaper del usuario; si no la entregás, Android genera una automática recortando el foreground y **el calado de la raya se pierde**, con lo cual el icono temático queda como un círculo lleno. Es el error más probable de este handoff.
- **Ojo con la sombra del foreground.** Algunos launchers (Pixel incluido) aplican una sombra a la capa de primer plano. Un disco de borde duro sobre papel claro con sombra propia se ve como una calcomanía despegada. **Verificalo en un Pixel real antes de publicar.** Si se ve sucio, la salida es mover el disco a la capa de fondo y resignar el parallax — es un intercambio aceptable.

### 7.4 A 29 × 29 px

Es el slot de Ajustes de iOS y el peor caso realista.

- Disco: **17,7 px**. Raya: **1,5 px**. Se lee — verificado por rasterizado.
- **Lo que se pierde:** la irregularidad del disco (a 29 px es un círculo perfecto) y el matiz de la curva de la raya (se lee como una diagonal).
- **Lo que sobrevive, que es lo que importa:** un disco partido en dos, con la parte chica abajo a la izquierda y en cálido. Eso alcanza para el reconocimiento en una lista de ajustes.
- A 24 dp (notificación de Android, monocroma) el sistema la tiñe de un solo color y queda la silueta con el calado. Sigue leyendo.

### 7.5 El riesgo del icono

Un icono de fondo papel en una grilla de iconos con gradientes saturados **puede leerse como apagado, o directamente desaparecer sobre un wallpaper claro**. Es deliberado — la diferenciación es justamente parecer un papel entre vidrios — pero es una apuesta. Ver §11, contra 6.

**Alternativa preparada, por si el test la tumba (Icono B, no entregada):** invertir la figura. Fondo `pasto.500 #265E3A` a sangre y el disco en `papel.100` con la pelada en `ladrillo.500` y la raya calada en verde. Mismo símbolo, misma geometría, un icono que se planta en cualquier home screen. Es un cambio de dos capas en el mismo archivo; no rehace nada.

---

## 8. Usos prohibidos

Doce, con el motivo de cada uno. El motivo importa más que la prohibición: si entendés por qué, resolvés bien el caso que no está en la lista.

1. **No rotes el disco.** La raya entra a las 11:30 y sale a las 4:30, y esa orientación es la que la hace leer como una línea trazada en el suelo. Rotada 90° pasa a ser un horizonte y el logo se convierte en un amanecer sobre el mar. Rotada 180° la tierra queda arriba y el símbolo flota.

2. **No espejes el símbolo.** La tierra va abajo a la izquierda. Espejada, el peso queda del lado por donde el ojo sale de la composición y el lockup se desbalancea contra el wordmark.

3. **No intercambies los colores** (pasto en la parte chica, tierra en la grande). Al invertir, el ladrillo — que es el color primario de la marca y el que carga el reconocimiento — pasa a ser fondo, y el símbolo se lee verde. En una miniatura de tienda, eso es otra marca.

4. **No uses el logo a color sobre nada que no sea papel.** Sobre blanco puro `#FFFFFF` la raya `#F4F0EB` deja un halo gris; sobre color o foto, directamente desaparece. Existen dos monotintas exactamente para esto.

5. **No pongas el logo a color sobre foto, ni siquiera con scrim.** Un disco verde y rojo sobre una foto de cancha compite con el pasto real de la foto y se pierde. Sobre foto va `logo-mono-light` con scrim `papel.900` al 55 %, siempre.

6. **No pintes la raya de otro color.** Ni ocre, ni azul tiza, ni blanco puro. La raya es cal y la cal es del color del papel. Un color adentro de la raya convierte el calado en un tercer objeto y el símbolo pasa a tener tres elementos en vez de dos.

7. **No metas ocre capitán `#D99A2B` en el logo, nunca.** El kit lo tiene reservado con exclusividad para señalar **a una persona** — el capitán, el MVP. El logo es la marca, no una persona. Un color con una sola función es un lenguaje; el mismo color en dos funciones es decoración. Esto vale también para la versión "aniversario" que alguien va a pedir en algún momento.

8. **No pongas "App" en Fraunces, ni en ladrillo, ni al mismo cuerpo que "Fulbito".** En el momento en que las dos palabras pesan igual, el wordmark pasa a ser "FulbitoApp" y perdimos el nombre corto que la gente usa. El tag es 0,30 del alto de mayúscula, en Archivo, en grafito. Si no entra a ese tamaño, sacalo.

9. **No animes el isotipo como si fuera una pelota.** Nada de rodar, rebotar, ser pateado ni girar sobre su eje. En el momento en que rota, la raya deja de ser una línea trazada en el suelo y pasa a ser la costura de una pelota: se pierde toda la idea. Animaciones válidas: la raya se dibuja de arriba hacia abajo (300 ms, `easeOutCubic`), o el disco entra con un fade y una escala del 96 % al 100 %.

10. **No le pongas sombra, degradado, bisel, brillo ni contorno.** El kit POTRERO usa elevación en las tarjetas, no en la marca. Un contorno alrededor del disco lo convierte en un sticker y la irregularidad del borde — que es la mitad del carácter — se pierde bajo el trazo.

11. **No lo encierres en un escudo, un círculo, una placa redondeada ni una cinta.** El disco ya es la forma contenedora. Meterlo adentro de otra lo vuelve un emblema institucional, que es exactamente lo que decidimos no ser. La única excepción es el app icon, donde el contenedor lo pone el sistema operativo.

12. **No estires, condenses ni redibujes el wordmark en otra fuente.** En particular, **no lo tipees en Bebas Neue** porque la campaña usa esa familia. Bebas es la voz del trailer; Fraunces es la voz del producto. Si en una pieza de campaña necesitás la palabra Fulbito, usá el archivo de logo, no la tipografía de la pieza.

---

## 9. Cómo convive con el UI kit POTRERO

El logo y el kit comparten paleta y display, así que la convivencia es natural. Lo que hay que fijar es la **frecuencia**: un logo que aparece en todas las pantallas deja de ser una marca y pasa a ser ruido de interfaz.

**Dónde aparece el logo dentro de la app**

| Lugar | Archivo | Tamaño |
|---|---|---|
| Splash | `logo-stacked` a color | 42 % del ancho de pantalla |
| Onboarding, pantalla 1 | `logo-stacked` a color | 34 % del ancho |
| App bar de la home | `isotype` a color | 28 dp de alto |
| App bar del resto | nada — solo el título | — |
| "Acerca de" / Ajustes | `logo-horizontal` a color | 160 dp de ancho |
| Imagen compartida del resultado | `logo-horizontal` mono oscura | 14 % del ancho, abajo a la derecha |
| Sticker de WhatsApp | `isotype` a color con borde cal de 8 u | 512 × 512 |

**Reglas de convivencia**

- **El logo nunca va adentro de una tarjeta.** Las tarjetas son del contenido del capitán: su partido, su gente, sus fotos. La marca vive en el chrome, no en el contenido. La única excepción es la imagen que se comparte fuera de la app, donde el logo es lo que hace que el que la recibe sepa de dónde salió.
- **Marca de agua permitida**, con una sola forma: `isotype` monotinta en `papel.300 #D6CEC2` sobre `papel.100`. Nunca el isotipo a color con opacidad reducida — el ladrillo bajado a 20 % da un rosa que no está en la paleta.
- **Caveat no toca el logo.** La manuscrita del kit es la voz del capitán, no la de la marca. Nunca "Fulbito" en Caveat, nunca una nota manuscrita dentro del área de protección.
- **En dark mode**, el logo pasa a `logo-mono-light`. No existe una versión a color para fondo oscuro: sobre `papel.950 #14100C` el pasto `#265E3A` da 1,9:1 y se apaga.
- **App bar rellena de ladrillo:** `isotype` no funciona (la tierra desaparece contra el fondo). Usá el corte monotinta claro.
- **El logo no reemplaza al ícono de la app en la navegación.** El bottom nav usa la iconografía del kit (§6 del kit), no la marca.

---

## 10. Cómo convive con la campaña 100 Capitanes

La campaña es negro `#0A0A0A` + verde neón `#1DB954` + dorado `#F5A623`, con Bebas Neue. El producto es papel + ladrillo + pasto, con Fraunces. Son dos mundos, y el kit ya asumió esa tensión como "el trailer y la película" (contra 3 del UI kit).

**El logo es el único elemento que cruza de un mundo al otro. Por eso cruza en monotinta.**

| Regla | Detalle |
|---|---|
| **Versión única en campaña** | `logo-mono-light` `#F4F0EB` sobre `#0A0A0A`. **18,1:1.** El logo a color al lado de `#1DB954` se ve como un error de impresión: son dos verdes distintos a 30 cm de distancia, y el ladrillo compite con el `#E53935` de urgencia de la semana 3 |
| **Área de protección ampliada** | **1,5 X** contra cualquier elemento en verde neón. El neón vibra en el borde y le come el contorno al disco |
| **El dorado no toca el logo** | La insignia dorada del capitán y el logo nunca se superponen ni comparten el área de protección. El dorado señala a la persona; el logo señala a la marca. Si aparecen en la misma pieza, van en esquinas opuestas |
| **El número de capitán no se mete adentro del disco** | Va a pedir alguien. La respuesta es no: convierte el logo en un contenedor de dato variable y deja de ser una marca |
| **Bebas Neue nunca tipea "Fulbito"** | Si en una pieza hace falta la palabra, se pega el archivo de logo |
| **Semana 4 (cierre, dorado dominante)** | El logo sigue en cal `#F4F0EB`, no pasa a dorado. Es el único elemento que no celebra: la marca estaba antes de la campaña y va a estar después |

**El puente cromático del onboarding.** El UI kit propone que el onboarding arranque oscuro y aclare en tres pantallas, para que el capitán no sienta un salto entre el anuncio y la app. El logo es el ancla de ese puente: **pantalla 1 en `logo-mono-light` sobre oscuro** (idéntico a la última pieza de campaña que vio), **pantalla 3 en `logo-stacked` a color sobre papel**. Es la misma forma cambiando de piel: el usuario percibe una transición, no un cambio de marca.

---

## 11. Contras honestos

Sin vender nada. Estos son los problemas reales de esta propuesta.

1. **Ladrillo y pasto no se distinguen en escala de grises ni para un daltónico.** 1,47:1 de luminancia. En una audiencia 100 % masculina, **~8 % no percibe la diferencia entre las dos mitades**. El símbolo sigue funcionando gracias a la raya de cal — se verificó en grises — pero **el concepto (tierra contra pasto) es invisible para esa gente**: ven un disco partido, no un potrero. Hay que pasarlo por un simulador de protanopía y deuteranopía antes de cerrar, y asumir que una parte del significado no llega nunca.

2. **Un disco partido no es una silueta muy distintiva, y eso es un problema de registro, no de gusto.** El espacio de "círculo dividido por una curva" está muy poblado: fases lunares, yin-yang, pelotas de tenis, un montón de marcas de app. La distintividad real de Fulbito descansa en el **conjunto** símbolo + wordmark, no en el símbolo solo. **Hay que presupuestar una búsqueda de antecedentes en INPI (clases 9, 38, 41 y 42) antes de presentar**, y hay que asumir que el isotipo aislado va a ser difícil de defender. Agravante: **"fulbito" es un sustantivo común rioplatense**, o sea que la palabra sola tiene distintividad débil; lo registrable es la marca mixta.

3. **La idea necesita que alguien la cuente.** Nadie decodifica "media tierra, medio pasto, la raya que trazó el capitán" mirando un icono de 60 px. Eso se cuenta en el onboarding, en la nota de prensa, en el video del fundador. **Si el equipo no se compromete a contar la historia de forma sostenida, el logo es un círculo de dos colores y nada más.** No es una crítica al símbolo: es el costo real de cualquier marca conceptual, y hay que decidir si se paga.

4. **Fraunces es una fuente de riesgo.** Pesada, con mucho detalle, y con una personalidad que a tracking suelto se va derecho a "panadería artesanal de Güemes". El UI kit ya anota que en pantallas de 720p — que abundan en el target — el contraste de trazo de una serif se degrada más que el de una grotesca. En el logo el problema es menor porque se vectoriza, pero **estamos a una aplicación mal trackeada de que la marca se vea cursi**. Hay que testear el lockup impreso, no solo en pantalla.

5. **El corte a color solo sirve sobre papel, y eso significa que el mono va a ser el logo real.** Cada partner, cada franja de sponsors, cada fondo oscuro, cada remera negra, cada sello, cada fondo blanco de imprenta fuerza monotinta. Cálculo realista: **el mono se va a usar el 60 % de las veces**. Y el mono no tiene ladrillo ni pasto, o sea que no tiene el concepto — tiene la forma. Es incómodo pero es cierto, y conviene saberlo antes que descubrirlo en el primer contrato de sponsoreo.

6. **El app icon en papel puede desaparecer.** Sobre un wallpaper claro, en una grilla de iconos saturados, un cuadrado color papel es el más apagado de la pantalla. La apuesta es que eso mismo lo haga notable. **Es una apuesta, y puede salir mal**: menos toques por sesión y menos reinstalaciones desde el cajón de apps. El Icono B de §7.5 está listo si el test lo tumba, pero hay que hacer el test — no decidirlo por gusto.

7. **No dice "fútbol" sin contexto.** Al lado de iconos con pelotas, arcos y canchas en la ficha de la tienda, un disco de dos colores no señala categoría. Eso cuesta instalaciones en el margen, sobre todo en búsqueda genérica. **Es un intercambio deliberado — diferenciación contra legibilidad de rubro — y se compensa con las capturas de pantalla y el subtítulo de la ficha, no agregándole una pelota al logo.** Si el equipo no está dispuesto a bancar esa pérdida, esta dirección no es la correcta.

8. **Córdoba no se ve.** Está en la temperatura de la paleta y en la historia, no en ninguna forma. Si el negocio necesita que la cordobesidad sea visible desde el icono, esta dirección **no lo hace**, y agregarle una referencia local la rompe. Es honesto decirlo ahora: la localía de POTRERO la sostiene el contenido — foto real, copy cómplice, embajadores de verdad — no el logotipo.

9. **La calidez tiene techo de escala.** "Potrero" se entiende en toda la Argentina, pero lo analógico se puede leer como poco tecnológico: por inversores en una ronda, y por usuarios que quieren sentir que usan algo moderno. El competidor que saque un icono oscuro con neón va a **parecer** más app. Nosotros vamos a parecer más honestos, que es otra cosa y no siempre gana.

10. **El tag "APP" es una muleta con fecha, y las muletas con fecha se quedan.** Si nadie tiene la responsabilidad explícita de sacarlo, en 18 meses es parte de la marca por inercia y sacarlo va a costar el doble. **Poné dueño y fecha en el calendario hoy**, no cuando toque.

11. **Es una propuesta, no una decisión.** Está sin testear con capitanes reales. El mínimo aceptable antes de cerrar: **ocho capitanes cordobeses**, mostrando el icono a 60 px en una grilla junto a competidores, y una prueba de recuerdo a las 24 horas. Si no lo reconocen al otro día, el problema es el símbolo — no el brief.

---

## 12. Archivos de esta propuesta

| Archivo | Contenido |
|---|---|
| `README.md` | Este documento |
| `logo-primary.svg` | Lockup primario, 600 × 200 |
| `logo-horizontal.svg` | Lockup horizontal, 500 × 160 |
| `logo-stacked.svg` | Lockup vertical, 380 × 400 |
| `isotype.svg` | Solo el símbolo, 200 × 200 |
| `app-icon.svg` | Master de icono, 1024 × 1024, con capas separadas |
| `logo-mono-dark.svg` | Una tinta `#1F1B16`, 600 × 200 |
| `logo-mono-light.svg` | Una tinta `#F4F0EB`, 600 × 200 |
| `prompts-exploracion.md` | Seis prompts de imagen para explorar variantes antes de cerrar |

**Checklist antes del handoff a producción**

- [ ] Vectorizar los wordmarks y borrar `textLength` (§3.3)
- [ ] Aplicar los pares de kerning de §3.1
- [ ] Borrar los `preview-bg` de los seis archivos que no son el app icon
- [ ] Generar la capa monocroma de Android desde `logo-mono-dark.svg` (§7.3)
- [ ] Pasar el símbolo por simulador de protanopía y deuteranopía (§11.1)
- [ ] Búsqueda de antecedentes en INPI, clases 9, 38, 41 y 42 (§11.2)
- [ ] Test de icono con ocho capitanes, con recuerdo a 24 horas (§11.11)
- [ ] Verificar la sombra del foreground en un Pixel real (§7.3)

---

**Brand Guardian** · NEXUS
Propuesta 01 de 3 · Emparejada con `design/ui-kit/01-potrero/`
