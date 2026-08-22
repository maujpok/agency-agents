# Logotipo "NOCTURNA" — El Haz
## Dirección 02 · Fulbito · Córdoba, Argentina

> Propuesta de logotipo. Una de tres direcciones a comparar.
> Emparejada con el UI kit `design/ui-kit/02-nocturna/` y con la campaña `campaigns/02-100-capitanes/`.
> Autor: Brand Guardian (NEXUS) · en dupla con Visual Storyteller.
> Estado: propuesta cerrada. Wordmark pendiente de vectorización (ver §12).

---

## 1. Concepto en una frase

**No es una pelota: es la luz que se prende a las nueve de la noche y parte la cancha en dos equipos parejos.**

### Fundamento

El capitán cordobés no organiza fútbol. Organiza **un momento**: jueves, 21:00, La Tablada cancha 3, con la luz artificial encima. Ese momento tiene una señal física inconfundible y es la única que comparten todas las canchas de Córdoba, de Villa Allende a Barrio Jardín: **el reflector prendido**. Cuando la luz se enciende, el partido existe. Cuando está apagada, no hay nada.

Por eso el símbolo no es un objeto del fútbol (la pelota, el botín, el arco). Es **la condición que hace que el fútbol pase**. Y esa condición la produce una persona: el que reservó, el que juntó la plata, el que hizo que se prenda la luz. El logo es, literalmente, lo que el capitán logra.

El segundo significado está en el corte del medio. El haz baja y **se parte en dos mitades de área exactamente idéntica** — 580 unidades cuadradas cada una, verificable sobre la grilla (§3). Eso es lo que el producto promete: equipos parejos. No es un adorno geométrico, es la función central de la app dibujada en el símbolo.

### Qué ve el capitán cordobés cuando lo mira

A tres metros, en una remera o en el celular de un amigo: **una torre de luz**. Lo reconoce sin que nadie se lo explique porque lo tiene arriba de la cabeza todos los jueves. No ve una metáfora, ve una cosa que existe en su vida.

A treinta centímetros, en el ícono de su teléfono: **una luz que baja partida al medio**. Ahí puede o no leer los dos equipos. Si lo lee, es un premio. Si no, no perdió nada — el mark ya funcionó.

Lo que no ve nunca: un ícono deportivo genérico. No hay pelota hexagonal, no hay silueta pateando, no hay escudo con cintas, no hay cancha en perspectiva, no hay silbato. Esos cinco lugares comunes están explícitamente descartados y ninguno se coló por la ventana.

---

## 2. El problema Spotify

El UI kit lo dejó anotado como el riesgo más serio de esta dirección y tiene razón: `#1DB954` **es** el verde de Spotify, y verde sobre negro con sans y esquinas redondeadas es su firma visual completa. Un logo nuevo que aterrice ahí arranca con una deuda de credibilidad.

Lo abordé en dos frentes: **la forma** (que es el que resuelve de verdad) y **el matiz** (que es el seguro complementario).

### 2.1 La forma: dónde está exactamente la coincidencia y cómo se rompe

La marca de Spotify tiene una anatomía muy precisa. La comparación, elemento por elemento:

| Rasgo | Spotify | Fulbito "El Haz" |
|---|---|---|
| Geometría base | Círculo perfecto, relleno pleno | Trapecios. **Cero círculos, cero arcos, cero curvas** en todo el símbolo |
| Terminaciones | Arcos con extremos redondeados | Ángulos vivos, uniones a inglete, ningún radio de esquina |
| Simetría | Radial total (gira sobre sí mismo) | Bilateral con **corte interno asimétrico** — no hay eje de rotación |
| Figura / fondo | Figura **negra sobre verde** | Figura **verde sobre negro** — la relación está invertida |
| Ícono de app | Tile **verde** con glifo negro | Tile **negro** con glifo verde. Ninguna app icon de Fulbito lleva fondo verde nunca |
| Cantidad de colores | Dos (verde + negro) | **Tres**: verde, negro y Dorado Capitán. El dorado es 15,7% del área del símbolo y no tiene equivalente en Spotify |
| Dirección visual | Ninguna: es estático y centrado | Descendente. La luz cae. Hay arriba y hay abajo |
| Tipografía | Circular / Spotify Mix: geométrica, redonda, puntos circulares | Archivo Black: grotesca **ancha**, contraformas casi rectangulares, terminales horizontales, **la tilde de la "i" es un rectángulo puro de 199×135 unidades** (verificado en el archivo de la fuente) |

### 2.2 La evidencia visual: la prueba del entrecerrado

El lugar donde la confusión ocurre no es de cerca, es de lejos — un ícono en la grilla de aplicaciones, un logo al pie de un Reel, una remera a seis metros. Ahí no se leen los detalles, se lee la silueta. Entrecerrando los ojos, o desenfocando la imagen al 40%:

- **Spotify colapsa en un disco verde macizo.** Es una mancha redonda, uniforme, sin arriba ni abajo, sin punta. Su silueta es un círculo.
- **El Haz colapsa en un cuadrado negro con una cuña brillante que se abre hacia abajo y una barra encima.** Su silueta es un triángulo invertido rematado por una horizontal.

Un círculo y un triángulo invertido no se confunden a ninguna distancia. Esa es la diferencia estructural, y es la razón por la que este símbolo resuelve el problema donde la mitigación (a) del UI kit —"diferenciar por tipografía y hexágonos"— no llegaba: **la tipografía no se ve de lejos, la silueta sí.**

La inversión de figura/fondo en el app icon hace el resto. En la grilla del teléfono, al lado del tile verde de Spotify, el de Fulbito es negro. No compiten: contrastan.

### 2.3 El matiz: la recomendación, con el número

La forma resuelve el problema de percepción. El matiz resuelve el problema de la captura de pantalla: el día que alguien ponga los dos hex uno al lado del otro en un tuit, `#1DB954 = #1DB954` es un hecho que ningún argumento de diseño desarma.

**Recomendación: mover el verde del logo a `#22C860` antes del primer envío a las tiendas.**

| Verde | Contraste sobre `#0A0A0A` | ΔE76 vs `#1DB954` |
|---|---|---|
| `#1DB954` (actual) | 7,66:1 | — |
| **`#22C860` (recomendado)** | **8,96:1** | **5,68** |
| `#16BF5B` (alternativa más profunda) | 8,14:1 | 2,70 |

Un ΔE76 de 5,68 significa: **visible si los ponés uno al lado del otro, irreconocible por separado.** Nadie que vio la campaña en `#1DB954` va a notar que la app abre en `#22C860`. Y de yapa el contraste sube de 7,66:1 a 8,96:1, así que el cambio no cuesta accesibilidad: la mejora.

**Por qué `#22C860` y no `#16BF5B`.** El segundo está a 2,70 de ΔE, que está en el borde de lo que un ojo entrenado distingue ni siquiera lado a lado: se corre lo suficiente para no ser el mismo hex y no lo suficiente para que la diferencia sea defendible si alguien la discute. Si vamos a pagar el costo de mover el color, que el movimiento se note en un color picker y mejore el contraste. `#16BF5B` queda como alternativa solo si en las pruebas de pantalla el verde más claro se percibe ácido sobre OLED.

**Por qué el logo primero y no la campaña primero.** El logo es el activo con la vida más larga y el volumen de material producido más chico. Cambiarlo después de tener 40 piezas, un ícono en dos tiendas y remeras impresas cuesta diez veces más que cambiarlo ahora. Al revés, las piezas de "100 Capitanes" ya producidas pueden quedarse en `#1DB954` durante toda la beta sin que nadie perciba el desfasaje: 5,68 de ΔE no se nota entre un Story y un ícono que se miran con seis horas de diferencia.

**Los archivos de este directorio salen en `#1DB954`** para que entren en la campaña actual sin romper nada. El corrimiento es una línea:

```bash
# Correr en design/logo/02-nocturna/ cuando se apruebe el cambio de matiz
sed -i 's/#1DB954/#22C860/g' *.svg
# Y en paralelo, en el UI kit: color.primitive.green.500 y sus derivados.
# Regla dura: el verde del logo y el token green.500 se mueven juntos o no se mueve ninguno.
```

---

## 3. Construcción del símbolo

### 3.1 De dónde sale la forma

De una torre de reflectores de cancha de fútbol 5, mirada de frente y reducida a dos cosas: **el cabezal** (la carcasa de las lámparas) y **el haz** (la luz que cae). Se sacó el mástil, que a tamaño chico se convierte en un pelo de un píxel y desaparece; se sacaron las lámparas individuales, que a 16 px son una papilla gris. Queda lo que sobrevive: una barra arriba y un cono abajo.

El cabezal es un **trapecio invertido** —más ancho abajo que arriba— y no un rectángulo. Esa decisión es la que hace que el símbolo se lea como artefacto de iluminación y no como cartel de ruta: un rectángulo sobre un cono es señalética; un trapecio abocinado sobre un cono es una lámpara. Se probaron las dos y la diferencia de lectura es inmediata.

### 3.2 La grilla

Todo el símbolo está construido sobre una **grilla de 64 × 64 unidades** con un módulo de referencia **X = 8u** (un octavo de la grilla, y el alto exacto del cabezal). La grilla de 64 no es arbitraria: es la de 24 del set de íconos del UI kit multiplicada, así que el símbolo se puede alinear con los íconos de producto sin redondeos raros.

| Elemento | Coordenadas (grilla 64) | Medida |
|---|---|---|
| Caja óptica del símbolo | x 8..56 · y 6..58 | 48u × 52u = **6X × 6,5X** |
| Cabezal (dorado) | `M20 6 L44 6 L47 14 L17 14 Z` | 24u arriba / 30u abajo × 8u de alto = **1X** |
| Separación cabezal → haz | y 14..18 | 4u = **X/2** |
| Haz izquierdo (verde) | `M23 18 L32.5 18 L27.5 58 L8 58 Z` | área **580u²** |
| Haz derecho (verde) | `M36.5 18 L41 18 L56 58 L31.5 58 Z` | área **580u²** |
| Corte central | ancho horizontal constante | 4u = **X/2** |
| Borde superior del haz | x 23..41 | 18u |
| Borde inferior del haz | x 8..56 | 48u |

### 3.3 Las relaciones que importan

**El reparto parejo.** El cono completo, sin cortar, es un trapecio simétrico respecto del eje x = 32: 18u arriba, 48u abajo, 40u de alto, área total 1.320u². El corte no es vertical: su eje va de x = 34,5 arriba a x = 29,5 abajo, o sea **+2,5u y −2,5u respecto del eje del cono**. Esa antisimetría es lo que hace que las dos mitades tengan **exactamente la misma área** (580u² cada una) aunque tengan formas completamente distintas: la izquierda es una losa (9,5u arriba, 19,5u abajo), la derecha es una cuña (4,5u arriba, 24,5u abajo).

Dos piezas que no se parecen en nada y pesan lo mismo. Es el algoritmo de armado de equipos, dibujado: **nunca son once contra once de los mismos; son dos grupos distintos que valen igual.**

**La apertura.** 20,6° por lado (atan 15/40). Es una apertura ancha: la luz de una cancha de fulbito no es un spot de teatro, es un baño de luz que cubre todo el campo. Un cono angosto habría dicho "foco", no "cancha".

**El voladizo del cabezal.** El cabezal mide 30u en su borde inferior contra 18u del borde superior del haz: vuela 6u de cada lado. Es lo que lo despega de la lectura de "continuidad" y lo convierte en un objeto apoyado encima de la luz, no en la parte de arriba de la misma forma.

**El aire.** Las dos separaciones internas miden lo mismo: **4u, X/2**. Una sola medida de aire en todo el símbolo. Es la razón por la que la versión a una tinta funciona sin tocarle nada: el aire es consistente, así que cuando el color desaparece la estructura no se desarma.

**El dorado.** 216u² sobre 1.376u² de área total = **15,7% del símbolo**. Es el único elemento dorado y es la fuente de todo lo demás: sin cabezal no hay haz.

### 3.4 Lo que se probó y se descartó

- **Cabezal rectangular** (primera versión). Se leía como cartel de ruta o como pupitre. El trapecio lo arregló.
- **Cono oblicuo** (luz cayendo en diagonal desde arriba a la izquierda). Tenía más energía, pero perdía la frontalidad, y la frontalidad es lo que da autoridad. El territorio pide "la liga profesional del fulbito amateur": las ligas se presentan de frente, simétricas. La energía la aporta el corte interno, que sí es asimétrico.
- **Corte más inclinado** (±4u en vez de ±2,5u). La cuña derecha quedaba de 3u en la punta: 0,75 px a 16 px, o sea desaparecía. Se volvió a ±2,5u, que deja la punta en 4,5u ≈ 1,1 px y sobrevive.

---

## 4. El wordmark

### 4.1 La familia: Archivo Black

**Archivo Black** (Google Fonts, un solo estilo, 400). Cuatro razones, en orden de peso:

**1. Ya es de la casa.** El UI kit usa **Archivo** 600/700 para titulares. Archivo Black es el mismo esqueleto en su peso extremo: mismas proporciones, mismas contraformas cuadradas, mismos terminales horizontales. El logo no es un extraño que se sentó a la mesa del sistema, es el hermano mayor. Eso resuelve gratis el problema que suelen tener los logos: que la tipografía de marca no converse con la de producto.

**2. Rompe el eje Spotify.** Circular —la tipografía de Spotify— es geométrica, de anchos angostos y puntos redondos. Archivo Black es lo opuesto punto por punto: ancha, de contraformas rectangulares, con la **tilde de la "i" resuelta como un rectángulo puro de 199 × 135 unidades** (lo verifiqué abriendo el TTF: son dos contornos de cuatro puntos cada uno, sin una sola curva). Poner las dos al lado no deja lugar a la comparación.

**3. Contiene el símbolo.** Ese rectángulo de la "i" flota sobre el asta con una separación de 62 unidades sobre una altura de tinta de 725: **8,6% de aire**. El corte del símbolo mide 4u sobre 52u de alto: **7,7% de aire**. La palabra "Fulbito" ya tiene adentro, sin que nadie la fuerce, la sintaxis del logo — una barra suspendida sobre una masa vertical. No hace falta ningún truco tipográfico: el rima está y se paga sola.

**4. No es Bebas.** Bebas Neue es el activo de campaña y tiene que seguir siéndolo, pero un wordmark en Bebas es un wordmark en la display gratuita más usada del planeta: no es apropiable y, condensada y en caja alta, grita. La marca es cómplice, no vocinglera.

### 4.2 Caja baja, no versalitas

El wordmark va en **caja baja: "Fulbito"**, no "FULBITO".

Porque así se dice. Nadie en Córdoba grita el nombre; se dice al pasar, en un mensaje: *"subilo al Fulbito"*, *"che, ¿confirmaste en el Fulbito?"*. La caja alta es el registro de la convocatoria, del marcador, del número del capitán — y todo eso ya lo hace Bebas Neue en la campaña. La marca es la voz baja arriba de todo ese ruido. Es también, en la práctica, lo que la distingue: en un feed de gráfica deportiva donde todo está en condensada mayúscula, una palabra en caja baja ancha y pesada es lo único que no se parece al resto.

### 4.3 Métricas y ajustes (valores reales, medidos sobre el TTF)

Archivo Black, unitsPerEm 1000, altura de mayúscula 688, altura de x 528, **altura de ascendentes 725** (la "l", la "b" y la "i" pasan la mayúscula por 37 unidades), descendente −210.

- Ancho de avance de "Fulbito": **3,778 em**
- Ancho de tinta de "Fulbito": **3,668 em** (del borde izquierdo de la "F" al borde derecho de la "o")
- Lateral izquierdo de la "F": **0,074 em** — es el valor con el que están calculados los `x` de todos los lockups, para que el bloque quede alineado por tinta y no por caja de avance

**Tracking: −25/1000 em (−2,5%) en todas las variantes.** En los archivos aparece como `letter-spacing` en píxeles del cuerpo correspondiente: −2,3 px a 92, −1,6 px a 64, −1,15 px a 46. Archivo Black en su tracking métrico es una fuente de texto pesada; a cuerpo de logo se abre y pierde masa. −2,5% la vuelve a compactar sin cerrar contraformas.

**Excepción de tamaño:** por debajo de 24 px de altura de tinta, subir el tracking a **−10/1000 em**. Con el tracking de display, a tamaño chico la "t" se pega a la "o" y "Fulbito" se convierte en una mancha.

**Kerning manual.** Archivo Black **no trae pares de kerning para ninguna de las seis combinaciones de "Fulbito"** (lo verifiqué recorriendo la tabla GPOS: los seis pares devuelven 0). Todo el ajuste hay que hacerlo a mano en la vectorización. Los tres que importan, en unidades de 1000:

| Par | Ajuste | Por qué |
|---|---|---|
| **F u** | **−18** | El brazo inferior de la "F" deja un hueco abierto abajo a la derecha que la métrica no descuenta. Ópticamente la "u" queda flotando. |
| **i t** | **+8** | El lateral izquierdo de la "t" es de apenas 27 unidades y su brazo superior vuela hacia la izquierda: a la altura de x el par se cierra más de lo que dice la métrica. |
| **t o** | **+12** | Es el par métricamente más apretado de la palabra (68 unidades de aire contra 128 de los pares de asta). Con el tracking de −25 encima queda en 43 y en peso negro el terminal de la "t" empieza a tocar el hombro de la "o". |

Neto sobre el ancho total: +2/1000. Irrelevante para el layout, decisivo para la lectura.

### 4.4 La tilde de la "i" queda del color del wordmark

Es tentador pintarla de `#F5A623` y cerrar el chiste: la "i" sería un reflector adentro de la palabra. **No se hace.**

En este sistema el dorado significa una sola cosa —**capitán**— y el UI kit ya la protege con una regla dura ("los logros no son dorados; el dorado es del rol y de nada más"). Si la marca se pone dorado encima, la marca se está poniendo la insignia del usuario. Y el posicionamiento entero dice lo contrario: **el capitán es el capitán; nosotros somos la luz que le prendemos.** El dorado del símbolo está en el cabezal por eso mismo — marca la fuente, no el protagonista.

La rima entre la tilde y el cabezal existe igual, en la silueta, y no cuesta ni un gramo de disciplina de color (§4.1, punto 3).

### 4.5 Cómo se resuelve "App"

**"App" no está en el logo.** Ni en el primario, ni en el horizontal, ni en el apilado, ni en el ícono.

La marca es **Fulbito**. "FulbitoApp" es un string de tienda y un nombre de dominio, no una identidad. Tres razones concretas:

1. **Nadie lo va a decir.** El capitán va a decir "el Fulbito". Un wordmark que dice algo que el usuario no dice es un wordmark que se corrige solo, en la calle, y pierde.
2. **Envejece.** "App" en el nombre es un marcador de época de 2012, como "e-" en los noventa. En un ícono de la App Store el sufijo además es tautológico: ahí todo es una app.
3. **Rompe la caja baja.** "FulbitoApp" en camel case obliga a una mayúscula en el medio de la palabra, que es exactamente el gesto corporativo que la voz de marca evita.

Pero el sufijo tiene una función real —SEO de tienda, desambiguación frente a otros productos llamados "Fulbito", papeles— así que existe **en un lockup suplementario, bloqueado y acotado**: `logo-store-lockup.svg`.

**Especificación del sufijo:** Archivo 600 (no Archivo Black), cuerpo **22 px sobre un wordmark de 64 px = 34% del cuerpo**, misma línea de base, separación fija de 9 px del final del avance de "Fulbito", color **`#8A938C`** (`neutral.600` del UI kit), tracking 0. Nunca blanco, nunca verde, nunca dorado: el sufijo aclara, no compite.

**Usos permitidos del lockup de tienda, taxativos:** nombre de la ficha en App Store y Play Store, contratos, facturas, pie legal del sitio. **En ningún otro lado.**

---

## 5. Relación con la insignia hexagonal del capitán

La campaña "100 Capitanes" ya tiene su objeto fuerte: hexágono de lado plano arriba, fondo negro, borde dorado de 2 px, el número del capitán en Bebas adentro, y una banda verde fina en el canto superior. El UI kit lo lleva a producto en cuatro tamaños (96 / 56 / 32 / 20 dp).

**Decisión: separación deliberada, con un solo elemento compartido.**

El logo **no lleva hexágono**. Ni lo cita, ni lo insinúa, ni se mete adentro de uno.

### Por qué

**1. El hexágono es del usuario, no de la marca.** Es el emblema de un rango que se gana. Si la marca lo usa, ser capitán deja de ser una distinción y pasa a ser "tener el logo de la app". La escasez es la feature — el UI kit lo dice de la insignia y vale igual acá.

**2. A tamaño chico se pisarían.** Un logo hexagonal de 24 dp al lado de una insignia hexagonal de 20 dp son la misma mancha. El único que pierde es el que necesita ser leído como señal: la insignia. El logo se puede dar el lujo de ser reconocible; la insignia tiene que ser **inequívoca**.

**3. Son opuestos geométricos complementarios, y eso es mejor que ser parecidos.**

| | Insignia del capitán | Logo El Haz |
|---|---|---|
| Forma | Cerrada, contenedora | Abierta, sin contorno |
| Simetría | Radial, centrada | Bilateral con corte asimétrico |
| Dirección | Ninguna: está quieta | Descendente: cae |
| Naturaleza | Un objeto que se tiene | Un fenómeno que pasa |
| Color dominante | Dorado sobre negro | Verde sobre negro |

Uno es **la cosa**; el otro es **lo que la ilumina**. No compiten por el mismo lugar en la cabeza de nadie.

### Lo que sí comparten

- **El Dorado Capitán `#F5A623`**, exactamente el mismo hex. Es el hilo.
- **Las esquinas vivas.** El hexágono de la insignia tiene un redondeo de 2 dp mínimo; el logo, cero. Los dos son objetos de canto duro en un sistema de interfaz redondeada (§10).
- **El lado plano arriba.** El hexágono es flat-top; el cabezal del reflector es una horizontal plena. Los dos apoyan sobre una línea recta arriba, y eso hace que se vean bien en una misma composición.

### La regla de composición

En cualquier pieza donde convivan —la Semana 4 de la campaña, la tarjeta que genera la app, el kit de bienvenida—:

- **El haz ilumina la insignia, nunca al revés.** Si están en el mismo eje vertical, el logo va arriba y la insignia abajo, dentro del cono. Es la única composición donde se pueden acercar a menos de 2X.
- Si están en la misma línea horizontal, separación mínima **2X** entre la caja de tinta del logo y el hexágono.
- **Nunca superpuestos.** Nunca el logo adentro del hexágono. Nunca el hexágono usado como contenedor del isotipo.

---

## 6. Sistema de variantes

| Archivo | Qué es | Cuándo se usa |
|---|---|---|
| `logo-primary.svg` | Lockup horizontal con el plato `#0A0A0A` incluido, wordmark apoyado en la base del haz. 492 × 148 | **La versión por defecto.** Presentaciones, portada de deck, pantalla de bienvenida, prensa, firma de video. Trae el fondo porque el logo está definido contra el negro: entregarlo suelto invita a ponerlo sobre cualquier cosa. |
| `logo-horizontal.svg` | El mismo lockup sin plato, recortado a la tinta, alineado por centros y con el símbolo más chico. 306 × 65 | **El archivo de trabajo.** Barras de navegación web, headers, pies de página, membretes, sponsorships. Es el que se usa cuando el alto es lo que escasea. |
| `logo-stacked.svg` | Símbolo arriba, wordmark abajo. 164 × 195 | Avatares de redes, merchandising, sellos, banderines, la tarjeta 1080×1920 que genera la app, cualquier caja más alta que ancha. |
| `isotype.svg` | Solo el símbolo. 64 × 64 | Favicon, avatar chico, marca de agua, sello sobre foto, ícono de notificación, watermark de las fotos del partido. **Cuando la marca ya está establecida en el contexto.** |
| `app-icon.svg` | 1024 × 1024, fondo a sangre | App Store, Play Store, y como fuente de todos los tamaños derivados (§9). |
| `logo-mono-dark.svg` | Una tinta `#0A0A0A` | Fondos claros, facturas, notas de prensa, sellado en seco, grabado láser, tampografía, prensa en blanco y negro. |
| `logo-mono-light.svg` | Una tinta `#F5F5F5` | Fondos oscuros de una sola tinta, **sobre fotografía con scrim ≥ 60%**, bordado sobre tela oscura, serigrafía a una tinta. |
| `logo-store-lockup.svg` | Horizontal + sufijo "App". 358 × 65 | **Solo** ficha de App Store y Play Store, contratos, facturas, pie legal. |

### Builds que no son archivos pero están especificados

**Build a color para fondo claro.** No hay archivo porque es un cambio de dos colores sobre `logo-horizontal.svg`. `#1DB954` sobre `#F5F5F5` da 2,37:1 y `#F5A623` da 1,86:1: los dos son ilegibles en claro. Los reemplazos son los que ya usa el UI kit en su tema claro:

```bash
sed -e 's/#1DB954/#0F7A35/g' -e 's/#F5A623/#8F5A00/g' -e 's/#F5F5F5/#0A0A0A/g' \
    logo-horizontal.svg > logo-horizontal-light.svg
```

**Build "sello" para tamaños extremos.** Por debajo de 16 px de alto (o 5 mm impresos, o cualquier bordado), el corte central de 4u ya no se sostiene. Se fusionan las dos mitades del haz en un solo trapecio y se conserva el cabezal:

```xml
<path d="M20 6 L44 6 L47 14 L17 14 Z"/>
<path d="M23 18 L41 18 L56 58 L8 58 Z"/>
```

La silueta es idéntica; se pierde solo el detalle interno. Es la degradación honesta y es una unión booleana de un clic, no un rediseño.

**Capa monocroma de Android 13+** (íconos temáticos / Material You). El sistema pide un glifo de un solo color sobre transparencia: se usa la geometría del símbolo de `logo-mono-light.svg`, sin wordmark y sin el degradado del app icon, dentro del área segura de §9.

---

## 7. Área de protección y tamaños mínimos

### 7.1 Área de protección

**X = el alto del cabezal del reflector = 8u de la grilla de 64 = 15,4% del alto del símbolo.**

**El área de protección es 2X en los cuatro lados**, medida desde la caja de tinta del lockup completo (no desde el borde del archivo). En números redondos: **2X ≈ 31% del alto del símbolo**.

Regla de bolsillo para quien no tenga la grilla a mano: **poné dos cabezales de reflector alrededor del logo. Eso es el aire.**

Valores concretos por variante:

| Variante | X | Área de protección |
|---|---|---|
| `logo-primary` (símbolo a 91 px de alto) | 14 px | 28 px — ya viene aplicada en el artboard |
| `logo-horizontal` (símbolo a 65 px) | 10 px | 20 px |
| `logo-stacked` (símbolo a 130 px) | 20 px | 40 px |
| `isotype` (símbolo a 52 px en la grilla de 64) | 8 px | 16 px |

Dentro del área de protección no entra nada: ni texto, ni la insignia del capitán, ni el borde de la tarjeta, ni un botón, ni el corte de una foto. La única excepción es la composición del cono iluminando la insignia descrita en §5.

### 7.2 Tamaños mínimos en pantalla

| Variante | Mínimo absoluto | Recomendado | Qué se rompe justo abajo del mínimo |
|---|---|---|---|
| Isotipo | **16 px de alto** | 20 px | A 16 px el corte central mide 1,23 px y el aire del cabezal otro tanto: es el último tamaño donde el ojo separa las tres masas. A 14 px se fusionan y hay que pasar al build "sello". |
| Horizontal | **96 px de ancho** | 120 px | A 96 px la altura de mayúscula del wordmark queda en 13,8 px. Abajo de eso Archivo Black cierra contraformas y "Fulbito" se lee como una barra. |
| Apilado | **72 px de ancho** | 96 px | A 72 px la mayúscula queda en 13,9 px, mismo límite. |
| Lockup de tienda | **200 px de ancho** | 240 px | A 200 px el sufijo "App" queda en 12,3 px. Abajo de eso se convierte en pelusa gris. |
| Primario | **240 px de ancho** | 320 px | Trae el aire adentro: por debajo de 240 el plato negro empieza a comerse más superficie de la que aporta. |

**El número duro:** por debajo de **16 px de alto** el símbolo tal como está dibujado deja de leerse y hay que usar el build "sello".

### 7.3 Tamaños mínimos impresos

| Aplicación | Mínimo | Motivo |
|---|---|---|
| Isotipo, offset / digital | **5 mm de alto** | El corte queda en 0,38 mm, por encima del límite práctico de 0,1 mm |
| Isotipo, serigrafía | **7 mm de alto** | La serigrafía necesita 0,5 mm de aire para no empastar |
| Isotipo, bordado | **16 mm de alto** | El bordado necesita ~1,2 mm de aire entre masas. Por debajo de 16 mm va el build "sello" |
| Isotipo, vinilo de corte | **12 mm de alto** | Punta de la cuña derecha: abajo de 12 mm el pico se levanta al pelar |
| Horizontal | **30 mm de ancho** | Deja la mayúscula en 4,3 mm ≈ 12 pt |
| Apilado | **20 mm de ancho** | Deja la mayúscula en 3,9 mm ≈ 11 pt |

---

## 8. Paleta aplicada al logo

### 8.1 Qué color va sobre qué fondo

| Fondo | Cabezal | Haz | Wordmark | Archivo |
|---|---|---|---|---|
| Negro Noche `#0A0A0A` y superficies dark del UI kit | `#F5A623` | `#1DB954` | `#F5F5F5` | `logo-primary` / `logo-horizontal` |
| Gris Cemento `#2C2C2C` y superficies elevadas | `#F5A623` | `#1DB954` | `#F5F5F5` | `logo-horizontal` |
| Blanco Línea `#F5F5F5` y fondos claros | `#8F5A00` | `#0F7A35` | `#0A0A0A` | build claro (§6) |
| Fotografía | — | — | — | `logo-mono-light` sobre scrim negro ≥ 60% |
| Una tinta clara | `#F5F5F5` | `#F5F5F5` | `#F5F5F5` | `logo-mono-light` |
| Una tinta oscura | `#0A0A0A` | `#0A0A0A` | `#0A0A0A` | `logo-mono-dark` |
| **Verde `#1DB954`** | **PROHIBIDO** | | | ver §10.1 |

### 8.2 Ratios de contraste (WCAG 2.1, calculados)

| Par | Ratio | Veredicto |
|---|---|---|
| `#F5F5F5` sobre `#0A0A0A` | **18,16:1** | El wordmark en dark. AAA con margen enorme |
| `#F5A623` sobre `#0A0A0A` | **9,77:1** | El cabezal en dark. AAA |
| `#1DB954` sobre `#0A0A0A` | **7,66:1** | El haz en dark. AAA para texto grande, AA para chico |
| `#22C860` sobre `#0A0A0A` | **8,96:1** | El haz con el matiz recomendado. Mejor que el actual |
| `#F5A623` sobre `#2C2C2C` | **6,89:1** | Cabezal sobre superficie elevada. AA |
| `#1DB954` sobre `#2C2C2C` | **5,40:1** | Haz sobre superficie elevada. AA |
| `#0A0A0A` sobre `#F5F5F5` | **18,16:1** | Mono oscuro en claro |
| `#0F7A35` sobre `#F5F5F5` | **5,00:1** | Haz del build claro. AA |
| `#8F5A00` sobre `#F5F5F5` | **5,31:1** | Cabezal del build claro. AA |
| `#1DB954` sobre `#F5F5F5` | **2,37:1** | **FALLA.** Por eso existe el build claro |
| `#F5A623` sobre `#F5F5F5` | **1,86:1** | **FALLA feo.** El dorado sobre blanco es invisible |

Un logo no está obligado por WCAG (no es texto de interfaz), pero un logo que no llega a 3:1 no se ve, y "no se ve" no es un criterio de accesibilidad: es un criterio de que funcione. Todas las combinaciones aprobadas están por encima de 5:1.

### 8.3 Efectos

**El logo base no lleva ninguno.** Sin glow, sin degradado, sin sombra, sin bisel.

El único degradado del sistema está en `app-icon.svg`: un radial verde al 16% de opacidad que baja a 0, simulando la luz del reflector sobre el tile. Está aislado en un `<defs>`, marcado como borrable en el propio archivo y **el ícono funciona plano sin él** — es lo primero que hay que sacar para el build monocromo de Android, para impresión y para cualquier versión a una tinta.

Regla: **si un efecto no sobrevive a 24 px y a una tinta, no puede ser parte de la identidad.** Puede ser parte de una pieza. El `glow.primary` del UI kit puede aparecer detrás del logo en una animación de splash; no puede aparecer en el archivo del logo.

---

## 9. Comportamiento como app icon

`app-icon.svg` es 1024 × 1024, fondo `#0A0A0A` a sangre, sin transparencia. El símbolo va sobre una grilla de 560 (escala 8,75) centrado en 512, 512.

**Caja del símbolo:** 420 × 455 px · x 302..722 · y 284,5..739,5.
**Radio máximo del símbolo desde el centro del tile: 309,6 px** (lo dan las dos esquinas inferiores del haz). Ese número es el que gobierna todo lo que sigue.

### iOS — squircle

iOS aplica una máscara de esquina continua (radio ≈ 22,4% del lado) sobre el tile completo. Con el símbolo a 309,6 px de radio contra un semilado de 512, **no hay ni un píxel de tinta cerca de las esquinas**: la máscara solo recorta fondo negro. El resultado es un tile negro con la luz al medio y ninguna sorpresa.

**Build solo-iOS:** como iOS no tiene máscara circular, el símbolo puede subir a grilla 700 (`translate(205,205) scale(10.9375)`, símbolo de 525 × 569, 51% × 56% del tile), que se ve bastante más presente en la grilla de aplicaciones. Está anotado en el propio SVG. **No usar ese valor en el build de Android.**

### Android — adaptive icon

Canvas de 108 dp con los 18 dp exteriores de cada lado reservados para máscara y paralaje; Google recomienda que el contenido clave viva dentro de un **círculo de 66 dp**.

- **Capa de fondo:** `#0A0A0A` plano, a sangre en los 108 dp. **Plano y no el degradado**: los launchers que hacen paralaje deslizan la capa de fondo respecto de la de primer plano, y un radial deslizándose deja ver que la "luz" no está pegada al reflector. El degradado se borra en esta capa.
- **Capa de primer plano:** el símbolo solo, sobre transparencia, en la misma posición y escala que en el archivo de 1024.
- **La cuenta:** 309,6 px de radio sobre 1024 = 30,2% del canvas → sobre 108 dp da **32,65 dp de radio, o sea 65,3 dp de diámetro contra los 66 dp del círculo garantizado.** Entra, con 0,7 dp de margen. Está diseñado al límite a propósito, para que el glifo no quede diminuto. Si el equipo quiere holgura, bajar la grilla de 560 a 530 deja el diámetro en 61,8 dp y pierde un 5% de tamaño de glifo.
- **Máscara circular:** no corta nada. Los cuatro puntos extremos —las dos esquinas de abajo del haz y las dos de arriba del cabezal— quedan adentro.
- **Máscara squircle / redondeada / gota:** todas son más generosas que el círculo. Si entra en el círculo, entra en todas.
- **Capa monocroma (Android 13+):** el símbolo de una tinta, sin degradado, misma caja. El sistema lo tiñe.

### A 29 × 29 px (Ajustes de iOS, el peor caso)

El corte central mide 35 px sobre 1024, o sea **3,42% del lado**. A cada densidad:

| Densidad | Tamaño real | Corte central | Lectura |
|---|---|---|---|
| @1x (29 px) | 29 px | 0,99 px | El corte se cierra. Queda la silueta: barra + cono. **Sigue siendo el logo.** |
| @2x (58 px) | 58 px | 1,98 px | El corte se lee limpio |
| @3x (87 px) | 87 px | 2,97 px | Nítido |

Todos los dispositivos que iOS soporta hoy son @2x o @3x, así que en la práctica el corte sobrevive siempre; el @1x solo aparece en herramientas viejas. Y cuando se cierra, no se rompe nada: colapsa al build "sello", que es la misma silueta. **Eso es lo que hace que el símbolo aguante: su degradación es su propia versión reducida, no una versión rota.**

---

## 10. Usos prohibidos

**1. Nunca sobre fondo verde, de ningún verde.** Sobre `#1DB954` el haz desaparece y el tile se convierte en la papa verde de Spotify con una barra naranja encima. Es la única prohibición que además es estratégica: todo §2 se cae si alguien hace esto una sola vez en un anuncio.

**2. Nunca un app icon con fondo verde ni con fondo claro.** El tile es negro. La inversión de figura/fondo respecto de Spotify es la mitad de la diferenciación y vive entera en el ícono, que es donde la comparación ocurre.

**3. Nunca redondear las esquinas del símbolo.** El canto vivo es lo que lo despega del lenguaje de la interfaz (`radius.lg` 16, botones pastilla) y lo que lo aleja del vocabulario de Spotify. Un haz con esquinas de 4 px es un chicle.

**4. Nunca cerrar el corte central** salvo en el build "sello" por debajo de los mínimos de §7. Sin corte no hay dos equipos: es medio significado tirado a la basura por comodidad.

**5. Nunca rotar ni espejar verticalmente.** La luz baja. Un haz que sube es un reflector apuntando al cielo, que es lo que hacen los estadios cuando el partido terminó.

**6. Nunca estirar, condensar ni escalar en un solo eje.** Las dos mitades tienen la misma área por construcción; una escala no proporcional rompe la relación y de paso convierte a Archivo Black en otra tipografía.

**7. Nunca el dorado en el haz ni el verde en el cabezal.** El cabezal es la fuente y el haz es la consecuencia. Invertidos, el símbolo dice que la luz produce la lámpara.

**8. Nunca el isotipo enteramente dorado.** Un símbolo todo `#F5A623` se lee como insignia de capitán y le roba el significado al único elemento que en este sistema significa jerarquía.

**9. Nunca el logo adentro del hexágono del capitán**, ni el hexágono como contenedor, marco o placa del logo. Ver §5.

**10. Nunca sobre fotografía sin scrim de al menos 60% de negro.** Las fotos de cancha con luz de sodio tienen manchas amarillas grandes: el cabezal dorado se pierde adentro de una y el logo queda descabezado.

**11. Nunca glow, sombra, bisel, degradado ni contorno agregado.** El único degradado autorizado está en el app icon y es borrable. Un contorno sobre el logo aparece siempre por el mismo motivo —lo pusieron sobre un fondo que no correspondía— y la solución es cambiar el fondo o la variante, no agregar el contorno.

**12. Nunca agregar nada dentro del área de protección:** ni "App", ni un eslogan, ni ".com", ni "Córdoba", ni una pelota, ni un año, ni la insignia. Si hace falta un descriptor, existe el lockup de tienda y no existe nada más.

**13. Nunca recomponer el lockup a ojo.** Los tres lockups tienen relaciones fijas (base del wordmark en la base del haz, separaciones de 2X y 1,5X). Un lockup armado a mano en Canva no es el logo.

**14. Nunca el wordmark en otra tipografía**, y en particular nunca en Bebas Neue porque "es la fuente de la marca". Bebas es la fuente de la **campaña**. El wordmark es Archivo Black y es un dibujo, no un texto que se vuelve a tipear.

---

## 11. Cómo convive con el resto del sistema

### 11.1 Con el UI kit NOCTURNA

**Dónde aparece el logo dentro de la app: casi en ningún lado.** Splash de arranque (isotipo a 96 dp, animación de encendido opcional), Ajustes → Acerca de (horizontal a 140 dp), y la tarjeta 1080 × 1920 que genera "Compartir mi ficha" (apilado a 164 px en el margen inferior). Nada más. La app bar lleva el nombre de la pantalla, como especifica el kit: una app que te muestra su logo en cada pantalla es una app que no confía en que sepas dónde estás.

**El verde es el mismo token, siempre.** El haz usa `color.primitive.green.500`. Si ese token se mueve a `#22C860`, el logo se mueve el mismo día. Nunca uno sin el otro: dos verdes casi iguales en la misma pantalla se leen como un bug de render, no como dos marcas.

**El logo es el único objeto de canto vivo del sistema.** Todo el kit es redondeado —tarjetas a 16, botones pastilla, chips, avatares—. El logo no. Es deliberado y hay que defenderlo en revisión: es lo que hace que se lea como marca y no como un componente más de la interfaz. **No aplicarle radio para "que combine".**

**El dorado se cuenta junto.** El kit limita el dorado al 5% de los píxeles de una pantalla. En la única pantalla donde el logo aparece a tamaño grande —el splash— no hay ninguna insignia de capitán, así que el 15,7% de dorado del símbolo no compite con nada. En Acerca de, el cabezal a 140 dp de ancho aporta menos del 1% de la pantalla. La regla del 5% se mantiene sin excepciones.

### 11.2 Con la campaña 100 Capitanes

La campaña tiene cuatro semanas con temperaturas visuales distintas. El logo entra escalonado:

| Semana | Presencia del logo | Por qué |
|---|---|---|
| **1 — Misterio** | **Ninguna.** Ni el isotipo. | La semana 1 no revela qué es. Un logo es una respuesta y todavía no hay pregunta hecha. Lo que sí se puede usar son los puntos de luz de reflector que ya están en el brief: **es el mismo mundo visual del símbolo, sembrado antes de mostrarlo.** Cuando el logo aparezca en la semana 2, va a parecer que estuvo ahí desde el principio. |
| **2 — Convocatoria** | `logo-mono-light` al pie, últimos 1,5 s de cada video | El verde entra fuerte en la semana 2, pero la marca todavía se presenta sobria. Mono blanco. |
| **3 — Urgencia** | `logo-horizontal` a color | Ya hay reconocimiento. El logo a color al lado del rojo de urgencia funciona porque son dos zonas distintas de la pieza y el rojo nunca lo toca. |
| **4 — Cierre** | `logo-primary` o apilado, junto a la insignia dorada | La semana dorada. Regla de §5: si comparten eje, el logo arriba y el hexágono abajo, dentro del cono. Si comparten línea, 2X de separación. |

**El puente concreto:** la campaña enseña durante cuatro semanas que "negro + verde + luz de cancha + un número dorado" quiere decir Fulbito. El logo es esas cuatro cosas comprimidas en 48 × 52 unidades. El capitán que se descarga la app en la semana 5 ya vio el símbolo cien veces sin saber que lo estaba viendo.

**Lo que hay que vigilar:** el equipo de contenido va a querer poner el logo en todas las piezas desde el día uno, porque es lo que se hace. Hay que bancar el vacío de la semana 1. Es la decisión de marca más incómoda de esta propuesta y es la que más rinde.

---

## 12. Antes de producción

1. **Vectorizar el wordmark.** Los SVG usan `<text>` con `@import` de Google Fonts: rinden bien abiertos en un navegador y **no rinden en Figma, en Illustrator, ni dentro de un `<img>`**, ni en ningún sistema sin red. Antes de cualquier uso real hay que convertir a curvas en Figma o Illustrator y aplicar los tres pares de kerning de §4.3. Después de eso los artboards se recortan de nuevo al ancho de tinta real (los actuales están calculados sobre las métricas del TTF y coinciden dentro de 0,2 px, pero el corte definitivo lo da el archivo vectorizado).
2. **Búsqueda de antecedentes.** El cono de luz es una forma que también usan marcas de iluminación, de podcast y de "spotlight". Hay que hacer búsqueda en INPI, clases **9** (software) y **41** (actividades deportivas), antes de registrar. Es el riesgo legal real de esta dirección y no lo puede resolver el diseño.
3. **Decidir el matiz** (§2.3). La recomendación es `#22C860` en el logo antes del envío a tiendas.
4. **Probar el ícono en launchers reales.** Pixel stock, Samsung One UI y Xiaomi HyperOS aplican máscaras distintas. La cuenta de §9 dice que entra; hay que verlo.
5. **Exportar la matriz de PNG/ICO**: 16, 32, 48, 64, 128, 180, 192, 512, 1024, más el `.ico` multicapa del favicon.
6. **Versión animada del splash**: el cabezal aparece, el haz "prende" de arriba hacia abajo en 320 ms con la curva `emphasized` del kit, el corte se abre al final. Un solo gesto, sin rebote.

---

## 13. Contras honestos

**1. El símbolo es abstracto y no dice "fútbol" solo.** Sin el wordmark al lado, un reflector es un reflector. Eso significa que el isotipo suelto no se puede usar hasta que la marca tenga reconocimiento, y construir ese reconocimiento cuesta plata y meses. Un logo con una pelota adentro habría sido comprensible desde el día cero y olvidable desde el día uno. Elegí lo segundo a sabiendas, pero **es una apuesta con un costo de medios asociado, no una decisión gratis**.

**2. El cono de luz no es una forma virgen.** Está en marcas de iluminación, de proyectores, de podcasts, de "descubrimiento". No hay colisión conocida en fútbol ni en software deportivo, pero es un territorio con vecinos, y el registro puede volver con observaciones. Ver §12.2.

**3. Un ícono de tile negro puede desaparecer.** La inversión figura/fondo que nos salva de Spotify tiene su cuenta: sobre un fondo de pantalla oscuro, en un launcher con íconos temáticos apagados, el tile negro se funde con el wallpaper mucho más que uno de color. Se pierde presencia en la grilla de aplicaciones, que es donde se pelea la tasa de reapertura. Es un intercambio real: **diferenciación de marca a cambio de saliencia en el home**. Si en las métricas de retención esto pesa, la respuesta correcta no es poner fondo verde: es un tile con un negro un poco levantado (`#121513`, `surface.1`) que separa del wallpaper sin volverse una app de música.

**4. El dorado a tamaño chico se ensucia.** Con el símbolo a 16 px de alto el cabezal mide 9,2 × 2,5 px: una barra de dos o tres píxeles. En pantallas de baja densidad, con subpixel antialiasing y con el verde pegado abajo, ese naranja vira a un marrón indistinto. El detalle que carga toda la jerarquía del símbolo es el primero que se degrada, y en el build "sello" impreso a una tinta directamente deja de ser un color propio.

**5. El argumento de las áreas iguales es del diseñador, no del usuario.** Que las dos mitades midan 580u² cada una es una construcción rigurosa y es invisible. Nadie va a mirar el logo y pensar "equipos parejos". Sirve para que el símbolo esté bien hecho y para defender la propuesta en una reunión; **no sirve como mensaje de lanzamiento y no hay que ponerlo en un posteo.** Si aparece en un carrusel de "el significado de nuestro logo", queda pretencioso, que es exactamente lo que el territorio pidió evitar.

**6. La caja baja va a chocar contra la campaña.** Toda "100 Capitanes" es Bebas Neue en versalitas condensadas a 200 px. Un wordmark ancho en caja baja al pie de esas piezas se ve tranquilo, casi tímido, al lado del resto. Está buscado —es la voz de la marca contra el volumen de la campaña— pero **el equipo de growth va a pedir que el logo "grite más"** y hay que tener el argumento listo cada vez.

**7. El corrimiento de matiz tiene un costo que no es cero.** `#22C860` obliga a un momento de desalineación entre las piezas de campaña ya producidas y el producto. Es imperceptible (ΔE 5,68 con seis horas de distancia entre una y otra) pero existe, y alguien del equipo lo va a notar en una revisión y va a preguntar. Vale la pena tenerlo escrito antes de que pase.

**8. El territorio sigue siendo el más seguro de los tres.** El UI kit ya lo dijo de sí mismo y aplica igual acá: negro, verde y luz de cancha es la zona de confort del diseño deportivo de 2026. Este símbolo es la parte de NOCTURNA que más se aleja de esa zona —no hay pelota, no hay escudo, no hay condensada— y aun así el conjunto va a leerse como "app deportiva premium bien hecha" antes que como "no vi nada igual". **Si el objetivo estratégico es que hablen del diseño, esta no es la dirección; si es que el capitán reconozca la app tres segundos después de ver el Story, es imbatible.**

---

## 14. Archivos de esta dirección

| Archivo | Contenido |
|---|---|
| `README.md` | Este documento |
| `logo-primary.svg` | Lockup principal con plato negro · 492 × 148 |
| `logo-horizontal.svg` | Lockup horizontal recortado a tinta · 306 × 65 |
| `logo-stacked.svg` | Lockup apilado · 164 × 195 |
| `isotype.svg` | Símbolo solo · 64 × 64 |
| `app-icon.svg` | Ícono de aplicación · 1024 × 1024 |
| `logo-mono-dark.svg` | Una tinta oscura · 306 × 65 |
| `logo-mono-light.svg` | Una tinta clara · 306 × 65 |
| `logo-store-lockup.svg` | Suplementario, con sufijo "App" · 358 × 65 |
| `prompts-exploracion.md` | Seis prompts de imagen para explorar variantes antes de cerrar |

**Dependencias:** Archivo Black (Google Fonts, `@import` en cada SVG). Para el lockup de tienda, además Archivo 600. Ambas quedan como dependencia solo hasta la vectorización (§12.1); después, ninguna.
