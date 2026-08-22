# CANCHA CLARA
### Dirección de UI Kit 03 — FulbitoApp
> UI Designer · NEXUS · en coordinación con Brand Guardian
> Estado: propuesta cerrada, lista para handoff a Flutter

---

## 1. Concepto en una frase

**Una app que se lee de un vistazo, resuelve en tres toques y se calla la boca.**

### Fundamento

El capitán no abre FulbitoApp para disfrutarla. La abre parado en la vereda de la cancha, a las 21:47, con el teléfono en una mano y el bolso en la otra, porque falta uno y hay que reacomodar los equipos antes de que el turno arranque. En ese momento no le importa que la app sea linda. Le importa que **la información que necesita esté arriba de todo, grande, y que el botón que resuelve el problema sea el único botón de color en la pantalla**.

Cancha Clara parte de ahí. Fondo claro casi blanco, mucho aire, un solo acento —**azul eléctrico**— que nunca decora: sólo marca lo accionable. Tipografía grande, jerarquía brutal: en cada pantalla hay una cosa que es tres veces más grande que el resto, y esa cosa es la respuesta a la pregunta que trajo al capitán acá. ¿Cuándo jugamos? **VIERNES 21:00**. ¿Cuántos somos? **9 DE 10**. ¿Cuánto debo? **$4.500**.

Lo que siente el usuario al abrirla: alivio. No hay nada que interpretar. No hay una foto de pasto de stock, no hay un degradado, no hay un banner. Hay un dato enorme, dos o tres datos chicos que lo respaldan, y un botón. Es la misma sensación que da MercadoPago cuando escaneás un QR y pagás sin pensar, o Waze cuando te dice "girá a la derecha" y nada más. La app no compite por atención: **la devuelve**.

Encaja con el capitán cordobés por tres razones concretas:

1. **Es early adopter de apps utilitarias, no de apps de fútbol.** Su estándar de calidad ya está seteado por MercadoPago, Sofascore y Waze —herramientas que resuelven rápido—, no por FIFA Mobile. Una app que se le parece a esas hereda su credibilidad.
2. **Usa el teléfono en condiciones malas.** De noche con reflectores, a pleno sol de enero a las 18:00, con la mano mojada, con una sola mano, con guantes de arquero a medio sacar. El fondo claro con texto casi negro es la combinación que mejor sobrevive a la luz directa y al brillo automático al máximo.
3. **Odia lo repetitivo.** Cada elemento decorativo es un milisegundo de decodificación que se paga 30 veces por semana. Sacarlos no es minimalismo estético: es una decisión de eficiencia acumulada.

**La regla que ordena todo el sistema:** el azul sólo aparece donde el dedo puede tocar y algo pasa. Si algo es azul, se toca. Si no se toca, no es azul. Esa sola regla hace que el capitán pueda operar la app sin leer.

---

## 2. La apuesta

**Por qué una app de fútbol podría deliberadamente no parecer una app de fútbol.**

Toda app de fútbol amateur del mercado se ve igual: verde pasto, dark mode, números tipo camiseta, texturas de césped, iconografía de pelota. Es la estética por default de la categoría. Y la estética por default de una categoría comunica una cosa sola: *"soy una más"*.

Cancha Clara apuesta a lo contrario, y la apuesta tiene una base concreta: **FulbitoApp no compite contra otras apps de fútbol. Compite contra el grupo de WhatsApp.** Ese es el producto que hay que desplazar. Y WhatsApp no gana por lindo: gana porque ya está abierto, porque no hay que aprender nada y porque todos están adentro. Para ganarle no alcanza con ser más linda. Hay que ser **notoriamente más rápida**, y la velocidad tiene que ser visible en el primer segundo, antes de que el capitán la pruebe.

Qué gana la app con no parecer una app de fútbol:

- **Se posiciona como herramienta, no como entretenimiento.** Una herramienta se abre 30 veces por semana sin culpa. Un entretenimiento compite con Instagram y pierde.
- **Envejece bien.** La estética deportiva premium (neones, degradados, dorados) tiene fecha de vencimiento visible: se lee "2024". Un sistema tipográfico y neutro se lee bien en 2031.
- **Baja la barrera de entrada de los que no son el capitán.** El capitán ama el fútbol; los otros nueve del grupo, a veces, sólo quieren saber la hora y el monto. Una interfaz sobria no los obliga a entrar en un mundo temático para responder "voy".
- **Escala a mercado.** Si mañana la app agrega pádel, básquet o vóley —el mismo problema de coordinación, otro deporte—, un sistema que no está tatuado con pasto verde migra sin rediseño.
- **Se diferencia en la App Store por contraste.** En una grilla de screenshots donde todo es verde y negro, una app blanca con un azul eléctrico es la única que se ve distinta.

El fútbol no desaparece: aparece en **el contenido**, no en el envase. En las fotos que suben los jugadores, en los nombres de los equipos, en el copy cómplice ("faltan 2 y el Colo todavía no contestó"), en las estadísticas. El envase se corre del camino para que eso brille.

---

## 3. Paleta

### 3.1 Acento — el único color de la interfaz

| Nombre | Hex | Rol | Dónde se usa |
|---|---|---|---|
| Azul Eléctrico | `#1B4DFF` | Acento primario. Único color saturado del sistema. | Botón primario, links, ícono activo del bottom nav, ring de foco, barra de progreso, badge de capitán, checkbox marcado. |
| Azul Presionado | `#1339CC` | Estado pressed y hover del acento. | Fondo de botón primario al tocar. |
| Azul Hundido | `#0E2B99` | Texto de acento sobre fondos tintados. | Texto azul sobre `Azul Tinta`. |
| Azul Tinta | `#E8EDFF` | Fondo tintado, 8% de presencia. | Fondo de botón terciario activo, fondo de chip seleccionado en filtros, fondo de fila resaltada. |
| Azul Velo | `#F3F6FF` | Tinte mínimo. | Fondo de sección de IA, hover de fila en lista. |

**Por qué azul eléctrico.** Es el color que más lejos está de las otras dos direcciones (terracota y verde neón) sin caer en un pastel. Tiene tres propiedades duras que sirven acá: (a) es el color más legible sobre blanco a plena luz después del negro, porque su luminancia es baja y su croma alto; (b) culturalmente lee "acción / sistema / confiable" —es el azul de los links, de los bancos, de los botones de pago— y eso baja la fricción psicológica del "Confirmar $4.500"; (c) no pertenece a ningún club de Córdoba de forma inequívoca (ver *Contras* §12 para el riesgo real de esto).

### 3.2 Neutrales — la escala Cal

Se llama Cal por la cal que marca las líneas de la cancha. En Cancha Clara **los neutrales hacen el 90% del trabajo visual**, así que la escala está construida con temperatura fría constante (matiz ~218°, saturación 6–14%) para que armonice con el azul y nunca se vea sucia al lado de blanco puro.

| Token | Hex | Rol | Dónde se usa |
|---|---|---|---|
| `cal.0` | `#FFFFFF` | Blanco puro | Superficie de tarjetas, sheets, campos de texto, bottom nav. |
| `cal.25` | `#FAFBFC` | Fondo de app | Scaffold. Un punto por debajo del blanco para que las tarjetas blancas floten sin sombra. |
| `cal.50` | `#F4F6F8` | Superficie hundida | Fondo de campos deshabilitados, skeletons, tracks de slider. |
| `cal.100` | `#EAEDF1` | Relleno neutro | Chips no seleccionados, avatar placeholder, separador grueso. |
| `cal.200` | `#DCE0E7` | Borde estándar | Bordes de tarjeta, inputs, divisores de 1px. |
| `cal.300` | `#C3C9D4` | Borde fuerte | Borde de campo de texto, borde de tarjeta en pressed. |
| `cal.400` | `#98A2B3` | Borde de control / deshabilitado | Borde de botón secundario, placeholder, íconos y textos deshabilitados. **Nunca texto informativo.** |
| `cal.500` | `#6B7688` | Texto terciario / borde alto contraste | Metadatos, timestamps, contadores. Todos los bordes cuando `highContrast` está activo. Contraste 4.6:1, apenas AA — usar 13sp o más. |
| `cal.600` | `#57616F` | Texto secundario | Subtítulos, descripciones, labels de campo. |
| `cal.700` | `#3E4653` | Íconos | Íconos inactivos del nav, íconos de lista. |
| `cal.800` | `#2A303A` | Texto de énfasis medio | Nombres de jugador en listas densas. |
| `cal.900` | `#191D24` | Superficie oscura | Fondo de botón secundario invertido, tooltip, snackbar. |
| `cal.1000` | `#0F1115` | Texto primario / tinta | Todo el texto que importa. Fondo del modo oscuro. |

Trece pasos, no diez: la diferencia entre `cal.500` y `cal.600` es lo que separa un metadato de un subtítulo, y en una app donde no hay color esa diferencia es toda la jerarquía secundaria que tenemos.

### 3.3 Semánticos

Los semánticos existen para estados, no para adornar. Cada uno tiene una variante **texto/borde** (contraste alto, para tipografía e íconos) y una variante **relleno** (para fondos de banner y badges), porque un solo hex no puede hacer las dos cosas y pasar WCAG.

| Nombre | Hex texto | Hex relleno | Rol | Dónde se usa |
|---|---|---|---|---|
| Confirmado | `#0E7A4B` | `#E3F5EC` | Éxito | "9 confirmados", pago acreditado, check de asistencia. |
| Cortó | `#C2183C` | `#FDE8EC` | Error | Se bajó un jugador, pago rechazado, validación de formulario. |
| Ojo | `#9A5B00` | `#E8A317` / `#FDF0D9` | Advertencia | "Faltan 2 para completar", "vence el pago en 3h", pronóstico de lluvia. |
| Dato | `#00707F` | `#E0F4F6` | Info | Tips de IA, cambios de sede, avisos del sistema. |

**Por qué el verde de éxito no es `#1DB954`.** Ese verde le pertenece a la dirección Nocturna y, además, saturado sobre blanco vibra y compite con el azul. `#0E7A4B` es un verde de bosque que sobre blanco se lee como "confirmado" y nunca como "marca".

**Por qué el error no es `#C8391B`.** El ladrillo es de Potrero. `#C2183C` es un carmín frío que convive con el azul sin pelearse de matiz.

### 3.4 Contraste WCAG — combinaciones críticas verificadas

| Combinación | Ratio | Nivel |
|---|---|---|
| `cal.1000` sobre `cal.0` (texto primario) | **18.9:1** | AAA |
| `cal.1000` sobre `cal.25` (texto sobre scaffold) | **18.2:1** | AAA |
| `cal.600` sobre `cal.0` (texto secundario) | **6.3:1** | AA |
| `cal.500` sobre `cal.0` (texto terciario) | **4.6:1** | AA (al límite — mínimo 13sp) |
| `cal.400` sobre `cal.0` (placeholder) | 2.6:1 | Sólo placeholder/disabled (exento) |
| Blanco sobre Azul Eléctrico (botón primario) | **5.9:1** | AA |
| Azul Eléctrico sobre `cal.0` (links, íconos activos) | **5.9:1** | AA |
| Azul Eléctrico sobre `cal.25` | **5.7:1** | AA |
| Blanco sobre Azul Presionado | **8.5:1** | AAA |
| Azul Hundido sobre Azul Tinta | **9.9:1** | AAA |
| Blanco sobre Confirmado `#0E7A4B` | **5.4:1** | AA |
| Blanco sobre Cortó `#C2183C` | **6.0:1** | AA |
| Blanco sobre Ojo texto `#9A5B00` | **5.4:1** | AA |
| `cal.1000` sobre Ojo relleno `#E8A317` | **8.7:1** | AAA |
| Blanco sobre Dato `#00707F` | **5.8:1** | AA |
| Ring de foco Azul sobre `cal.0` (componente no textual) | **5.9:1** | AA (mínimo 3:1) |

**Sobre los bordes, con honestidad.** Los grises de borde no llegan a 3:1 contra blanco: `cal.200` da 1.3:1, `cal.300` da 1.6:1 y `cal.400` da 2.6:1. WCAG 1.4.11 pide 3:1 para el límite de un componente **cuando ese límite es lo que permite identificarlo**. Acá nunca lo es, y eso es una decisión de diseño explícita, no una excusa:

- Todo campo de texto lleva **label externo permanente** en `cal.600` (6.3:1). El campo se identifica por la etiqueta, no por la caja.
- Todo botón secundario y terciario lleva **texto en `cal.1000`** (18.9:1). El control se identifica por su label.
- El **estado de foco** siempre es un anillo de 2dp en Azul Eléctrico (5.9:1), que cumple 3:1 por sí solo y sin depender del borde.
- Los bordes por default son `cal.300` en inputs y `cal.400` en botones secundarios: lo mínimo para dar forma sin ensuciar el aire.

Y hay una salida de emergencia real: con `MediaQuery.highContrast` activo (Aumentar contraste en iOS, alto contraste en Android), **todos los bordes suben a `cal.500` (`#6B7688`, 4.6:1) y pasan a 2dp**. Es un cambio de dos líneas en el theme y está previsto, no es una promesa.

---

## 4. Modo oscuro

El modo oscuro de Cancha Clara **no es la dirección Nocturna con otro nombre**. Nocturna es dark por identidad: neón, dorado, estadio. Acá el dark es una condición de uso —la cancha a las 23:00, el vestuario, la cama después del partido— y la meta es que se sienta *la misma app con la luz apagada*: mismo aire, mismo layout, misma jerarquía. Nada gana glamour al oscurecerse.

Tres traducciones no obvias:

**1. Las sombras se reemplazan por bordes.** En claro, la elevación se lee por una sombra mínima sobre `cal.25`. En oscuro las sombras no se ven, así que la jerarquía de superficie se hace con **luminancia escalonada + borde de 1px**: fondo `#0F1115`, tarjeta `#15181E` con borde `#252A33`, sheet `#1C2028`. Nunca se usa una tarjeta más oscura que el fondo.

**2. El acento se aclara, no se satura.** `#1B4DFF` sobre negro da 3.1:1 y quema. El acento dark es `#6E8CFF` (6.6:1 sobre el fondo), y el texto adentro del botón primario pasa a ser `#0F1115` en vez de blanco. Es el mismo azul con la luminancia corrida, no otro color: la marca no cambia de humor entre modos.

**3. El aire se mantiene con espaciado, no con relleno.** La tentación en dark es rellenar de superficies grises para "estructurar". Acá se prohíbe: la mayoría de la pantalla sigue siendo fondo desnudo, y los grupos se separan con 32dp de aire, igual que en claro.

| Rol | Claro | Oscuro | Contraste oscuro |
|---|---|---|---|
| Fondo app | `#FAFBFC` | `#0F1115` | — |
| Superficie / tarjeta | `#FFFFFF` | `#15181E` | — |
| Superficie elevada (sheet, menú) | `#FFFFFF` | `#1C2028` | — |
| Borde | `#DCE0E7` | `#252A33` | — |
| Borde fuerte | `#C3C9D4` | `#39404C` | — |
| Texto primario | `#0F1115` | `#F4F6F8` | 17.4:1 |
| Texto secundario | `#57616F` | `#A8B1C0` | 8.7:1 |
| Texto terciario | `#6B7688` | `#8A93A3` | 5.9:1 |
| Deshabilitado | `#98A2B3` | `#5A6272` | 2.8:1 (exento) |
| Acento | `#1B4DFF` | `#6E8CFF` | 6.6:1 |
| Acento presionado | `#1339CC` | `#95AAFF` | 9.0:1 |
| Tinte de acento | `#E8EDFF` | `#1A2140` | — |
| Sobre acento (texto del botón) | `#FFFFFF` | `#0F1115` | 6.6:1 |
| Confirmado | `#0E7A4B` | `#35C98B` | 8.9:1 |
| Cortó | `#C2183C` | `#FF6B85` | 6.9:1 |
| Ojo | `#9A5B00` | `#F5B33C` | 10.3:1 |
| Dato | `#00707F` | `#3FC7D6` | 9.3:1 |

El toggle sigue el sistema operativo por default. No hay switch de tema en onboarding: es una decisión que el capitán ya tomó una vez en su teléfono y no queremos que la vuelva a tomar.

---

## 5. Tipografía

En Cancha Clara **la tipografía es la identidad**. Sacado el color, sacada la textura, sacada la ilustración, lo único que queda para que la app tenga carácter es cómo están dibujadas las letras y cuán violenta es la diferencia de tamaño entre una y otra.

### 5.1 Familias

**Archivo** — display, títulos, UI, cuerpo. Variable 100–900. Google Fonts.

Cuatro razones, en orden de peso:

1. **Es argentina.** Archivo la diseñó Omnibus-Type, foundry de Buenos Aires. En una marca cuya voz declara "Córdoba existe en cada frase", que la tipografía sea rioplatense no es un dato de trivia: es coherencia hasta la última capa. Y es un argumento de venta real frente al cliente sin costar un peso de licencia.
2. **Nació para señalética y prensa impresa.** Es una grotesca de alta legibilidad diseñada para leerse en tamaños chicos con mala impresión *y* en tamaños enormes en un cartel. Ese es exactamente nuestro rango: `11sp` de un overline y `44sp` de un "VIERNES 21:00" que hay que leer a medio metro con el brazo estirado.
3. **Aguanta el peso 800 sin cerrarse.** Muchas grotescas variables se empastan en los pesos altos y a `44sp` con tracking negativo pierden contraforma. Archivo mantiene los ojales abiertos, que es lo que permite el titular grande y compacto del que depende toda la jerarquía.
4. **Tiene versalitas numéricas y figuras tabulares.** Los números son el contenido más importante de esta app —hora, monto, marcador, promedio— y necesitan alinearse en columna sin bailar.

Fallback: `Inter`, `Roboto`, `system-ui`, `sans-serif`.

> Opcional recomendado: para el estilo `display` se puede subir a **Archivo Expanded** (familia hermana en Google Fonts). Gana presencia de cartel en el dato grande sin cambiar de voz tipográfica. No es requisito: el kit está especificado y compila con Archivo sola.

**JetBrains Mono** — datos crudos. 400/500/700. Google Fonts.

Se usa exclusivamente en **bloques de datos tabulares**: la tabla de estadísticas, el desglose de pagos, el marcador histórico, los códigos de invitación. No en títulos, no en cuerpo, no en botones. Es una decisión de significado, no de estética: la monoespaciada le avisa al ojo "esto es un dato exacto, se puede comparar de arriba a abajo". Es el mismo recurso que usa una app de banca para el número de cuenta. Y su presencia mínima —quizás el 3% del texto de la app— agrega la única textura visual del sistema sin romper la calma.

Fallback: `Roboto Mono`, `monospace`.

**No hay tercera familia.** Nada de manuscritas ni display deportivas: en esta dirección serían una mentira sobre lo que la app es.

### 5.2 Escala tipográfica

Escala de razón ~1.25 hacia arriba desde 15sp, truncada a saltos que se distinguen a simple vista. El salto entre `body` (15) y `display` (44) es de casi 3× a propósito: **la jerarquía tiene que resolverse antes de leer**.

| Estilo | Familia | Tamaño | Peso | Line-height | Tracking | Uso |
|---|---|---|---|---|---|---|
| `display` | Archivo | 44sp | 800 | 44sp (1.0) | −1.5% (−0.66) | El dato principal de la pantalla. Uno por pantalla, sin excepción. "VIERNES 21:00", "8.4", "$4.500". |
| `h1` | Archivo | 32sp | 700 | 36sp (1.13) | −1.0% (−0.32) | Título de pantalla cuando no hay dato-héroe. "Estadísticas", "Armar equipos". |
| `h2` | Archivo | 26sp | 700 | 32sp (1.23) | −0.5% (−0.13) | Nombre del equipo en el armado, monto en tarjeta secundaria. |
| `h3` | Archivo | 20sp | 600 | 26sp (1.30) | −0.25% (−0.05) | Encabezado de sección, nombre de jugador en tarjeta destacada. |
| `bodyLarge` | Archivo | 17sp | 400 | 24sp (1.41) | 0 | Texto de lectura en sheets y estados vacíos. |
| `body` | Archivo | 15sp | 400 | 22sp (1.47) | 0 | Cuerpo por default. Nombres en lista, descripciones. |
| `bodyStrong` | Archivo | 15sp | 600 | 22sp (1.47) | 0 | Dentro de body, lo que hay que resaltar. Nombres, montos inline. |
| `caption` | Archivo | 13sp | 400 | 18sp (1.38) | +0.5% (+0.07) | Metadatos, timestamps, ayuda de campo. Color `cal.500` o más oscuro. |
| `overline` | Archivo | 11sp | 700 | 14sp (1.27) | +8% (+0.88), MAYÚSCULAS | Etiqueta de sección, chip de posición, badge de capitán. El único uso de mayúsculas del sistema. |
| `label` | Archivo | 16sp | 600 | 20sp (1.25) | +0.5% (+0.08) | Texto de botones y del bottom nav. |
| `data` | JetBrains Mono | 15sp | 500 | 20sp (1.33) | 0, `tnum` | Celdas de tabla, montos en columna, códigos. |
| `dataLarge` | JetBrains Mono | 22sp | 700 | 26sp (1.18) | −0.5% | Marcador, promedio destacado dentro de tabla. |

**Reglas de aplicación:**
- Nunca dos estilos consecutivos en la misma jerarquía visual: si hay `h2`, el siguiente nivel es `body`, no `h3`. El salto grande es el sistema.
- El `display` es único por pantalla. Si hay dos, alguien se equivocó de pantalla.
- El texto de cuerpo nunca baja de 15sp. Los 13sp de `caption` son el piso absoluto y sólo para información que el capitán puede no leer nunca.
- Mayúsculas sólo en `overline`. En ningún botón, en ningún título.
- `tnum` (figuras tabulares) activado en todo lo que sea número dentro de una lista o tabla, también en Archivo.

---

## 6. Espaciado y grilla

**El aire es el material principal.** En una dirección sin color ni textura, lo único que separa un grupo de información de otro es el vacío entre ellos. Está especificado con la misma precisión que un color.

### 6.1 Escala de espaciado — base 4

| Token | dp | Uso |
|---|---|---|
| `space.0` | 0 | Reset. |
| `space.1` | 2 | Separación óptica entre ícono y su badge. |
| `space.2` | 4 | Interlineado forzado entre dos líneas de la misma unidad (nombre + posición). |
| `space.3` | 8 | Gap entre chips, entre ícono y texto en un botón. |
| `space.4` | 12 | Gap vertical entre ítems de una lista densa. |
| `space.5` | 16 | Padding interno de componentes chicos (chips, campos). |
| `space.6` | 20 | **Padding horizontal de pantalla.** Padding interno de tarjeta. |
| `space.7` | 24 | Gap entre tarjetas hermanas. |
| `space.8` | 32 | **Gap entre secciones.** El respiro que define la dirección. |
| `space.9` | 40 | Aire arriba del dato-héroe. |
| `space.10` | 48 | Separación de bloques mayores en pantallas largas. |
| `space.11` | 64 | Aire vertical en estados vacíos. |
| `space.12` | 80 | Margen superior de pantallas de un solo foco (confirmación, pago). |

### 6.2 Grilla y densidades

- **Grilla:** 4 columnas, gutter 16dp, margen 20dp. Móvil primero, nada de 12 columnas: en 390dp de ancho, 4 columnas es lo único honesto.
- **Ancho de contenido máximo:** 560dp centrado (tablets y plegables). Nunca líneas de texto de más de 68 caracteres.
- **Altura mínima de fila de lista:** 72dp (avatar 40 + 2 líneas + aire). Nunca menos: la mano mojada existe.

Tres densidades y ninguna más:

| Densidad | Padding interno | Gap entre ítems | Dónde |
|---|---|---|---|
| **Aire** (default) | 20dp | 24dp | Próximo partido, pago, confirmación, estado vacío. Todo lo que es "una decisión". |
| **Lista** | 16dp | 12dp | Plantel, historial de partidos, notificaciones. Todo lo que es "un conjunto". |
| **Tabla** | 12dp v / 16dp h | 0 (divisores 1px) | Estadísticas, desglose de pagos. Todo lo que es "comparar". |

### 6.3 Radios

| Token | dp | Uso |
|---|---|---|
| `radius.none` | 0 | Divisores, barras de progreso a ancho completo. |
| `radius.xs` | 6 | Chips de posición, badges. |
| `radius.sm` | 10 | Botones, campos de texto. |
| `radius.md` | 14 | Tarjetas. |
| `radius.lg` | 20 | Bottom sheets (sólo esquinas superiores), diálogos. |
| `radius.full` | 999 | Avatares, indicador del bottom nav, pill de estado. |

Radios contenidos a propósito: 10 y 14 se leen como "control de sistema". A partir de 20 en botones la app empieza a parecerse a un juego, y no lo es.

### 6.4 Elevaciones

Casi plana. La jerarquía la hace el aire, no la profundidad.

| Token | Claro | Oscuro | Uso |
|---|---|---|---|
| `elevation.0` | ninguna | ninguna | Todo por default. |
| `elevation.1` | borde 1px `cal.200` | borde 1px `#252A33` | Tarjetas. **La tarjeta no tiene sombra: tiene borde.** |
| `elevation.2` | `0 1px 2px rgba(15,17,21,0.06)` | borde 1px `#39404C` | Bottom nav, app bar al scrollear. |
| `elevation.3` | `0 6px 16px rgba(15,17,21,0.08)` | borde 1px `#39404C` + superficie `#1C2028` | Bottom sheet, snackbar, menú. |
| `elevation.4` | `0 16px 40px rgba(15,17,21,0.14)` | ídem + scrim | Diálogo modal. |

### 6.5 Movimiento

| Token | Duración | Curva | Uso |
|---|---|---|---|
| `motion.instant` | 90ms | `linear` | Cambio de color en pressed. Tiene que sentirse mecánico. |
| `motion.fast` | 140ms | `cubic-bezier(0.2, 0, 0, 1)` | Chips, checkboxes, estados de botón. |
| `motion.base` | 200ms | `cubic-bezier(0.2, 0, 0, 1)` | Transición entre pantallas, aparición de sheet. |
| `motion.slow` | 280ms | `cubic-bezier(0.2, 0, 0, 1)` | Reordenamiento de la lista al armar equipos. |
| `motion.exit` | 120ms | `cubic-bezier(0.4, 0, 1, 1)` | Salidas. Siempre más rápidas que las entradas. |

No hay rebotes, no hay overshoot, no hay animaciones celebratorias con confeti. La única animación con personalidad de todo el sistema es el reordenamiento de jugadores cuando la IA arma los equipos (280ms, escalonada 20ms por fila), porque ahí sí queremos que se vea trabajar. `MediaQuery.disableAnimations` respetado: con "reducir movimiento" activo, todo baja a cross-fade de 90ms.

---

## 7. Iconografía

**Set:** [Lucide](https://lucide.dev) — open source (ISC), 1500+ íconos, grilla de 24, disponible para Flutter vía `lucide_icons` o exportado a `SvgPicture`.

**Especificación:**
- Grilla 24×24, área viva 20×20.
- Trazo **2dp**, extremos y uniones redondeados (`round` cap y join).
- Sólo contorno. **Cero íconos rellenos**, con una excepción: el ícono activo del bottom nav no se rellena, se pone en azul y engorda el trazo a 2.25dp.
- Tamaños permitidos: 16 (inline en caption), 20 (dentro de botones y filas), 24 (default), 28 (bottom nav), 32 (estados vacíos).
- Color por default `cal.700`. Azul sólo si el ícono es en sí mismo el control tocable.

**Por qué Lucide.** Es geométrico, de trazo uniforme y sin ninguna gracia decorativa: es el equivalente icónico de Archivo. Phosphor tiene demasiadas variantes de peso (invita a la inconsistencia) y Material Symbols arrastra la personalidad de Google, que en una app de nicho se lee como "plantilla".

**Íconos propios (5, a dibujar sobre la misma grilla y trazo):** pelota (pentágono central + dos costuras, no una pelota realista), cancha (rectángulo, línea media, círculo central), brazalete de capitán (banda con hebilla), silbato, arco. Se dibujan con la misma disciplina de 2dp/24 y se entregan como SVG en `/assets/icons/`.

---

## 8. Componentes clave

Todas las medidas en dp. Todos los estados listados existen: si un estado no está definido acá, no está diseñado.

### 8.1 Botón primario

La única cosa azul con relleno de la pantalla. Como máximo **uno por pantalla**.

**Anatomía:** contenedor a ancho completo menos márgenes (o mínimo 160dp si es inline) · altura **56dp** · `radius.sm` (10) · relleno `#1B4DFF` · label `label` (16/600) en blanco, centrado · ícono opcional 20dp a la izquierda con `space.3` (8dp) de gap · padding horizontal 24dp.

| Estado | Especificación |
|---|---|
| Default | Fondo `#1B4DFF`, texto `#FFFFFF`, sin sombra. |
| Pressed | Fondo `#1339CC`, escala 0.98 en 90ms. Sin ripple: el cambio de color es la respuesta, y es más rápido de percibir. |
| Focus (teclado) | Anillo 2dp `#1B4DFF` con 2dp de offset sobre el borde exterior. |
| Disabled | Fondo `cal.100`, texto `cal.400`, sin borde. No baja opacidad global: el gris explícito se lee mejor bajo el sol. |
| Loading | El label se reemplaza por un `CircularProgressIndicator` de 20dp, trazo 2dp, blanco. **El ancho del botón no cambia** — nada salta. Duración mínima en pantalla 400ms aunque la respuesta llegue antes, para que no titile. |

Altura 56 y no 48 porque este botón es siempre la acción principal, casi siempre se toca en la franja inferior de la pantalla y frecuentemente con el pulgar de la mano que sostiene el teléfono.

### 8.2 Botón secundario

**Anatomía:** altura **48dp** · `radius.sm` · fondo transparente · borde 1.5dp `cal.400` · label `label` en `cal.1000` · padding horizontal 20dp.

| Estado | Especificación |
|---|---|
| Default | Borde `cal.400`, texto `cal.1000`. |
| Pressed | Fondo `cal.50`, borde `cal.500`. |
| Focus | Anillo azul 2dp, offset 2dp. |
| Disabled | Borde `cal.200`, texto `cal.400`. |
| Loading | Spinner 18dp `cal.600`, ancho fijo. |

No es azul a propósito: si hubiera dos botones azules en pantalla el capitán tendría que leer para elegir, y leer cuesta.

### 8.3 Botón terciario (texto)

**Anatomía:** altura **44dp** · sin fondo, sin borde · label `label` en `#1B4DFF` · padding horizontal 12dp · área táctil expandida a 48dp con `MaterialTapTargetSize.padded`.

| Estado | Especificación |
|---|---|
| Default | Texto `#1B4DFF`. |
| Pressed | Fondo `#E8EDFF`, `radius.sm`, texto `#0E2B99`. |
| Focus | Anillo azul 2dp. |
| Disabled | Texto `cal.400`. |
| Loading | No aplica: si una acción de texto puede tardar, es un botón secundario. |

Uso: acciones destructivas suaves ("Cancelar"), navegación lateral ("Ver todos"), acciones repetidas dentro de listas.

### 8.4 Campo de texto

**Anatomía:** label externo arriba en `caption` `cal.600` (nunca floating label: al escribir desaparece y el capitán pierde el contexto) · `space.3` (8dp) de gap · caja de **56dp** de alto · `radius.sm` · fondo `cal.0` · borde 1.5dp `cal.300` · texto `bodyLarge` (17/400) `cal.1000` · padding horizontal 16dp · texto de ayuda o error abajo en `caption`, con `space.2` (4dp) de gap.

| Estado | Especificación |
|---|---|
| Default | Borde `cal.300`, placeholder `cal.400`. |
| Hover / focus previo | Borde `cal.400`. |
| Focused | Borde **2dp** `#1B4DFF`, sin cambio de fondo, sin sombra. El grosor compensa el desplazamiento de 0.5dp. |
| Filled | Borde `cal.400`, texto `cal.1000`. |
| Error | Borde 2dp `#C2183C` + ícono `alert-circle` 20dp a la derecha + mensaje en `caption` `#C2183C`. **El error nunca es sólo color:** siempre hay ícono y texto. |
| Disabled | Fondo `cal.50`, borde `cal.200`, texto `cal.400`. |
| Loading (validación async) | Spinner 18dp `cal.500` en el sufijo, borde se mantiene en focused. |

Texto a 17sp y no 15: el input es lo único que el capitán escribe con la mano mojada y necesita verificar sin acercar el teléfono.

### 8.5 Tarjeta de partido

El componente más importante de la app. Es lo primero que se ve al abrir.

**Anatomía (variante Aire, la del home):**
```
┌─ borde 1.5dp cal.200, radius 14, fondo cal.0, padding 20 ──┐
│  VIERNES 12 DE SEPTIEMBRE          overline · cal.500      │
│                                    ← space.4 (12)          │
│  21:00                             display 44/800 · cal.1000│
│                                    ← space.3 (8)           │
│  Complejo Los Robles · Nueva Córdoba   body 15 · cal.600   │
│                                    ← space.6 (20)          │
│  ●●●●●●●●●○  9 de 10               fila de puntos + body   │
│                                    ← space.6 (20)          │
│  ┌──────────────────────────────┐                          │
│  │      Confirmar que voy       │  botón primario 56       │
│  └──────────────────────────────┘                          │
└────────────────────────────────────────────────────────────┘
```

- **Fila de cupo:** 10 puntos de 8dp con 6dp de gap. Confirmados en `#0E7A4B`, vacantes en `cal.200`. A la derecha, `bodyStrong` "9 de 10". Diez puntitos se cuentan de un vistazo mejor que cualquier barra de progreso, y sin leer.
- **Sin foto de la cancha.** Deliberado: la foto no aporta información y empuja el botón fuera del alcance del pulgar.

**Variante Lista** (historial, próximos): altura 88dp, `display` baja a `h2` (26sp), sin botón, chevron 20dp `cal.400` a la derecha, divisor de 1px en vez de borde de tarjeta.

| Estado | Especificación |
|---|---|
| Default | Borde `cal.200`. |
| Pressed (toda la tarjeta navegable) | Fondo `cal.25`, borde `cal.300`, 90ms. |
| Confirmado por el usuario | Borde izquierdo de 4dp `#0E7A4B` (los otros tres bordes siguen en `cal.200`) + el botón primario se reemplaza por botón secundario "Ya confirmaste · Bajarme". |
| Urgente (faltan <24h y no está completo) | Borde izquierdo 4dp `#E8A317` + línea de overline arriba: "FALTAN 2 · EL TURNO SE PIERDE A LAS 20:00" en `#9A5B00`. |
| Cancelado | Toda la tarjeta a `cal.50`, texto a `cal.500`, `display` tachado, pill "CANCELADO" en `#FDE8EC`/`#C2183C`. |
| Loading (skeleton) | Tres bloques `cal.50` con `radius.xs` (18dp, 44dp, 20dp de alto) y shimmer de 1200ms. Nunca spinner en el home. |

### 8.6 Avatar de jugador

**Anatomía:** círculo (`radius.full`) · tamaños **28 / 40 / 56 / 80** · imagen `cover`, o fallback con iniciales.

- **Fallback:** fondo `cal.100`, iniciales (2 letras) en `overline` a 40% del diámetro, `cal.700`. Sin colores random por usuario: la aleatoriedad de color rompe la regla del acento único.
- **Borde:** 1.5dp `cal.0` sólo cuando los avatares se solapan en pila (stack de −12dp).
- **Estados:** `default` · `confirmado` (punto de 10dp `#0E7A4B` con anillo blanco de 2dp, abajo a la derecha) · `pendiente` (punto `cal.300`) · `se bajó` (avatar a 40% de opacidad + punto `#C2183C`) · `capitán` (ver 8.8) · `loading` (círculo `cal.50` con shimmer).
- **Pila:** máximo 5 visibles, el sexto es un círculo `cal.100` con "+4" en `caption` `cal.700`.

### 8.7 Chip de posición

**Anatomía:** alto **28dp** (área táctil 48dp si es interactivo) · `radius.xs` (6) · padding horizontal 10dp · texto `overline` (11/700/+8%, mayúsculas): `ARQ` `DEF` `MED` `DEL`.

| Estado | Especificación |
|---|---|
| Default (informativo) | Fondo `cal.100`, texto `cal.700`, sin borde. |
| Seleccionable no seleccionado | Fondo `cal.0`, borde 1dp `cal.300`, texto `cal.700`. |
| Seleccionado | Fondo `cal.1000`, texto `cal.0`. **Negro, no azul** — el azul está reservado para "esto ejecuta algo", y un filtro no ejecuta: describe. |
| Pressed | Fondo `cal.100` (si no seleccionado) / `cal.800` (si seleccionado), 90ms. |
| Disabled | Fondo `cal.50`, texto `cal.400`. |
| Loading | No aplica. |

Rectangular y no pill: un chip pill al lado de un avatar redondo genera ruido de forma. Además el rectángulo redondeado se distingue mejor de un botón.

### 8.8 Badge de capitán

Deliberadamente **no es una medalla, no es dorado y no es un escudo**. Esa es la solución de la campaña y de Nocturna. Acá el capitán es un rol funcional —el que decide—, no una condecoración, y el sistema lo trata como una etiqueta de sistema.

**Anatomía:** pill de **20dp** de alto · `radius.full` · fondo `#1B4DFF` · texto `CAP` en `overline` (11/700/+8%) blanco · padding horizontal 8dp.

- **Sobre avatar:** anillo de 2dp `#1B4DFF` alrededor del avatar + el pill anclado abajo al centro, superpuesto 6dp, con borde exterior de 2dp del color de la superficie para que recorte limpio.
- **En línea, junto al nombre:** el pill a la derecha del nombre con `space.3` (8dp) de gap.
- **Estados:** `default` · `vos sos el capitán` (idéntico, pero el nombre se reemplaza por "Vos" en `bodyStrong`) · `disabled` (no existe: o sos capitán o no).
- **Regla de excepción del acento:** este es el **único** elemento azul de todo el sistema que no es tocable. Se justifica porque marca a la persona que tiene el poder de acción en la app, y es literalmente un elemento de una sola palabra que aparece una vez por pantalla como máximo.

### 8.9 Bottom navigation

**Anatomía:** altura **64dp** + safe area · fondo `cal.0` · borde superior 1dp `cal.200` (no sombra) · 4 destinos: Partidos · Equipo · Stats · Perfil · cada uno ícono 28dp + label `overline` (11/700) con `space.2` (4dp) de gap · área táctil 64×64 mínimo.

| Estado | Especificación |
|---|---|
| Inactivo | Ícono `cal.700` trazo 2dp, label `cal.600`. |
| Activo | Ícono `#1B4DFF` trazo 2.25dp, label `#1B4DFF` peso 700. Sin píldora de fondo ni indicador de Material 3 — el color ya lo dice y el fondo agrega ruido. |
| Pressed | Ícono a `#1339CC`, 90ms, sin ripple. |
| Con novedad | Punto de 8dp `#C2183C` arriba a la derecha del ícono, con borde de 2dp del color de la superficie. Sin número: el número invita a "vaciar la bandeja" y eso es trabajo. |
| Disabled | No existe: los 4 destinos están siempre disponibles. |

Labels siempre visibles, nunca sólo íconos: cuatro palabras de 11sp cuestan 12dp de alto y ahorran una interpretación.

### 8.10 Estado vacío

**Anatomía:** centrado vertical con `space.11` (64dp) arriba · ícono Lucide 32dp `cal.300` · `space.6` (20dp) · título en `h3` `cal.1000` · `space.3` (8dp) · texto en `bodyLarge` `cal.600`, máximo dos líneas, ancho máximo 300dp · `space.7` (24dp) · botón primario o secundario según si hay acción real · ancho de la columna máximo 320dp.

- **Sin ilustraciones.** Un ícono chico y gris. Una ilustración en un estado vacío es la app pidiendo perdón por estar vacía, y esta app no pide perdón: informa y ofrece la salida.
- **Copy con la voz de marca:** "Todavía no armaste ningún partido. Se tarda menos de lo que tardás en escribir en el grupo." + botón "Armar el primero".
- **Estados:** `vacío inicial` (con acción) · `vacío por filtro` (con botón terciario "Limpiar filtros") · `error de red` (ícono `wifi-off`, "No hay señal en la cancha. Probá de nuevo." + secundario "Reintentar") · `loading` (skeletons, nunca estado vacío mientras carga).

### 8.11 Snackbar

**Anatomía:** ancho de pantalla menos 16dp a cada lado · alto mínimo **52dp** · `radius.sm` (10) · fondo `cal.900` · texto `body` (15/400) `cal.0` · acción opcional a la derecha en `label` (16/600) `#6E8CFF` (el azul claro, porque el fondo es oscuro: 6.9:1) · padding 16dp · `elevation.3` · aparece **arriba del bottom nav**, con 12dp de separación.

| Variante | Especificación |
|---|---|
| Neutro | Fondo `cal.900`, sin ícono. |
| Éxito | Ícono `check` 20dp `#35C98B` a la izquierda, `space.3` de gap. |
| Error | Ícono `alert-circle` 20dp `#FF6B85`. Duración 6s (el doble). |
| Con deshacer | Acción "Deshacer" siempre a la derecha. Duración 5s. |

Duración: 4s por default, 6s con error, indefinido si requiere acción. Entra deslizando 12dp desde abajo con fade en `motion.base` (200ms), sale en `motion.exit` (120ms). Máximo uno a la vez; el nuevo reemplaza al anterior sin animación de salida.

**Por qué oscuro en una app clara:** es el único elemento que tiene que ganar la atención por encima del contenido, y en una interfaz blanca la única forma de gritar sin usar color es invertir.

---

## 9. Tres pantallas

### 9.1 Próximo partido (home)

El capitán abre la app. En 300ms tiene la respuesta.

Arriba, sobre el fondo `cal.25`, una app bar **sin fondo, sin sombra, sin título**: sólo el logotipo en `h3` a la izquierda —"fulbito" en minúsculas, Archivo 600— y a la derecha un ícono de campana de 24dp `cal.700`. Ocupa 56dp y desaparece de la conciencia.

Después, **40dp de aire**. No 16. Cuarenta. Ese vacío es la primera declaración de la dirección: nada se apura por entrar en pantalla.

Entonces, la **tarjeta de partido en variante Aire**, con 20dp de margen lateral. Adentro, el overline gris de la fecha, y debajo el `display` de 44sp: **21:00**. Es lo más grande que hay y lo primero que el ojo agarra, incluso mirando el teléfono apoyado sobre la mesa a medio metro. Debajo, la sede en gris de 15sp. Después la fila de diez puntos con nueve verdes y uno gris, y "9 de 10" al lado. Y abajo de todo, tocando el borde inferior de la tarjeta con 20dp de padding, el único botón azul de la pantalla: **Confirmar que voy**, 56dp de alto, ancho completo. La tarjeta entera mide unos 300dp y el botón queda a unos 420dp del borde inferior del teléfono: dentro de la zona del pulgar de una mano.

Debajo, **32dp de aire**, y un overline gris: `PRÓXIMOS`. Después una lista de tarjetas variante Lista, 88dp cada una, separadas por divisores de 1px, sin bordes de tarjeta: fecha en overline, hora en 26sp, sede en 15sp gris, chevron. Dos o tres, no más; el resto vive en el tab de Partidos.

Y **32dp más de aire** antes de un bloque discreto: `EL GRUPO`, con una pila de avatares de 40dp solapados y, en `caption`, "12 jugadores · 3 deben la seña", en `#9A5B00` si hay deuda. Tocable, lleva a Equipo.

Bottom nav de 64dp, blanco, con la línea gris arriba y el ícono de Partidos en azul.

**Cómo se traduce la velocidad en layout:** hay exactamente una acción azul, y está donde cae el pulgar. La pregunta principal ("¿cuándo?") se responde en 44sp. La secundaria ("¿estamos completos?") con diez puntitos que no requieren leer. Todo lo demás está abajo del pliegue, donde el capitán llega sólo si le sobra tiempo. Un capitán que abre la app para confirmar que va, hace **un** toque.

### 9.2 Armar equipos con IA

Esta pantalla es la que justifica la app entera y es donde la restricción visual paga más: el capitán está por delegarle una decisión política —quién juega con quién— a un algoritmo. Cualquier exceso de gráfica ahí se lee como "me están vendiendo humo".

Arriba, una app bar con flecha de volver 24dp a la izquierda y el título en `h3`: "Armar equipos". Sin subtítulo.

Después, un bloque de configuración de **densidad Lista**: dos filas de 56dp separadas por divisores de 1px, cada una con label a la izquierda en `body` y valor a la derecha en `bodyStrong` con chevron: "Formato — 5 vs 5" y "Criterio — Parejo". Tocables, abren un bottom sheet. Sin dropdowns visibles: la configuración por default es la correcta el 90% de las veces y no tiene que gritar.

**32dp de aire.** Después la lista de convocados: overline `CONVOCADOS · 10`, y filas de 72dp con avatar 40dp, nombre en `body`, chip de posición a la derecha, y a la derecha del todo un valor en `data` (JetBrains Mono, 15sp) con el rating interno: `7.8`. La monoespaciada hace que la columna de números se lea como una tabla aunque no tenga líneas, y eso es exactamente lo que el capitán necesita para auditar el criterio antes de confiar.

Anclado al fondo, sobre una superficie blanca con borde superior de 1px y 20dp de padding: el botón primario **Armar equipos**, 56dp. Al tocarlo entra en `loading`: el label se reemplaza por un spinner blanco de 20dp y el ancho no cambia. Nada más se mueve.

Cuando la respuesta llega —mínimo 900ms aunque el servidor tarde 200, porque una decisión instantánea se lee como "no lo pensó"—, la lista **se reordena en el lugar** con `motion.slow` (280ms, escalonada 20dp por fila) y se parte en dos bloques con encabezados `h2`: **CLAROS** y **OSCUROS**, cada uno con su overline de promedio en `data`: `PROM 7.6` / `PROM 7.7`. Es la única animación con carácter del sistema, y existe porque acá el trabajo tiene que verse.

Debajo de los dos bloques, un bloque `Azul Velo` (`#F3F6FF`) con `radius.md`, 16dp de padding, ícono `sparkles` de 20dp en `#1B4DFF` y texto en `body` `cal.800`: *"Separé al Colo y al Tincho, que siempre juegan juntos. Los equipos quedan a 0.1 de diferencia."* Es la única superficie tintada de toda la app y se la gana: es la explicación del algoritmo, y la explicación es lo que convierte a la IA de sospechosa en útil.

Y el par de acciones al pie: primario **Mandar al grupo** (56dp) y, arriba de él con 12dp de gap, terciario **Volver a armar** centrado.

**Cómo se traduce la velocidad en layout:** llegar a equipos armados y compartidos son **tres toques** desde el home — Armar equipos → Armar equipos → Mandar al grupo. Toda la configuración está preseteada y accesible pero fuera del camino. El resultado se lee sin scrollear en un teléfono de 6.1".

### 9.3 Estadísticas del jugador

Es la pantalla que el capitán mira sin necesidad, por gusto, y donde la dirección corre más riesgo de sentirse fría. La respuesta es no combatir eso con decoración, sino con **escala**: los números son enormes y eso, por sí solo, es emocionante.

Arriba, sin app bar visible más que la flecha de volver: **80dp de margen superior** y después el avatar de 80dp centrado a la izquierda del bloque, con el pill CAP azul anclado abajo si corresponde. A su derecha, el nombre en `h1` (32sp) y, debajo, en `caption` `cal.500`: "Desde marzo 2025 · 47 partidos".

**32dp de aire.** Después la fila de tres números-héroe, sin tarjetas, sin bordes, sin fondos: sólo tres columnas separadas por divisores verticales de 1px `cal.200`, con 24dp de alto de aire arriba y abajo. En cada una: el número en `display` (44sp/800) y debajo, con 4dp de gap, un `overline` gris: **`8.4` PROMEDIO** · **`31` GOLES** · **`68%` GANADOS**. Es la traducción más literal de la dirección: el dato desnudo, gigante, sin envase. Sobre blanco y a 44sp, se lee desde la tribuna.

**32dp de aire.** Overline `RENDIMIENTO`, y una tabla de **densidad Tabla**: filas de 44dp, divisores de 1px, label a la izquierda en `body` `cal.700` y valor a la derecha en `data` (JetBrains Mono, 15/500, tabular): Partidos jugados `47`, Goles `31`, Asistencias `19`, Promedio por partido `0.66`, Rachas ganadas `4`, MVP `6`. Seis filas, sin gráficos. Un gráfico de barras acá sería decoración: nadie compara visualmente seis magnitudes distintas, las lee.

**32dp de aire.** Overline `ÚLTIMOS 5`, y una tira horizontal de cinco pills de 32dp de alto separadas por 8dp: `G` `G` `P` `G` `E`, con fondo `#E3F5EC`/`#0E7A4B` para ganado, `#FDE8EC`/`#C2183C` para perdido y `cal.100`/`cal.700` para empate. Es el único lugar donde el color semántico aparece en volumen, y funciona porque los cinco resultados son un patrón, no una lista.

Al pie, con 48dp de aire arriba, un botón secundario a ancho completo: **Comparar con el grupo**.

**Cómo se traduce la velocidad en layout:** la pantalla contesta "¿cómo vengo?" en el primer viewport sin scrollear, con tres números de 44sp. El detalle está abajo para el que quiera. Cero elementos decorativos y aun así la pantalla tiene impacto, porque el impacto lo produce la escala tipográfica, no el adorno.

---

## 10. Accesibilidad

**Tamaños de toque.** Mínimo **48×48dp** en todo control, por encima de los 44 de la guía de Apple y en línea con Material. Justificación no burocrática: el capitán opera con una mano, a veces mojada, a veces con el teléfono a medio caer. Los controles primarios van a 56dp. Los chips y los íconos de 24dp tienen área táctil expandida por `padding` invisible, nunca por agrandar el gráfico. Separación mínima entre dos targets: 8dp.

**Contraste.** Toda combinación de texto cumple AA (4.5:1 texto normal, 3:1 texto ≥18.66sp bold o ≥24sp). Las combinaciones críticas están tabuladas en §3.4 con su ratio medido. El texto primario está en 18.9:1, muy por encima del mínimo, porque el sol de Córdoba en enero come 3 o 4 puntos de contraste percibido.

**El color nunca es el único canal.** Confirmado/pendiente/bajado se distingue por punto de color **y** por posición en la lista **y** por texto. Los errores de formulario tienen ícono, borde y mensaje. Los resultados G/E/P tienen letra además de color. Un daltónico deuteranope opera la app completa sin perder información.

**Texto ampliado.** El layout aguanta hasta **200%** de escala del sistema (`textScaleFactor` 2.0). Reglas de implementación: ninguna altura de contenedor fija en dp para cajas con texto — se usan `minHeight` y el contenedor crece; los botones pasan de una línea a dos y su altura sube de 56 a 88 sin romper; el `display` de 44sp se limita a `textScaler` 1.6 con `MediaQuery.withClampedTextScaling` porque a 88sp deja de entrar la hora en una línea, y en ese caso concreto el dato ya es gigante y no se pierde legibilidad; el bottom nav oculta labels por encima de 1.5× y compensa con `tooltip` y `semanticLabel`. Ninguna elipsis en datos críticos: la sede de la cancha envuelve a dos líneas, no se corta.

**A plena luz.** Fondo claro y texto casi negro es la combinación que mejor sobrevive al brillo automático al máximo, porque el brillo empuja los blancos y el negro se mantiene. Todos los datos que importan son ≥26sp. Nada crítico se comunica con un gris más claro que `cal.500`. Sin degradados: los degradados se aplanan bajo el sol y se vuelven un bloque de color.

**De noche.** El modo oscuro se activa por sistema. En oscuro el blanco puro se prohíbe para texto largo (se usa `#F4F6F8`) porque a las 23:00 con la pupila dilatada el blanco puro sobre negro produce halo. El fondo nunca es `#000000` puro sino `#0F1115`, que reduce el smearing en pantallas OLED al scrollear.

**Otros.** Todo ícono sin texto tiene `semanticLabel`. El orden de foco sigue el orden visual. `MediaQuery.disableAnimations` respetado (todo pasa a cross-fade de 90ms). Ningún flash superior a 3Hz. Los estados de carga anuncian por `Semantics(liveRegion: true)`.

---

## 11. Cuándo elegir esta dirección

Cancha Clara gana en estos escenarios de negocio:

1. **El objetivo del año es retención por frecuencia, no descargas.** Si el KPI es "el capitán abre la app 4 veces por semana durante 6 meses", una interfaz que no cansa gana sobre una que impresiona. La estética de alto impacto rinde en la instalación y se paga en el mes tres.
2. **El competidor real es WhatsApp.** Contra un hábito, el argumento es velocidad medible ("40 minutos por semana"), y la interfaz tiene que probar ese argumento en el primer uso.
3. **El roadmap incluye pagos.** Cobrar la seña dentro de la app requiere que la interfaz se sienta un sistema, no un juego. El azul de sistema y la sobriedad bajan la fricción de meter una tarjeta.
4. **Se planea expandir de deporte o de ciudad.** Ninguna decisión visual de este kit está atada al fútbol ni a Córdoba, así que pádel en Rosario no cuesta un rediseño.
5. **El equipo de desarrollo es chico.** Es la dirección más barata de implementar y la más difícil de romper: sin degradados, sin ilustraciones a medida, sin assets pesados, sin dark mode con personalidad propia. Se construye con Material 3 y dos fuentes de Google. Menos superficie de bug visual, arranque más rápido de la app, APK más liviano.
6. **La marca ya tiene un canal caliente.** Si el marketing (100 Capitanes, dark y dorado y neón) ya carga la emoción y la pertenencia, el producto puede permitirse ser el lugar sobrio donde eso se ejecuta. Es una división del trabajo legítima: la campaña seduce, la app resuelve.

---

## 12. Contras honestos

No es la dirección que más se aplaude en una presentación. Estos son los riesgos reales, sin maquillar:

**1. Se puede sentir fría, y ese es el riesgo mayor.** El fútbol amateur es identidad, barrio, pertenencia y cargada. Cancha Clara le saca todo eso a la interfaz y lo delega en el contenido. Si el contenido no llega —si el grupo tiene pocas fotos, si los apodos no se usan, si el copy se afloja— la app queda gris. Potrero y Nocturna tienen emoción incorporada en el envase; ésta la tiene prestada. **Mitigación real:** el copy no es adorno acá, es estructura, y hay que presupuestarlo como se presupuesta un componente. Y las fotos del partido deben ocupar el ancho completo sin marco cuando aparecen: es el único lugar donde entra el color de verdad.

**2. Se parece a otras cosas.** Blanco, grotesca, un azul, mucho aire: eso describe a Linear, a Notion, a media App Store y a la mitad de los dashboards de 2025. En una comparación lado a lado, Potrero y Nocturna se van a ver "más diseñadas" y ésta va a parecer "menos trabajada", aunque tenga la misma cantidad de decisiones adentro. **Ese es un riesgo de venta, no de producto**, y hay que anticiparlo: si se presenta en un deck estático sin interacción, esta dirección pierde. Se defiende con un prototipo navegable y con un cronómetro.

**3. El azul tiene un problema de club que no se puede ignorar.** En Córdoba, azul y celeste son colores cargados: Talleres es albiazul, Belgrano celeste. Un capitán de Instituto (rojo) puede leer la app como "de Talleres". El riesgo es bajo porque `#1B4DFF` es un azul eléctrico de sistema, no un azul de camiseta, y aparece en botones y no en fondos. Pero existe, y merece un test con 8 o 10 capitanes de clubes distintos antes de cerrar. Si aparece, el plan B es correr el acento a violeta-índigo (`#4F2BD9`), que no pertenece a nadie en Córdoba y mantiene todas las propiedades de contraste.

**4. Renuncia a la sorpresa y por lo tanto al boca a boca visual.** Nadie manda un screenshot al grupo diciendo "mirá qué buena esta app" porque el fondo es blanco. Nocturna genera captura; ésta genera uso. Si el modelo de crecimiento depende de la viralidad visual dentro de los grupos de WhatsApp, esta dirección le juega en contra.

**5. Toda la carga cae sobre la tipografía y el espaciado, y eso es frágil en implementación.** En Potrero, un padding mal puesto se disimula bajo la textura. Acá, 16dp donde iban 32 arruina la pantalla, y un peso 600 donde iba 700 borra la jerarquía. Exige disciplina de QA visual y un dev que respete los tokens al dp. **Es la dirección más fácil de implementar y la más fácil de arruinar implementándola con desgano.**

**6. El fondo claro consume más batería en OLED.** Real y medible: entre 10% y 20% más que un dark mode en pantallas AMOLED. Para un capitán que usa la app en la cancha con 15% de batería, no es trivial. El modo oscuro automático lo mitiga, pero el default es claro y el default es lo que la mayoría no cambia.

**7. Deja plata sobre la mesa en un eventual tier premium.** Una estética sobria hace más difícil vender "FulbitoApp Pro" con una capa visual distinta. Nocturna tiene un camino de monetización estética evidente —skins, badges dorados, temas de club—; Cancha Clara tendría que monetizar sólo por función. Es más honesto y probablemente más chico.

---

## 13. Archivos de esta dirección

| Archivo | Contenido |
|---|---|
| `README.md` | Este documento. |
| `tokens.json` | Design tokens completos (primitivos + semánticos, claro y oscuro). Fuente de verdad. |
| `flutter_theme.dart` | `ThemeData` de Material 3 para claro y oscuro, listo para pegar en el proyecto. Requiere `google_fonts`. |

**Handoff:** el dev importa `flutter_theme.dart`, agrega `google_fonts: ^6.2.1` a `pubspec.yaml` y usa `FulbitoTheme.light` / `FulbitoTheme.dark` en `MaterialApp`. Nada de lo especificado acá requiere un asset propio salvo los 5 íconos custom de §7. Todo lo demás está en el theme.
