# UI Kit 01 — POTRERO

**FulbitoApp · Dirección visual 1 de 3 · Light-first**
Autor: UI Designer (NEXUS) · Revisión de voz: Brand Guardian
Estado: propuesta completa, lista para handoff a Flutter.

---

## 1. Concepto en una frase

> **La app se ve como el cuaderno donde el capitán anotaba los equipos antes de que existieran las apps: papel gastado, birome, tierra de potrero y pasto de verdad.**

### Fundamento

Cuando el capitán abre FulbitoApp por primera vez no tiene que sentir que entró a un producto. Tiene que sentir que abrió *algo suyo*. POTRERO trabaja sobre una intuición concreta: el ritual del fulbito amateur cordobés es analógico antes que digital. Los equipos se armaban en una hoja arrancada del cuaderno, apoyada sobre el capó del auto, con birome que a veces no escribía. La seña se anotaba al costado. El que debía plata tenía una crucecita al lado del nombre. Eso ya existía y funcionaba: la app no viene a reemplazar ese ritual, viene a que no se pierda la hoja.

Por eso el fondo es papel gastado (`#F4F0EB`), no blanco de laboratorio. Por eso la tinta es marrón-negro (`#1F1B16`) y no negro puro: la birome sobre papel nunca es negro puro. Por eso el color primario es ladrillo (`#C8391B`) — el ladrillo del paredón del potrero, el polvo de la cancha de tierra cuando pica el sol — y no un rojo digital saturado. Y por eso el verde es pasto oscuro y gastado (`#265E3A`), el del pasto pisado del área chica, no el verde de la televisión.

**Por qué encaja con el capitán cordobés, en criollo:**

1. **Le baja la guardia.** El capitán es early adopter pero desconfía del marketing (lo dice la voz de marca: "sin rodeos ni marketing"). Una interfaz oscura y neón grita *startup con inversores*. Una interfaz de papel y ladrillo dice *esto lo hizo alguien que juega*. La estética es la primera frase de copy que lee, y tiene que sonar a lo mismo que decimos: cómplice.
2. **Es local sin ser un cliché.** No hay bandera, no hay Fernet dibujado, no hay pizarrón de DT con flechitas. La cordobesidad está en la temperatura: tierra, ladrillo, cal, sol de las 6 de la tarde en un potrero de Barrio San Vicente. Nostalgia por textura, no por iconito.
3. **Da jerarquía a las personas, no a los datos.** El capitán no administra un sistema, administra amigos. Una paleta cálida hace que las caras, los nombres y las fotos del partido se vean bien. Una paleta fría y oscura hace que se vean bien los gráficos. Nosotros vendemos lo primero.
4. **Diferencia de la competencia y del propio marketing.** El kit de campaña *100 Capitanes* ya es negro + verde neón: eso es el trailer. POTRERO es la película. Que el producto se sienta más cálido que la publicidad es una ventaja: supera la expectativa en vez de repetirla.

**Lo que NO es:** no es retro-cursi. No hay filtro sepia, no hay texturas de papel arrugado a pantalla completa, no hay tipografía de máquina de escribir, no hay bordes rasgados. La nostalgia acá es de paleta y de temperatura, no de skeuomorfismo. La estructura de la interfaz es contemporánea y limpia (Material 3, densidad moderna). El pasado está en el color; el presente, en la ergonomía.

---

## 2. Paleta completa

### 2.1 Primitivos — Ladrillo (marca primaria)

El paredón del potrero, el polvo de tierra. Es el color de acción: todo lo que el capitán puede tocar para que algo pase.

| Token | Hex | Nombre | Dónde se usa |
|---|---|---|---|
| `ladrillo.50` | `#FBEEEA` | Ladrillo cal | Fondo de estados seleccionados suaves, hover en listas |
| `ladrillo.100` | `#F6D9D0` | Ladrillo lavado | Contenedor primario (light), fondo de chips activos |
| `ladrillo.200` | `#EDB3A2` | Ladrillo seco | Bordes de contenedor primario, dividers acentuados |
| `ladrillo.300` | `#E08A72` | Ladrillo sol | Primario en **dark mode** (variante alternativa) |
| `ladrillo.350` | `#E8845F` | Ladrillo tarde | **Primario en dark mode** (elegido) |
| `ladrillo.400` | `#D6603F` | Ladrillo claro | Hover de primario en light, gradientes |
| `ladrillo.500` | `#C8391B` | **Ladrillo** | **Primario.** Fondo de botón primario, FAB, indicadores activos |
| `ladrillo.600` | `#A82D14` | Ladrillo húmedo | Estado *pressed* del primario, texto de link sobre papel |
| `ladrillo.700` | `#87230F` | Ladrillo quemado | Texto sobre contenedor primario, íconos primarios pequeños |
| `ladrillo.800` | `#661A0B` | Ladrillo noche | `onPrimaryContainer` (light) |
| `ladrillo.900` | `#451208` | Ladrillo tierra | Sombras teñidas, overlays |

### 2.2 Primitivos — Pasto (marca secundaria)

El pasto pisado, gastado, del área chica. Es el color de confirmación y de pertenencia: lo que ya está resuelto.

| Token | Hex | Nombre | Dónde se usa |
|---|---|---|---|
| `pasto.50` | `#E8F1EB` | Pasto rocío | Fondo de contenedor secundario suave |
| `pasto.100` | `#C9E0D2` | Pasto claro | `secondaryContainer` (light), fondo de chip "Confirmado" |
| `pasto.200` | `#9AC4AB` | Pasto seco | Bordes de contenedor secundario |
| `pasto.300` | `#6BA785` | Pasto sol | Íconos secundarios en dark |
| `pasto.350` | `#8FC7A4` | Pasto luz | **Secundario en dark mode** |
| `pasto.400` | `#41855F` | Pasto vivo | Hover del secundario |
| `pasto.500` | `#265E3A` | **Pasto** | **Secundario.** Botón secundario relleno, marcador, escudos |
| `pasto.600` | `#1F4E30` | Pasto sombra | Pressed del secundario |
| `pasto.700` | `#193F27` | Pasto oscuro | Texto sobre contenedor secundario |
| `pasto.800` | `#12301D` | Pasto noche | `onSecondaryContainer` (light) |
| `pasto.900` | `#0C2114` | Pasto tierra | Fondos de sección de "cancha" en dark |

### 2.3 Primitivos — Papel (escala de neutrales)

**Neutrales cálidos, no grises.** Todos tienen un sesgo hacia el amarillo/marrón (hue ~35–40°). Un gris neutro al lado de este ladrillo se ve azulado y sucio; un neutro cálido se ve como papel.

| Token | Hex | Nombre | Dónde se usa |
|---|---|---|---|
| `papel.0` | `#FFFDFA` | Cal | Superficie de tarjetas, bottom nav, sheets. Blanco de cal, no #FFFFFF |
| `papel.50` | `#FAF7F2` | Papel nuevo | Surface container low, fondo de inputs |
| `papel.100` | `#F4F0EB` | **Papel gastado** | **Fondo de app.** Scaffold, fondo de scroll |
| `papel.200` | `#E8E2D9` | Papel doblado | Surface container high, fondo de secciones, skeletons |
| `papel.300` | `#D6CEC2` | Papel sombra | `outlineVariant`: divisores, bordes decorativos |
| `papel.400` | `#B5AB9C` | Ceniza | Bordes deshabilitados, íconos inactivos de baja jerarquía |
| `papel.500` | `#8C8275` | Lápiz | `outline`: bordes de input, contorno de botón terciario. 3.33:1 ✅ (mínimo 3:1 para UI no textual) |
| `papel.600` | `#6B6255` | Grafito | Texto secundario, placeholders, labels de nav inactiva. 5.28:1 ✅ AA |
| `papel.700` | `#4E463C` | Tinta clara | Texto de apoyo con jerarquía media. 8.17:1 ✅ AAA |
| `papel.800` | `#332D26` | Tinta | Títulos de sección alternativos |
| `papel.900` | `#1F1B16` | **Birome** | **Texto principal.** 15.09:1 sobre papel.100 ✅ AAA |
| `papel.950` | `#14100C` | Tierra mojada | Fondo de app en **dark mode** |

> **Regla dura:** en esta dirección **no existe `#000000` ni `#FFFFFF`**. Si aparecen en el código, es un bug de implementación.

### 2.4 Acento — Ocre Capitán

El único color reservado. Es la cinta de capitán: mostaza de tela vieja, no dorado de trofeo.

| Token | Hex | Nombre | Dónde se usa |
|---|---|---|---|
| `ocre.100` | `#FBEFD4` | Ocre cal | Fondo del badge de capitán en light |
| `ocre.300` | `#F0C868` | Ocre claro | Borde del badge, brillo del badge |
| `ocre.500` | `#D99A2B` | **Ocre capitán** | Cinta, corona, borde del avatar del capitán. **Solo decorativo — 2.15:1, nunca texto sobre papel** |
| `ocre.600` | `#E8B45C` | Ocre luz | Ocre en dark mode (9.44:1 sobre superficie oscura) |
| `ocre.700` | `#8A5E10` | Ocre tinta | Texto "CAPITÁN" sobre papel. 5.02:1 ✅ AA |

> **Restricción de marca (acordada con Brand Guardian):** el ocre se usa **exclusivamente** para señalar al capitán o al MVP del partido. Si aparece en un botón de "Guardar", se devalúa. Un color con una sola función es un lenguaje; un color con cinco es decoración.

### 2.5 Colores semánticos

El problema evidente: **el primario ya es rojo**, así que el error necesita distinguirse sin ambigüedad.

Se resuelve en tres capas: (a) el error es **carmín frío** (hue ~353°) contra el primario que es **ladrillo cálido** (hue ~13°) — 20° de diferencia perceptible lado a lado; (b) el error **nunca aparece como relleno de botón de acción**, solo como borde, texto, ícono y contenedor; (c) todo estado de error lleva **ícono + texto**, nunca color solo. Aun así, esto queda listado como contra honesto en §12.

| Rol | Token | Hex (light) | Contenedor | Texto s/ contenedor | Hex (dark) | Dónde se usa |
|---|---|---|---|---|---|---|
| **Éxito** | `ok` | `#2F7A46` | `#DCEDE2` | `#1B4A29` | `#7FC08F` | "Partido confirmado", "Pagaste", check de asistencia |
| **Error** | `error` | `#A81F2D` | `#F9DCDD` | `#6B1019` | `#F09384` | Validación de formulario, "No se pudo cargar", tarjeta roja |
| **Advertencia** | `warn` | `#8A5A00` | `#FBEBCF` | `#6B4708` | `#E8B45C` | "Faltan 2 jugadores", "Vence la seña en 3 h" |
| **Info** | `info` | `#1F5F8B` | `#D9E8F2` | `#133D59` | `#7FB6DC` | Tips de la IA, "Se movió la cancha", avisos neutros |

**Por qué el info es azul tiza (`#1F5F8B`):** en una paleta 100 % cálida hace falta una nota fría o todo se aplana. El azul de la tiza sobre el pizarrón del club es el único frío que no rompe el concepto — y ancla el resto de la paleta por contraste de temperatura.

### 2.6 Ratios de contraste WCAG — combinaciones críticas

Medidos con la fórmula WCAG 2.1 de luminancia relativa. AA normal ≥ 4.5:1, AA grande (≥18.66 px o ≥14 px bold) ≥ 3:1, UI no textual ≥ 3:1.

**Light mode**

| Frente | Fondo | Ratio | Veredicto |
|---|---|---|---|
| `papel.900` #1F1B16 | `papel.100` #F4F0EB | **15.09:1** | AAA ✅ Texto de cuerpo |
| `papel.900` #1F1B16 | `papel.0` #FFFDFA | **16.86:1** | AAA ✅ Texto en tarjeta |
| `papel.700` #4E463C | `papel.100` #F4F0EB | **8.17:1** | AAA ✅ Texto de apoyo |
| `papel.600` #6B6255 | `papel.100` #F4F0EB | **5.28:1** | AA ✅ Texto secundario / placeholder |
| `papel.500` #8C8275 | `papel.100` #F4F0EB | **3.33:1** | ✅ Solo bordes/UI. ❌ Texto normal |
| `papel.0` #FFFDFA | `ladrillo.500` #C8391B | **5.10:1** | AA ✅ Label de botón primario |
| `papel.0` #FFFDFA | `ladrillo.600` #A82D14 | **6.78:1** | AA ✅ Botón primario *pressed* |
| `ladrillo.500` #C8391B | `papel.100` #F4F0EB | **4.56:1** | AA ✅ (justo) — íconos y texto ≥15 sp |
| `ladrillo.600` #A82D14 | `papel.100` #F4F0EB | **6.07:1** | AA ✅ **Usar este para links de texto** |
| `ladrillo.800` #661A0B | `ladrillo.100` #F6D9D0 | **9.17:1** | AAA ✅ Texto en contenedor primario |
| `papel.0` #FFFDFA | `pasto.500` #265E3A | **7.54:1** | AAA ✅ Botón secundario relleno |
| `pasto.500` #265E3A | `papel.100` #F4F0EB | **6.74:1** | AA ✅ Texto/íconos secundarios |
| `pasto.800` #12301D | `pasto.100` #C9E0D2 | **10.28:1** | AAA ✅ Chip "Confirmado" |
| `ok` #2F7A46 | `papel.100` #F4F0EB | **4.64:1** | AA ✅ |
| `error` #A81F2D | `papel.100` #F4F0EB | **6.39:1** | AA ✅ |
| `papel.0` #FFFDFA | `error` #A81F2D | **7.13:1** | AAA ✅ Snackbar de error |
| `warn` #8A5A00 | `papel.100` #F4F0EB | **5.22:1** | AA ✅ |
| `info` #1F5F8B | `papel.100` #F4F0EB | **6.03:1** | AA ✅ |
| `ocre.700` #8A5E10 | `papel.100` #F4F0EB | **5.02:1** | AA ✅ Texto "CAPITÁN" |
| `ocre.500` #D99A2B | `papel.100` #F4F0EB | **2.15:1** | ❌ **Decorativo únicamente** |
| `papel.900` #1F1B16 | `ocre.500` #D99A2B | **7.02:1** | AAA ✅ Texto sobre cinta ocre |

**Dark mode**

| Frente | Fondo | Ratio | Veredicto |
|---|---|---|---|
| `#E6DCCE` (onSurface) | `#14100C` (background) | **13.97:1** | AAA ✅ |
| `#E6DCCE` | `#1B1712` (surface) | **13.15:1** | AAA ✅ |
| `#E6DCCE` | `#2A231C` (surfaceContainer) | **11.43:1** | AAA ✅ |
| `#A99C8B` (onSurfaceVariant) | `#1B1712` | **6.63:1** | AA ✅ |
| `#746A5C` (outline) | `#1B1712` | **3.36:1** | ✅ UI no textual |
| `#E8845F` (primary dark) | `#1B1712` | **6.70:1** | AA ✅ |
| `#1F1B16` (onPrimary dark) | `#E8845F` | **6.44:1** | AA ✅ |
| `#8FC7A4` (secondary dark) | `#1B1712` | **9.23:1** | AAA ✅ |
| `#F09384` (error dark) | `#1B1712` | **7.82:1** | AAA ✅ |
| `#FFD9CC` | `#7A2412` (primaryContainer dark) | **7.68:1** | AAA ✅ |
| `#C9E8D6` | `#1E4A2E` (secondaryContainer dark) | **7.71:1** | AAA ✅ |
| `#E8B45C` (ocre dark) | `#1B1712` | **9.44:1** | AAA ✅ |

---

## 3. Modo oscuro — "el potrero de noche"

POTRERO es light-first por convicción: el concepto es papel, y el papel es claro. Pero el 60 % del uso real ocurre después de las 21 h — el partido de los martes se juega de noche, el capitán arma los equipos en el auto antes de entrar. Sin dark mode decente, la dirección se cae en el momento de mayor uso.

**La regla que evita traicionar el concepto: el dark mode no es POTRERO invertido, es POTRERO a las 10 de la noche con la luz de mercurio del reflector.**

Traducción concreta:

1. **El fondo no es negro, es tierra mojada.** `#14100C` — un marrón tan oscuro que se lee como negro, pero con 8 % de calidez. Al lado de un dark mode neutro se nota; en aislamiento se percibe como "más suave para los ojos". Cero negro puro: en pantallas OLED el negro puro con contenido cálido produce halos y bordes duros que rompen la sensación analógica.
2. **El papel se convierte en luz, no desaparece.** El texto principal `#E6DCCE` es el mismo papel gastado, ahora emitiendo. El usuario no percibe un cambio de marca, percibe un cambio de hora.
3. **El ladrillo se aclara y se desatura hacia terracota.** `#C8391B` sobre fondo oscuro es turbio y vibra. Sube a `#E8845F` (6.70:1): el mismo pigmento pero iluminado por reflector, no otro color.
4. **El pasto se aclara fuerte.** `#265E3A` sobre negro es prácticamente invisible. Pasa a `#8FC7A4` (9.23:1) — el verde del pasto bajo luz artificial, que efectivamente se ve más pálido y más frío de noche. La física juega a favor del concepto.
5. **Las superficies se elevan con marrón, no con blanco.** Material 3 eleva superponiendo blanco translúcido. Acá se usa una escala explícita de marrones: `#14100C` → `#1B1712` → `#211C17` → `#2A231C` → `#332B22` → `#3D342A`. Da la sensación de capas de cartón apiladas, no de vidrio.
6. **Las sombras no funcionan; los bordes sí.** En dark, la elevación se comunica con `outline` `#746A5C` a 1 px y cambio de superficie. Las sombras se reducen a opacidad 0 (`elevation: 0` con `surfaceTintColor: transparent` y borde explícito).
7. **El ocre capitán sube a `#E8B45C`** — la cinta iluminada por el reflector. Es el elemento que más gana en dark: el badge de capitán brilla de noche, que es exactamente cuando el capitán está trabajando.

**Lo que NO cambia entre modos:** la tipografía, el espaciado, los radios, la jerarquía y el vocabulario de componentes. Cambiar de tema no puede mover un solo píxel.

**Default e implementación:** `themeMode: ThemeMode.system` con un override manual en Ajustes (Claro / Oscuro / Automático). Si el sistema no informa, gana **claro**. Nota de producto: agregar en el futuro un auto-switch por hora local de Córdoba (UTC-3) para dispositivos sin dark automático — no es prioridad de v1.

---

## 4. Tipografía

Tres familias, todas en Google Fonts, todas con soporte completo de español (acentos, ñ, ¿, ¡).

### 4.1 Familias

**Display / Titulares — `Fraunces`**
Serif variable con contraste alto y formas ligeramente irregulares (nació con ejes `SOFT` y `WONK` justamente para eso). Tiene la calidez de una tipografía cortada a mano sin caer en el estilo "vintage barbería". Se eligió por descarte: una condensada tipo Bebas Neue es la voz del *marketing deportivo* (y ya la usa la campaña); una grotesca geométrica es la voz de la *startup*. La serif con carácter es la voz de lo que ya estaba ahí antes. Además, en un producto donde todo lo demás es sans, la serif marca jerarquía sin necesidad de subir tamaños — clave en pantallas de 5,5".
Pesos: 600 (SemiBold), 700 (Bold), 900 (Black).

**UI / Cuerpo — `Archivo`**
Grotesca de alto rendimiento, con eje de ancho, ideada para tablas y datos densos. Alta altura de x, aperturas amplias, números que no se confunden (el `1` tiene remate, el `0` es inequívoco frente a la `O`). Se eligió sobre Inter porque Inter es *demasiado* neutra: es la tipografía del dashboard SaaS y aporta exactamente la frialdad que estamos evitando. Archivo tiene una ligera rigidez industrial que combina con el ladrillo.
Pesos: 400, 500, 600, 700. Números con **tabular figures** (`tnum`) en toda la app — sin eso, un marcador que va de 0 a 1 se mueve y se ve barato.

**Acento manuscrito — `Caveat`**
Manuscrita realista, no caligráfica ni "cute". Es la birome sobre el cuaderno. **Presupuesto de uso: máximo un elemento por pantalla, nunca en texto funcional, nunca por debajo de 18 sp.** Se usa en estados vacíos, en el mensaje de bienvenida y en la nota del capitán al pie de la tarjeta de partido. Si aparece en más lugares, la dirección pasa de "hecha por alguien que juega" a "plantilla de Canva".

> **Nota para el dev Flutter:** el paquete `google_fonts` sirve instancias estáticas por peso; los ejes `SOFT`/`WONK` de Fraunces **no** son controlables desde el paquete. Si el equipo de diseño quiere el "wonk" activado, hay que bundlear el `.ttf` variable en `assets/fonts/` y declararlo en `pubspec.yaml`. El theme entregado usa las instancias estándar, que ya se ven bien. Decisión de v1: usar `google_fonts`, evaluar el bundle en v1.1 (también ahorra la primera descarga y elimina el flash de fuente).

### 4.2 Escala tipográfica

Base **17 sp**, no 16. Justificación: el capitán lee de pie, de noche, con el teléfono en una mano y muchas veces bajo luz de reflector que le quema la pupila. Un punto extra en el cuerpo es la mejora de accesibilidad más barata que existe y no cuesta ni una línea de layout si el espaciado se diseña alrededor.

| Rol | Familia | Tamaño | Peso | Line-height | Tracking | Uso |
|---|---|---|---|---|---|---|
| `display` | Fraunces | 40 sp | 900 | 44 sp (1.10) | -0.5 | Marcador final, número de capitán, onboarding |
| `h1` | Fraunces | 32 sp | 700 | 38 sp (1.19) | -0.3 | Título de pantalla ("Próximo partido") |
| `h2` | Fraunces | 26 sp | 700 | 32 sp (1.23) | -0.2 | Encabezado de sección, nombre del rival |
| `h3` | Archivo | 20 sp | 700 | 26 sp (1.30) | 0 | Título de tarjeta, nombre de jugador destacado |
| `title` | Archivo | 17 sp | 600 | 24 sp (1.41) | 0 | Título de fila de lista, encabezado de campo |
| `bodyLarge` | Archivo | 17 sp | 400 | 26 sp (1.53) | 0 | **Texto de cuerpo por defecto** |
| `bodyMedium` | Archivo | 15 sp | 400 | 22 sp (1.47) | 0 | Texto secundario, descripciones |
| `bodySmall` | Archivo | 13 sp | 400 | 20 sp (1.54) | 0.1 | Metadatos, timestamps |
| `label` (botón) | Archivo | 15 sp | 700 | 16 sp (1.07) | 0.2 | Labels de botón, tabs |
| `labelSmall` | Archivo | 13 sp | 600 | 16 sp (1.23) | 0.2 | Chips, labels de nav |
| `caption` | Archivo | 12 sp | 500 | 16 sp (1.33) | 0.1 | Ayuda de campo, pie de foto |
| `overline` | Archivo | 11 sp | 700 | 14 sp (1.27) | 1.2 | Encabezados de sección en MAYÚSCULA ("ESTA SEMANA") |
| `numeric` | Archivo (tnum) | 48 sp | 700 | 48 sp (1.00) | -1.0 | Estadísticas grandes, contadores |
| `manuscrito` | Caveat | 22 sp | 600 | 28 sp (1.27) | 0 | Acento; nunca funcional |

**Line-heights generosos en cuerpo (1.47–1.54).** Es deliberado: el aire entre líneas es lo que hace que un fondo de papel se lea como papel y no como pantalla gris. Es también lo que salva la legibilidad cuando el usuario está caminando.

**Reglas de aplicación**
- Nunca más de dos familias visibles simultáneamente en una pantalla (Fraunces + Archivo). Caveat es la tercera y es excepcional.
- Fraunces **nunca por debajo de 20 sp**: pierde detalle y se ensucia.
- Todos los números que puedan cambiar en vivo (marcador, cronómetro, contador de jugadores) usan `FontFeature.tabularFigures()`.
- MAYÚSCULA solo en `overline` y en el badge de capitán. En cualquier otro lado grita, y nuestra voz no grita.

---

## 5. Espaciado y grilla

### 5.1 Escala de espaciado

Base **4 dp**, escala no lineal:

| Token | dp | Uso típico |
|---|---|---|
| `space.0` | 0 | Reset |
| `space.1` | 4 | Separación ícono↔label, ajustes ópticos |
| `space.2` | 8 | Padding interno de chips, gap entre chips |
| `space.3` | 12 | Padding vertical de inputs, gap en listas densas |
| `space.4` | 16 | **Unidad base.** Padding de tarjeta, margen lateral de pantalla |
| `space.5` | 20 | Padding generoso de tarjeta destacada |
| `space.6` | 24 | Separación entre bloques de contenido |
| `space.8` | 32 | Separación entre secciones |
| `space.10` | 40 | Aire antes de un CTA principal |
| `space.12` | 48 | Padding vertical de estado vacío |
| `space.16` | 64 | Márgenes de pantallas ceremoniales (onboarding, resultado final) |

### 5.2 Grilla

- **Márgenes de pantalla:** 16 dp. En tarjetas destacadas de ancho completo, 20 dp de padding interno.
- **Columnas:** 4 columnas en móvil, gutter 16 dp. La app es mobile-only en v1; si aparece tablet, 8 columnas con gutter 24 y ancho máximo de contenido 600 dp centrado.
- **Ritmo vertical:** múltiplos de 4. Los bloques de contenido se separan con 24; las secciones con 32.
- **Zona del pulgar:** toda acción primaria vive en el tercio inferior (últimos 240 dp de pantalla). El FAB y el CTA de la pantalla se anclan abajo, nunca en la app bar. Esto no es estética, es el requisito de "una mano en la cancha".
- **Safe areas:** respetar siempre; en el bottom nav, sumar `MediaQuery.padding.bottom` al alto de 64 dp.

### 5.3 Radios de borde

Suaves pero no burbuja. Un radio muy alto se lee como app infantil; un radio 0 se lee como banco.

| Token | dp | Uso |
|---|---|---|
| `radius.xs` | 6 | Badges, indicadores pequeños |
| `radius.sm` | 10 | Chips, campos de texto, botones pequeños |
| `radius.md` | 14 | **Botones, tarjetas estándar** |
| `radius.lg` | 20 | Tarjeta de partido (la hero card), diálogos |
| `radius.xl` | 28 | Bottom sheets, contenedores ceremoniales |
| `radius.pill` | 999 | Chips de filtro, avatares, badge de capitán |

### 5.4 Elevaciones y sombras

**Las sombras son marrones, no negras.** Sombra negra sobre papel cálido = mancha gris sucia. La sombra se compone con `papel.900` (`#1F1B16`) a baja opacidad, lo que produce una sombra que se lee como sombra de objeto sobre mesa de madera.

| Token | Light | Uso |
|---|---|---|
| `elevation.0` | ninguna | Superficies planas, contenido sobre el fondo |
| `elevation.1` | `0 1px 2px rgba(31,27,22,.06)` + `0 1px 3px rgba(31,27,22,.04)` | Tarjetas en reposo |
| `elevation.2` | `0 2px 4px rgba(31,27,22,.08)` + `0 4px 8px rgba(31,27,22,.05)` | Tarjeta de partido, tira de acciones rápidas |
| `elevation.3` | `0 4px 8px rgba(31,27,22,.10)` + `0 8px 16px rgba(31,27,22,.06)` | FAB, menús, elementos arrastrados |
| `elevation.4` | `0 8px 16px rgba(31,27,22,.12)` + `0 16px 32px rgba(31,27,22,.08)` | Diálogos, bottom sheets |

**En dark mode todas las elevaciones son 0.** La jerarquía se comunica con la escala de superficies marrones + borde `outline` a 1 px. Cualquier sombra sobre `#14100C` es invisible o produce un halo sucio.

---

## 6. Iconografía

**Set recomendado: Phosphor Icons — peso `Regular` (trazo 1.5 px sobre grilla de 24).**
Alternativa sin dependencia: **Material Symbols Rounded**, `weight 400`, `grade 0`, `opsz 24`, `fill 0`.

Por qué Phosphor Regular: el trazo uniforme de 1.5 px y los terminales redondeados tienen una calidad "dibujada" que dialoga con el concepto sin ser ilustrativa. Material Symbols en su variante *Sharp* o *Outlined* es demasiado clínico para esta paleta; la variante *Rounded* es la única aceptable si se descarta la dependencia externa.

**Especificaciones**
- **Grilla:** 24 × 24 dp con 2 dp de padding óptico (el glifo vive en 20 × 20).
- **Trazo:** 1.5 px a 24 dp. Escala proporcional: 1.25 px a 20 dp, 2 px a 32 dp. Nunca hairline.
- **Tamaños:** 16 (inline en texto), 20 (chips, campos), **24 (por defecto)**, 32 (nav activa, acciones destacadas), 48 (estados vacíos).
- **Estados:** inactivo = trazo (`Regular`); activo/seleccionado = relleno (`Fill`) en `ladrillo.500`. El cambio trazo→relleno es más legible de noche y de reojo que un cambio de color solo.
- **Color por defecto:** `papel.700` en light, `#A99C8B` en dark. Nunca íconos de color salvo que porten significado semántico.
- **Íconos propios:** solo cuatro se dibujan a medida porque ningún set los tiene bien — **cinta de capitán**, **pelota Nº 5 gastada**, **arco sin red**, **billete/seña**. Todos con el mismo trazo de 1.5 px y la misma grilla, para que no se noten ajenos.
- **Prohibido:** emoji como ícono de UI, íconos multicolor, íconos con gradiente, la pelota de fútbol genérica de hexágonos (la usa toda app de fútbol del planeta).

---

## 7. Componentes clave

Alto mínimo de toque en todos: **48 dp**. Los tamaños "small" existen solo donde el elemento no es el objetivo táctil principal, y aun así llevan `MaterialTapTargetSize.padded`.

### 7.1 Botón primario — "Ladrillo"

**Anatomía.** Contenedor relleno, radio 14, padding 16 h / 14 v, alto **52 dp** (mayor que los 40 de Material: es un botón para dedo con guante o con la mano mojada). Label `Archivo 15/700`, tracking 0.2, color `papel.0`. Ícono opcional a la izquierda, 20 dp, gap 8. Ancho: por defecto se estira al ancho disponible menos márgenes (`FilledButton` full-width); en filas de dos acciones, cada uno al 50 % menos 12 de gap.

| Estado | Especificación |
|---|---|
| Default | Fondo `ladrillo.500`, label `papel.0`, elevación 0 |
| Hover (desktop/web) | Fondo `ladrillo.400`, overlay 8 % `papel.0` |
| Pressed | Fondo `ladrillo.600`, escala 0.98 en 120 ms `easeOut`, ripple `papel.0` a 12 % |
| Focus | Anillo exterior 2 px `ladrillo.600` con offset 2 px |
| Disabled | Fondo `papel.300`, label `papel.500`, sin sombra, sin ripple. **No se usa opacidad global** — un botón semitransparente sobre papel se ve como error de render |
| Loading | El label se reemplaza por `CircularProgressIndicator` de 20 dp, trazo 2.5, color `papel.0`. **El ancho del botón se congela** al del estado previo. Bloquea input pero no cambia el color de fondo: el capitán tiene que ver que su tap se registró |

### 7.2 Botón secundario — "Pasto"

Mismas medidas. Dos variantes:
- **Relleno pasto:** fondo `pasto.500`, label `papel.0` (7.54:1). Para acciones afirmativas que no compiten con la primaria ("Confirmar asistencia").
- **Contorno (outlined):** fondo transparente, borde 1.5 px `papel.500`, label `papel.900`. Es la variante por defecto cuando convive con un primario en la misma fila.

| Estado (outlined) | Especificación |
|---|---|
| Default | Borde 1.5 px `papel.500`, label `papel.900` |
| Hover | Fondo `papel.200`, borde `papel.600` |
| Pressed | Fondo `papel.300`, borde `papel.700`, escala 0.98 |
| Focus | Borde 2 px `ladrillo.600` |
| Disabled | Borde 1.5 px `papel.300`, label `papel.400` |
| Loading | Spinner 20 dp en `papel.700`, ancho congelado |

### 7.3 Botón terciario — "Texto"

Sin contenedor. Label `Archivo 15/600` en `ladrillo.600` (6.07:1 — se usa el 600 y no el 500 justamente por el contraste). Padding 12 h / 12 v, área de toque forzada a 48 dp de alto. Para acciones destructivas: label en `error` `#A81F2D`.

| Estado | Especificación |
|---|---|
| Default | Label `ladrillo.600`, sin fondo |
| Hover | Fondo `ladrillo.50`, radio 10 |
| Pressed | Fondo `ladrillo.100`, sin escala (es un target chico, la escala se lee como glitch) |
| Focus | Fondo `ladrillo.50` + borde 2 px `ladrillo.600` |
| Disabled | Label `papel.400` |
| Loading | Spinner 16 dp reemplazando el label |

### 7.4 Campo de texto

**Anatomía.** Contenedor relleno `papel.50` con borde inferior + contorno completo 1.5 px `papel.500`, radio 10, alto **56 dp**, padding 16 h / 16 v. Label flotante `Archivo 13/600` que sube al enfocar. Texto ingresado `Archivo 17/400` en `papel.900`. Placeholder `papel.600` (5.28:1 — legible, no decorativo). Helper text `caption 12/500` en `papel.600` a 6 dp del borde inferior. Ícono de sufijo 20 dp opcional.

| Estado | Especificación |
|---|---|
| Default | Fondo `papel.50`, borde 1.5 px `papel.500`, label `papel.600` |
| Focused | Borde **2 px** `ladrillo.500`, label `ladrillo.600`, fondo `papel.0`, cursor `ladrillo.500` |
| Filled | Igual que default; el label queda arriba en 13 sp |
| Error | Borde 2 px `error`, label y helper en `error`, ícono `warning-circle` 20 dp a la derecha. **Siempre con texto explicativo** — nunca solo el borde rojo |
| Disabled | Fondo `papel.200`, borde 1 px `papel.300`, texto `papel.500` |
| Loading / validando | Spinner 16 dp en el sufijo, borde se mantiene en focused |

**Detalle de cancha:** teclado numérico por defecto en montos y en cantidad de jugadores; `textCapitalization: words` en nombres. El capitán tipea poco y mal — cada tap que le ahorramos vale más que cualquier decisión de color.

### 7.5 Tarjeta de partido (`MatchCard`) — el componente insignia

Es la pantalla en miniatura. Si esto funciona, la dirección funciona.

**Anatomía, de arriba a abajo:**
1. **Banda superior de estado**, 4 dp de alto, ancho completo, esquinas superiores con radio 20: `pasto.500` si está confirmado, `warn` si faltan jugadores, `error` si está en riesgo de caerse, `papel.300` si es un partido pasado.
2. **Fila de encabezado** (padding 20): a la izquierda, día y hora en `h3 Archivo 20/700` (`"VIE 22 · 21:30"`); a la derecha, chip de estado (§7.7).
3. **Cancha y dirección** en `bodyMedium 15/400` `papel.600`, con ícono de pin 16 dp. Una sola línea, con elipsis.
4. **Fila de asistencia**: pila de avatares superpuestos (hasta 6 visibles, −12 dp de superposición, borde 2 px `papel.0` en cada uno) + contador `"+4"` en un círculo `papel.200`. A la derecha, `"14/16"` en `Archivo 17/700` con tabular figures. Si falta gente, el número va en `warn`.
5. **Divisor** `papel.300` a 1 px, con 16 dp de margen vertical.
6. **Fila de acción**: botón primario "Confirmar que voy" al 60 % del ancho + botón terciario "Ver detalle" al 40 %.
7. **Nota manuscrita opcional** al pie, en `Caveat 22`, `papel.700`: *"Traigan pecheras los del equipo 2"*. Es el único texto manuscrito de la pantalla y es contenido real escrito por el capitán, no decoración.

**Medidas:** ancho = pantalla − 32 dp de márgenes. Alto ≈ 232 dp sin nota, 272 con nota. Radio 20. Fondo `papel.0`. Elevación 2. Sin borde en light; en dark, borde 1 px `outline` y elevación 0.

| Estado | Especificación |
|---|---|
| Default | Como arriba |
| Pressed | Escala 0.985 en 140 ms, sombra baja a elevación 1 |
| Destacada (próximo partido) | Padding 24, radio 20, borde 2 px `ladrillo.200`, elevación 3 |
| Pasada | Contenido al 70 % de saturación, banda `papel.300`, sin botones — reemplazados por el marcador en `display 40/900` |
| Loading (skeleton) | Bloques `papel.200` con shimmer de `papel.100` a `papel.0`, 1400 ms, sin rebote |
| Cancelada | Banda `error`, título con tachado, chip "Se cayó" en `errorContainer` |

### 7.6 Avatar de jugador

Circular, foto o iniciales. Tamaños: **24** (inline), **32** (listas), **40** (por defecto), **56** (perfil en tarjeta), **96** (pantalla de perfil).

- **Fallback sin foto:** iniciales en `Archivo` peso 700, tamaño = 40 % del diámetro, sobre un fondo asignado de forma determinística por hash del `userId` entre seis tonos de la paleta (`ladrillo.200`, `pasto.200`, `ocre.300`, `papel.300`, `#9BB8CE`, `#D8B3A0`), siempre con texto `papel.900` encima (todos ≥ 7:1). Determinístico = el mismo amigo tiene siempre el mismo color, y eso construye reconocimiento.
- **Borde:** 2 px `papel.0` cuando está en una pila superpuesta; sin borde cuando está solo.
- **Anillo de capitán:** anillo `ocre.500` de 2.5 px con 2 dp de gap respecto del avatar.
- **Indicador de estado** (abajo a la derecha, 12 dp con borde 2 px `papel.0`): `ok` = confirmado, `warn` = tentativo, `papel.400` = sin responder, `error` = avisó que no va.

| Estado | Especificación |
|---|---|
| Default | Foto o iniciales |
| Pressed | Escala 0.94, 100 ms |
| Selected (armado de equipos) | Anillo 3 px `ladrillo.500` + check 16 dp en la esquina superior derecha |
| Disabled / no disponible | Escala de grises al 60 % + opacidad 0.5 |
| Loading | Círculo `papel.200` con shimmer |

### 7.7 Chip de posición

Para ARQ / DEF / MED / DEL y para estados ("Confirmado", "Debe", "Tentativo").

**Anatomía.** Alto **32 dp** (área de toque 48 con padding), padding 12 h, radio pill, label `labelSmall 13/600` en MAYÚSCULA con tracking 0.2. Ícono opcional 16 dp a la izquierda, gap 6.

**Colores por posición** — cada una tiene fondo de contenedor y texto propio, todos ≥ 7:1:
- **ARQ:** `#FBEBCF` / texto `#6B4708` (el arquero siempre viste distinto)
- **DEF:** `#D9E8F2` / texto `#133D59`
- **MED:** `pasto.100` `#C9E0D2` / texto `pasto.800` `#12301D`
- **DEL:** `ladrillo.100` `#F6D9D0` / texto `ladrillo.800` `#661A0B`

| Estado | Especificación |
|---|---|
| Default | Fondo de contenedor, sin borde |
| Selected (filtro) | Fondo `ladrillo.500`, texto `papel.0`, check 16 dp a la izquierda |
| Unselected (filtro) | Fondo transparente, borde 1.5 px `papel.500`, texto `papel.700` |
| Pressed | Overlay 8 % `papel.900` |
| Disabled | Fondo `papel.200`, texto `papel.500` |
| Loading | No aplica — un chip nunca carga; si el filtro tarda, carga la lista |

### 7.8 Bottom navigation

Cuatro destinos: **Partidos**, **Equipos**, **Stats**, **Grupo**. Cuatro y no cinco: el capitán decide rápido y una quinta opción siempre termina siendo el cajón de sastre.

**Anatomía.** Alto 64 dp + safe area. Fondo `papel.0`, borde superior 1 px `papel.300` (no sombra: la sombra hacia arriba sobre papel se ve como suciedad). Cada ítem: ícono 24 dp arriba, label `labelSmall 13/600` abajo, gap 4. Sin badge de notificación salvo en "Grupo".

| Estado | Especificación |
|---|---|
| Activo | Ícono relleno (`Fill`) `ladrillo.500`, label `ladrillo.600` peso 700, píldora de fondo `ladrillo.50` de 64 × 32 detrás del ícono |
| Inactivo | Ícono trazo `papel.600`, label `papel.600` peso 600 |
| Pressed | Ripple circular `ladrillo.100`, radio 24 |
| Disabled | No existe: un destino de nav nunca se deshabilita, se oculta |
| Con badge | Punto de 8 dp en `error` en la esquina superior derecha del ícono; con número, píldora de 16 dp de alto, `error` de fondo, texto `papel.0` a 11/700 |

Transición entre destinos: fade + slide de 8 dp, 200 ms `easeOutCubic`. Sin animación de píldora que se desliza — se lee como juguete.

### 7.9 Badge de capitán

El elemento más cargado de significado del kit. Es la cinta, no una corona.

**Variante pill (por defecto).** Alto 24 dp, padding 8 h, radio pill, fondo `ocre.100` `#FBEFD4`, borde 1 px `ocre.300`, ícono de cinta 14 dp en `ocre.700`, label `"CAPITÁN"` en `Archivo 11/700` tracking 1.2 color `ocre.700` `#8A5E10` (5.02:1 sobre papel ✅).
**Variante anillo.** Solo el anillo `ocre.500` de 2.5 px alrededor del avatar, sin texto. Para listas densas.
**Variante cinta.** Franja diagonal `ocre.500` de 6 dp cruzando la esquina superior izquierda de la tarjeta, con la sombra correspondiente. Para la tarjeta de perfil.

En dark, `ocre.100` → `#3D2F14`, borde `#6B5220`, texto e ícono → `ocre.600` `#E8B45C` (9.44:1).

| Estado | Especificación |
|---|---|
| Default | Como arriba |
| Pressed (si es tappable → "¿Qué hace el capitán?") | Fondo `ocre.300`, escala 0.96 |
| Disabled | No aplica: el badge es un hecho, no una acción |
| Loading | No aplica |

**Regla de Brand Guardian:** un solo badge de capitán por vista. Si hay dos capitanes en un grupo, se muestran ambos pero nunca junto a otros elementos ocre.

### 7.10 Estado vacío

El momento más importante para la voz de marca. Es donde POTRERO se gana el "hecho por alguien que juega".

**Anatomía, centrado vertical, padding 48 v / 32 h:**
1. **Ilustración de línea**, 120 × 120 dp, trazo 2 px en `papel.400`, un solo color. Arco sin red, pelota apoyada en tierra, cuaderno con la hoja en blanco. Nunca 3D, nunca personaje ilustrado, nunca gradiente.
2. **Título** en `h2 Fraunces 26/700` `papel.900`. Directo y cómplice: *"Todavía no hay partido"*, no *"No se encontraron resultados"*.
3. **Bajada** en `bodyMedium 15/400` `papel.600`, máximo dos líneas, ancho máximo 280 dp: *"Armá el del viernes antes de que alguien lo arme por vos."*
4. **CTA primario** (52 dp), ancho ajustado al contenido + 32 dp de padding.
5. **Nota manuscrita opcional** en `Caveat 22` `papel.500`, rotada −2°: *"Después no digas que no avisamos"*. Único lugar donde se permite rotación.

Variante de **error** (no de vacío): misma estructura, ilustración en `error` a 40 % de opacidad, título honesto (*"Se cayó la conexión"*), CTA "Reintentar" como botón secundario outlined. Sin códigos de error visibles al usuario.

### 7.11 Snackbar

**Anatomía.** Ancho = pantalla − 32, alto mínimo 52 dp, radio 14, padding 16 h / 14 v. Flota a **16 dp por encima del bottom nav** (nunca lo tapa — el capitán tiene que poder seguir navegando mientras lee). Elevación 3.

- **Neutro:** fondo `papel.900` `#1F1B16`, texto `papel.0` a 15/500, acción en `ladrillo.300` `#E08A72` peso 700 (contraste alto sobre tinta).
- **Éxito:** fondo `#1B4A29`, texto `#DCEDE2`, ícono `check-circle` 20 dp.
- **Error:** fondo `error` `#A81F2D`, texto `papel.0` (7.13:1 ✅), ícono `warning-circle` 20 dp.
- **Advertencia:** fondo `#6B4708`, texto `#FBEBCF`.

| Estado | Especificación |
|---|---|
| Entrada | Slide desde abajo 24 dp + fade, 240 ms `easeOutCubic` |
| Visible | 4 s (neutro/éxito), 6 s (error), indefinido si tiene acción destructiva con "Deshacer" |
| Salida | Fade + slide 16 dp hacia abajo, 180 ms `easeInCubic` |
| Descartable | Swipe horizontal en cualquier dirección |
| Con acción | Máximo una acción, label de una sola palabra ("Deshacer", "Ver", "Reintentar") |
| Cola | Máximo uno visible; el siguiente entra recién cuando salió el anterior |

---

## 8. Tres pantallas

### 8.1 "Próximo partido" (home)

Se abre y **lo primero que se ve es papel**, no una barra de navegación. El scroll arranca sin app bar fija: hay un encabezado que scrollea con el contenido, porque los 56 dp de una app bar permanente son 56 dp menos de partido.

**De arriba a abajo:**

Sobre el fondo `papel.100`, con 16 dp de margen y 20 de aire superior tras la status bar, aparece un saludo en `bodyMedium 15/400` `papel.600`: *"Buenas, Nico"*. Debajo, pegado, el título de pantalla en `h1 Fraunces 32/700` `papel.900`: **"Próximo partido"**. A la derecha del bloque, alineado a la línea del título, el avatar del usuario a 40 dp con su anillo ocre de capitán.

Un `overline 11/700` en `papel.600` con tracking 1.2 anuncia **"ESTA SEMANA"**, y 12 dp más abajo entra la **tarjeta de partido destacada** ocupando el ancho completo menos márgenes: banda superior verde `pasto.500` de 4 dp, *"VIE 22 · 21:30"* en Archivo 20/700, chip `Confirmado` a la derecha en `pasto.100`, la línea de cancha *"Complejo El Potrero · Bv. Los Alemanes 3400"* con su pin, la pila de seis avatares con el `+4`, el contador **"14/16"** con los dos últimos dígitos en `warn` porque faltan dos, y abajo del divisor las dos acciones: **"Confirmar que voy"** en ladrillo lleno y **"Ver detalle"** en texto. Al pie, en Caveat 22 apenas gris, la nota del capitán: *"Los del 2 traen pecheras"*.

32 dp de aire y aparece la **tira de acciones rápidas**: tres tarjetas cuadradas de 104 dp de lado, con scroll horizontal, fondo `papel.0`, radio 14, elevación 1. Cada una con ícono 32 dp arriba y label de dos palabras abajo: **"Armar equipos"** (ícono de cinta, en `ladrillo.500`), **"Cobrar la seña"** (billete, `pasto.500`), **"Subir fotos"** (cámara, `info`). Son los tres trabajos reales del capitán, en el orden en que ocurren.

Sigue el bloque **"Los que faltan"**: overline, y una lista horizontal de avatares de 56 dp de los jugadores sin responder, cada uno con su punto `papel.400` y el nombre corto debajo en `bodySmall 13`. Un tap sobre uno abre un sheet con **"Empujar por WhatsApp"** ya redactado — el capitán no escribe nada.

Después, `overline` **"PRÓXIMOS"** y dos tarjetas de partido en versión compacta (sin acciones, alto 148 dp), separadas por 12 dp.

Cierra la pantalla el **último resultado**: una tarjeta en estado "pasada", con el marcador **"6 – 4"** en `display Fraunces 40/900` centrado, los dos nombres de equipo debajo en `title 17/600`, y un botón terciario **"Ver las fotos (23)"**.

El **bottom nav** flota fijo con "Partidos" activo: ícono relleno ladrillo sobre su píldora `ladrillo.50`.

**Lo que hace que se sienta POTRERO:** el fondo cálido bajo tarjetas de cal, la sombra marrón suave, el título serif, y una sola línea manuscrita al pie de la tarjeta principal. Nada más. La contención es lo que evita el kitsch.

### 8.2 "Armar equipos con IA"

Es la pantalla donde la app justifica su existencia, y donde el riesgo es que se sienta un algoritmo decidiendo por el capitán. La composición está diseñada para que **el capitán siempre parezca el que decide** y la IA sea su ayudante.

App bar transparente con flecha de volver 24 dp a la izquierda y, a la derecha, un botón terciario **"Reiniciar"**. Título en `h1 Fraunces 32/700`: **"Armar equipos"**. Debajo, en `bodyMedium` `papel.600`: *"16 confirmados. Decime cómo los querés."*

Una fila de **chips de criterio** con scroll horizontal, altura 32, radio pill: **"Parejo"** (seleccionado por defecto, fondo `ladrillo.500`, texto cal, con check), **"Por posición"**, **"Mezclar los de siempre"**, **"Camisetas claras vs oscuras"**. Los nombres son de cancha, no de producto: nadie quiere "algoritmo de balanceo por rating ELO".

El cuerpo es la **cancha**: un rectángulo de altura 380 dp, fondo `pasto.500`, radio 20, con las líneas del campo dibujadas a 2 px en `papel.0` al 20 % de opacidad (círculo central, áreas, línea del medio) y un patrón de rayas de corte de pasto apenas perceptible (2 % de opacidad). Dividida por la línea del medio: arriba **Equipo Claro**, abajo **Equipo Oscuro**. Cada jugador es un avatar de 48 dp con anillo `papel.0` de 2 px, el nombre corto debajo en `Archivo 11/700` color `papel.0` con sombra sutil para que sobreviva sobre el verde, y un chip de posición de 20 dp de alto pegado abajo a la derecha. Los avatares se pueden **arrastrar de un lado al otro**: al levantar uno, escala 1.08, elevación 3, y el otro equipo se ilumina 6 % — porque cuando el capitán mueve un jugador, la app tiene que darle la razón, no advertirle.

Sobre el borde superior de la cancha, dos marcadores de **fuerza estimada**: dos barras de 6 dp de alto, `ocre.500` sobre `papel.300`, con el porcentaje al lado en `Archivo 15/700 tabular`. Se actualizan en vivo mientras arrastra, con 240 ms de `easeOutCubic`. Si la diferencia supera el 12 %, aparece un texto de una línea en `warn`: *"Quedó parejo para el lado del Claro"* — un comentario, no un bloqueo.

Debajo de la cancha, la **explicación de la IA** en una tarjeta `papel.0` de radio 14 con borde izquierdo de 3 px en `info`: ícono de tiza 20 dp y un texto de dos líneas en `bodyMedium`: *"Puse a Marce y al Colo separados: juntos ganaron los últimos 4."* Es la única aparición del azul en la pantalla y es intencional: la voz de la IA es una tiza en el pizarrón, no una entidad.

Al pie, fijo sobre el contenido con un degradado de `papel.100` transparente a sólido de 32 dp: botón primario a ancho completo **"Estos van"** (52 dp), y debajo, botón terciario centrado **"Barajar de nuevo"** con ícono de dados 20 dp. El primario dice "Estos van", no "Confirmar equipos": es el capitán hablando, no el software.

Durante el cálculo: los avatares saltan a posiciones con un stagger de 40 ms entre uno y otro, 320 ms cada uno, `easeOutBack` muy leve. Dura 900 ms en total y no hay spinner. La espera se siente como un reparto de cartas, que es exactamente lo que es.

### 8.3 "Estadísticas del jugador"

El riesgo acá es la app de fantasy: números fríos flotando en tarjetas. POTRERO trata las estadísticas como la **hoja de vida del jugador en el potrero** — la parte del cuaderno donde estaba anotado quién debía qué y quién metió cuántos.

Arranca con un **encabezado a sangre** de 220 dp: fondo `ladrillo.500` sólido con un patrón de textura de ladrillo al 4 % de opacidad. Centrado, el avatar de 96 dp con borde `papel.0` de 3 px y, si corresponde, el anillo ocre por fuera. Debajo, el nombre completo en `h1 Fraunces 32/700` `papel.0`, y bajo el nombre, en una fila, el chip de posición principal y el badge de capitán en su variante pill sobre fondo `ocre.100`.

El encabezado termina en una curva sutil (radio 28 en las esquinas inferiores del contenido que sube encima), y el contenido `papel.100` monta sobre el ladrillo con −24 dp de offset. Ese solape es lo que da la sensación de hoja apoyada sobre el ladrillo.

Primero, la **fila de tres números grandes** sobre `papel.0`, radio 20, elevación 2, padding 20, dividida por dos líneas verticales `papel.300`: **"47"** partidos, **"31"** goles, **"12"** asistencias. Cada número en `numeric Archivo 48/700` con tabular figures, `papel.900`, y el label debajo en `overline 11/700` `papel.600`. Sin flechitas de tendencia, sin porcentajes de variación: no es un dashboard financiero.

Sección **"CÓMO VIENE"**: overline, y debajo una tarjeta con el gráfico de los últimos 10 partidos — diez barras verticales de 8 dp de ancho con radio 4, altura proporcional a los goles, separadas 12 dp. Barras en `pasto.500`; la última en `ladrillo.500` para marcar el partido más reciente. Eje inexistente: debajo de cada barra, la fecha corta en `bodySmall 13` `papel.600` (`"22/8"`). Los partidos no jugados son barras vacías a 4 dp de alto en `papel.300`. El objetivo es que el capitán entienda la forma en dos segundos, no que lea el dato exacto.

Sección **"LA HOJA"**: una lista de filas de 56 dp separadas por divisores de 1 px `papel.300`, con label a la izquierda en `bodyLarge 17/400` y valor a la derecha en `Archivo 17/700 tabular`. Promedio de goles por partido, minutos jugados, tarjetas, veces elegido MVP, asistencia (%). La última fila, **"Deudas"**, se muestra en `ok` con *"Al día"* o en `warn` con el monto — porque en un grupo de fulbito la plata es una estadística.

Sección **"SE LLEVA BIEN CON"**: tres filas con avatar de 40 dp, nombre, y un texto de contexto en `bodySmall` `papel.600`: *"Ganaron 7 de 9 juntos"*. Es la estadística que la gente realmente comparte por WhatsApp, y por eso tiene su propio bloque en vez de estar escondida.

Cierra con una tarjeta de **medios**: grilla de 3 columnas con las últimas 6 fotos del jugador, celdas cuadradas de radio 10 y gap 4, y una última celda con **"+18"** sobre `papel.200`.

Al pie, botón secundario outlined a ancho completo: **"Compartir la hoja"** — genera una imagen vertical con el encabezado ladrillo, los tres números y el escudo del grupo, lista para el grupo de WhatsApp. Ese share es el motor de crecimiento del producto y por eso vive acá, no escondido en un menú.

---

## 9. Accesibilidad

**Tamaño de toque.** Mínimo **48 × 48 dp** en todo elemento interactivo, sin excepciones. Los botones primarios van a 52 dp de alto porque el contexto de uso (parado, de noche, con la mano mojada o con tierra) degrada la precisión motriz de forma medible. Separación mínima entre dos objetivos táctiles: 8 dp.

**Contraste.** Todos los pares texto/fondo del kit cumplen **WCAG 2.1 AA** y la mayoría llega a AAA (§2.6). Los elementos no textuales (bordes de input, contornos de botón, íconos funcionales) cumplen **3:1** mínimo. Los tres únicos colores que no cumplen para texto — `ocre.500`, `papel.400`, `papel.500` — están explícitamente marcados como decorativos o de borde en la tabla de tokens, y no deben usarse para texto bajo ninguna circunstancia. **El color nunca es el único portador de información:** todo estado lleva además ícono, texto o cambio de forma (trazo→relleno). Esto cubre a los daltónicos, que en la población objetivo (hombres) son ~8 %.

**Texto ampliado.** El layout soporta `textScaleFactor` hasta **2.0** sin pérdida de contenido:
- Ninguna altura de contenedor es fija donde hay texto: se usan `minHeight` + `IntrinsicHeight` o `Wrap`.
- Los botones crecen en alto, nunca truncan el label. Filas de dos botones que no entran colapsan a columna (`Wrap` con `runSpacing: 12`).
- Las tarjetas de partido: si el escalado supera 1.5, el chip de estado baja a una segunda línea y la pila de avatares reduce a 4 visibles.
- Los números grandes (`numeric 48 sp`) se limitan con `MediaQuery.textScaler.clamp(maxScaleFactor: 1.3)` — a partir de ahí un "47" no aporta nada y rompe todo. Es la única limitación de escalado del kit y está documentada como excepción consciente.
- El bottom nav oculta los labels por encima de 1.6× y agrega tooltips.

**Uso en exteriores, de día.** El escenario más duro: sol de Córdoba a las 18 h sobre una pantalla al 100 % de brillo. La combinación tinta sobre papel (15:1) es la mejor posible en ese contexto, mejor que el dark mode, que en luz directa se convierte en un espejo. Refuerzos: nada de texto crítico bajo 13 sp; nada de texto sobre foto sin capa de scrim (`papel.900` a 55 % mínimo); ninguna sombra transporta significado; los estados de selección se marcan con relleno, no con un cambio sutil de tono.

**Uso en exteriores, de noche.** El dark mode baja la luminancia general y elimina el destello de una pantalla clara en la cara del capitán a las 23 h. El fondo tierra `#14100C` en vez de negro puro reduce el efecto de halo alrededor del texto claro en pantallas OLED. Los targets no se reducen nunca: de noche se falla más el tap, no menos.

**Lectores de pantalla.** Todo ícono sin label tiene `Semantics(label:)` en español rioplatense y sin abreviar ("Confirmar que voy al partido del viernes", no "Confirmar"). Los avatares anuncian nombre + estado ("Marce, confirmado"). La cancha del armado de equipos expone un orden de lectura equipo por equipo, y el drag tiene alternativa accesible: tap largo → menú "Mover al otro equipo".

**Motricidad y una mano.** Toda acción primaria en el tercio inferior. Nada crítico en la esquina superior derecha (la zona más lejana para un pulgar derecho en pantallas de 6,1"+). Los gestos de swipe siempre tienen equivalente en botón visible.

**Movimiento reducido.** Con `MediaQuery.disableAnimations` en true: se eliminan la escala de press, el stagger del armado de equipos y el shimmer de los skeletons (pasan a un `papel.200` estático). Las transiciones de página quedan en fade de 100 ms.

---

## 10. Motion

Corto, seco, sin rebote exagerado. La app tiene que sentirse rápida antes que simpática.

| Token | Duración | Curva | Uso |
|---|---|---|---|
| `motion.instant` | 100 ms | `easeOut` | Feedback de press, checkbox |
| `motion.fast` | 140 ms | `easeOutCubic` | Escala de tarjetas, hover |
| `motion.base` | 200 ms | `easeOutCubic` | Transición de tab, aparición de chip |
| `motion.medium` | 240 ms | `easeOutCubic` | Snackbar, expansión de tarjeta |
| `motion.slow` | 320 ms | `easeOutCubic` | Bottom sheet, transición de pantalla |
| `motion.stagger` | 40 ms | — | Delay entre elementos de una lista animada |
| `motion.emphasis` | 400 ms | `easeOutBack` (overshoot 1.05 máx) | Solo en el reparto de equipos y el badge de capitán al ganarlo |

Nada supera los 400 ms. Nada rebota más de una vez.

---

## 11. Cuándo elegir esta dirección

POTRERO gana en estos escenarios de negocio:

1. **Si la apuesta es retención y comunidad, no adquisición.** Una interfaz cálida hace que la gente quiera volver a mirar las fotos del partido y la hoja de estadísticas. La estética fría es mejor para convertir en el store; ésta es mejor para que a los cuatro meses el grupo siga usando la app.
2. **Si el share por WhatsApp es el motor de crecimiento.** Una tarjeta de estadísticas en papel y ladrillo, mezclada entre capturas de pantalla y memes en un grupo, se destaca visualmente. Otra pantalla negra con verde neón parece un banner publicitario y se scrollea de largo. Diferenciarse en el feed del grupo importa más que diferenciarse en el store.
3. **Si el posicionamiento es "de acá, hecho por nosotros" contra competidores internacionales.** Cualquier app global de gestión de partidos va a ser azul o verde neón sobre oscuro. La calidez es defendible como territorio local y es difícil de copiar sin sonar impostado.
4. **Si el producto va a incorporar mucha foto y video.** El media sharing es un pilar declarado. Sobre fondo cálido claro, las fotos de canchas con luz artificial amarilla se ven integradas. Sobre negro, las fotos flotan como ventanas recortadas y compiten con la UI.
5. **Si el equipo puede sostener la disciplina.** POTRERO exige contención: una sola familia manuscrita, un solo acento ocre, ilustraciones de un solo color. Es una dirección que se defiende con lo que **no** se agrega. Si el equipo tiende a sumar (más colores, más ilustraciones, más texturas), esta dirección se degrada más rápido que una dark minimalista.

**Cuándo NO elegirla:** si la prioridad de los próximos seis meses es conversión pura en el store con creatividades pagas, o si el producto va a virar hacia analítica dura (heatmaps, tracking, datos de rendimiento). Ahí la coherencia con el kit de campaña negro+neón vale más que la calidez.

---

## 12. Contras honestos

Sin vender nada. Estos son los problemas reales de esta dirección:

1. **El rojo primario compite con el rojo de error.** Es el defecto estructural del kit. Lo mitigamos con separación de hue (ladrillo 13° vs carmín 353°), prohibiendo el error como relleno de botón y exigiendo ícono + texto en todo estado de error. Pero un usuario apurado, de noche, puede confundir un botón primario con una alerta. **Se necesita testear con al menos 8 capitanes reales antes de fijar la paleta.** Si falla, el plan B es mover el primario hacia terracota más naranja (`#CF5B23`, hue 22°) y bajar el error a un vino más frío (`#8E1B2C`).

2. **Es más difícil de ejecutar bien que una dark.** Una interfaz oscura perdona: el negro tapa desprolijidades de sombra, de recorte de imagen y de inconsistencia de espaciado. Un fondo claro y cálido las expone todas. Cada foto que suba un usuario con un balance de blancos raro va a chocar con el papel. Esto es carga de QA visual permanente, no un problema de una vez. **Se necesita un filtro de warm-tone automático sobre las miniaturas de foto** — costo de desarrollo real, no gratis.

3. **Contradice el kit de campaña 100 Capitanes.** El marketing es negro + verde neón + dorado. El producto sería papel + ladrillo + pasto. Se puede argumentar como "trailer vs película", y funciona, pero es un argumento que hay que sostener y explicar en cada revisión. Si la campaña escala en inversión paga, la disonancia entre el creativo y la primera pantalla post-instalación puede costar retención D1. **Requiere rediseñar el onboarding como un puente cromático explícito** (arranca oscuro, aclara en tres pantallas): trabajo extra que las otras dos direcciones no necesitan.

4. **El light-first juega en contra del uso nocturno, que es el pico real.** El partido se juega de noche. El dark mode está resuelto, pero es una *traducción*, no el diseño nativo. Va a estar siempre un escalón por debajo en refinamiento respecto de una dirección diseñada dark-first, y va a consumir más tiempo de mantenimiento (cada componente nuevo se diseña dos veces, y la versión oscura es la que se revisa menos).

5. **Riesgo de leerse como "app de recetas" o "app de café de especialidad".** El territorio de neutrales cálidos + serif está muy transitado por lifestyle y wellness. La distancia entre "potrero cordobés" y "brunch en Güemes" es más corta de lo que parece, y depende casi enteramente del contenido — de la foto real de la cancha, del copy cómplice, de la nota manuscrita del capitán. **Con contenido placeholder o fotos de stock, esta dirección se cae al instante.** Es la más dependiente del contenido real de las tres.

6. **La serif tiene costo de rendimiento y de riesgo tipográfico.** Fraunces es una fuente pesada; vía `google_fonts` implica descarga en el primer arranque y un posible flash. Bundlearla suma ~200 KB al APK por peso. Y en pantallas de baja densidad (todavía hay muchos Android gama baja en el target) el contraste de trazo de una serif se degrada más que una grotesca. **Hay que testear en un dispositivo de 720p real antes de cerrar.**

7. **El ocre capitán es frágil.** 2.15:1 sobre papel significa que sirve para decorar y para nada más. Si producto pide en algún momento "que el badge del capitán sea más visible", la única salida legítima es agrandar o agregar texto, no subir la saturación. Es una restricción que va a haber que defender más de una vez.

---

## 13. Archivos de este kit

| Archivo | Contenido |
|---|---|
| `README.md` | Este documento |
| `tokens.json` | Design tokens (primitivos + semánticos, light y dark) |
| `flutter_theme.dart` | `ThemeData` completo Material 3, listo para copiar al proyecto |

**Para arrancar en Flutter:**

```yaml
# pubspec.yaml
dependencies:
  google_fonts: ^6.2.1
```

```dart
MaterialApp(
  theme: FulbitoTheme.light,
  darkTheme: FulbitoTheme.dark,
  themeMode: ThemeMode.system,
  home: const HomeScreen(),
);
```
