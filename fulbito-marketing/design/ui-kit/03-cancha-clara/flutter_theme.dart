// =============================================================================
//  FulbitoApp — UI Kit 03 "CANCHA CLARA"
//  Theme de Material 3 para Flutter. Claro y oscuro.
//
//  Concepto: utilitaria, clara, rápida. Un solo acento (azul eléctrico) que
//  nunca decora: sólo marca lo accionable. La tipografía carga la identidad.
//
//  Dependencias: google_fonts: ^6.2.1   (Archivo + JetBrains Mono)
//  Nada más. Ningún asset propio salvo los 5 íconos custom del kit.
//
//  Uso:
//    MaterialApp(
//      theme: FulbitoTheme.light,
//      darkTheme: FulbitoTheme.dark,
//      themeMode: ThemeMode.system,   // el capitán ya eligió en su teléfono
//    );
//
//  Nota de versión: este archivo usa la API de Flutter 3.27+
//  (`CardThemeData`, `WidgetStateProperty`). En Flutter < 3.27 reemplazar
//  `CardThemeData` por `CardTheme` y `WidgetState*` por `MaterialState*`.
//
//  UI Designer · NEXUS · 2026-08-22
// =============================================================================

import 'dart:ui' show FontFeature;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// =============================================================================
//  1. COLOR
// =============================================================================

/// Paleta completa de Cancha Clara.
///
/// Regla que ordena todo el sistema: si algo es [azulBase], se toca.
/// Si no se toca, no es azul. Única excepción: el badge de capitán.
abstract class FulbitoColors {
  FulbitoColors._();

  // --- Acento: azul eléctrico -------------------------------------------------
  /// Acento primario. 5.9:1 sobre blanco. El único color saturado del sistema.
  static const Color azulBase = Color(0xFF1B4DFF);

  /// Pressed / hover en modo claro. 8.5:1 con blanco.
  static const Color azulPresionado = Color(0xFF1339CC);

  /// Texto de acento sobre superficies tintadas. 9.9:1 sobre [azulTinta].
  static const Color azulHundido = Color(0xFF0E2B99);

  /// Acento en modo oscuro. 6.6:1 sobre [cal1000].
  static const Color azulMedio = Color(0xFF6E8CFF);

  /// Pressed en modo oscuro.
  static const Color azulClaro = Color(0xFF95AAFF);

  /// Tinte de acento (8% de presencia). Pressed del botón terciario.
  static const Color azulTinta = Color(0xFFE8EDFF);

  /// Tinte mínimo. Fondo del bloque de explicación de la IA.
  static const Color azulVelo = Color(0xFFF3F6FF);

  /// Tinte de acento en modo oscuro.
  static const Color azulNocturno = Color(0xFF1A2140);

  // --- Neutrales: escala Cal --------------------------------------------------
  // Por la cal de las líneas de la cancha. Matiz ~218°, saturación 6-14%.
  // Hacen el 90% del trabajo visual de esta dirección.
  static const Color cal0    = Color(0xFFFFFFFF); // superficie
  static const Color cal25   = Color(0xFFFAFBFC); // fondo de app
  static const Color cal50   = Color(0xFFF4F6F8); // superficie hundida
  static const Color cal100  = Color(0xFFEAEDF1); // relleno neutro
  static const Color cal200  = Color(0xFFDCE0E7); // borde sutil / divisor
  static const Color cal300  = Color(0xFFC3C9D4); // borde de campo de texto
  static const Color cal400  = Color(0xFF98A2B3); // borde de botón / disabled
  static const Color cal500  = Color(0xFF6B7688); // texto terciario · 4.6:1
  static const Color cal600  = Color(0xFF57616F); // texto secundario · 6.3:1
  static const Color cal700  = Color(0xFF3E4653); // íconos
  static const Color cal800  = Color(0xFF2A303A); // énfasis medio
  static const Color cal900  = Color(0xFF191D24); // snackbar, tooltip
  static const Color cal1000 = Color(0xFF0F1115); // tinta · 18.9:1 sobre blanco

  // --- Superficies de modo oscuro --------------------------------------------
  // No es la dirección "Nocturna": es la misma app con la luz apagada.
  // Nunca #000000 puro (smearing en OLED al scrollear).
  static const Color nocheBg            = Color(0xFF0F1115);
  static const Color nocheSurface       = Color(0xFF15181E);
  static const Color nocheSurfaceRaised = Color(0xFF1C2028);
  static const Color nocheBorder        = Color(0xFF252A33);
  static const Color nocheBorderStrong  = Color(0xFF39404C);
  static const Color nocheTextPrimary   = Color(0xFFF4F6F8); // 17.4:1
  static const Color nocheTextSecondary = Color(0xFFA8B1C0); // 8.7:1
  static const Color nocheTextTertiary  = Color(0xFF8A93A3); // 5.9:1
  static const Color nocheTextDisabled  = Color(0xFF5A6272);

  // --- Semánticos ------------------------------------------------------------
  // Cada uno tiene variante de texto (contraste alto) y de relleno.
  // El verde de éxito NO es #1DB954 y el error NO es #C8391B: esos colores
  // pertenecen a las otras dos direcciones.
  static const Color confirmado     = Color(0xFF0E7A4B); // 5.4:1 con blanco
  static const Color confirmadoFill = Color(0xFFE3F5EC);
  static const Color confirmadoDark = Color(0xFF35C98B); // 8.9:1 sobre nocheBg

  static const Color corto     = Color(0xFFC2183C); // 6.0:1 con blanco
  static const Color cortoFill = Color(0xFFFDE8EC);
  static const Color cortoDark = Color(0xFFFF6B85); // 6.9:1 sobre nocheBg

  static const Color ojo       = Color(0xFF9A5B00); // texto · 5.4:1 con blanco
  static const Color ojoStrong = Color(0xFFE8A317); // relleno · 8.7:1 con cal1000
  static const Color ojoFill   = Color(0xFFFDF0D9);
  static const Color ojoDark   = Color(0xFFF5B33C); // 10.3:1 sobre nocheBg

  static const Color dato     = Color(0xFF00707F); // 5.8:1 con blanco
  static const Color datoFill = Color(0xFFE0F4F6);
  static const Color datoDark = Color(0xFF3FC7D6); // 9.3:1 sobre nocheBg

  // --- Overlays --------------------------------------------------------------
  static const Color scrimLight = Color(0x660F1115);
  static const Color scrimDark  = Color(0x99000000);
}

// =============================================================================
//  2. GEOMETRÍA, ESPACIADO Y MOVIMIENTO
// =============================================================================

/// Escala de espaciado. Base 4. El aire es el material principal de esta
/// dirección: 32 entre secciones no es negociable.
abstract class FulbitoSpacing {
  FulbitoSpacing._();

  static const double s0  = 0;
  static const double s1  = 2;
  static const double s2  = 4;
  static const double s3  = 8;
  static const double s4  = 12;
  static const double s5  = 16;
  static const double s6  = 20;  // padding de pantalla y de tarjeta
  static const double s7  = 24;  // gap entre tarjetas
  static const double s8  = 32;  // gap entre secciones
  static const double s9  = 40;  // aire arriba del dato-héroe
  static const double s10 = 48;
  static const double s11 = 64;  // aire de estado vacío
  static const double s12 = 80;

  // Semánticos
  static const double screenPaddingH   = s6;
  static const double screenPaddingTop = s9;
  static const double cardPadding      = s6;
  static const double sectionGap       = s8;
  static const double listItemGap      = s4;
  static const double inlineGap        = s3;

  // Grilla
  static const int    gridColumns      = 4;
  static const double gridGutter       = s5;
  static const double maxContentWidth  = 560;
}

/// Radios contenidos a propósito: de 20 para arriba en un botón la app empieza
/// a parecerse a un juego, y no lo es.
abstract class FulbitoRadii {
  FulbitoRadii._();

  static const double none = 0;
  static const double xs   = 6;   // chips de posición, badges
  static const double sm   = 10;  // botones, campos de texto
  static const double md   = 14;  // tarjetas
  static const double lg   = 20;  // bottom sheets, diálogos
  static const double full = 999; // avatares, pills

  static final BorderRadius brXs = BorderRadius.circular(xs);
  static final BorderRadius brSm = BorderRadius.circular(sm);
  static final BorderRadius brMd = BorderRadius.circular(md);
  static final BorderRadius brLg = BorderRadius.circular(lg);
  static final BorderRadius brSheet =
      const BorderRadius.vertical(top: Radius.circular(lg));
}

/// Medidas de componentes. Los targets van a 48 mínimo (por encima de los 44
/// de Apple) porque el capitán opera con una mano, de noche y a veces mojada.
abstract class FulbitoSizes {
  FulbitoSizes._();

  static const double touchTargetMin  = 48;
  static const double buttonPrimary   = 56;
  static const double buttonSecondary = 48;
  static const double buttonTertiary  = 44;
  static const double input           = 56;
  static const double chip            = 28;
  static const double listRow         = 72;
  static const double tableRow        = 44;
  static const double appBar          = 56;
  static const double bottomNav       = 64;
  static const double snackbarMin     = 52;
  static const double badgeCaptain    = 20;

  static const double avatarXs = 28;
  static const double avatarSm = 40;
  static const double avatarMd = 56;
  static const double avatarLg = 80;

  static const double iconXs    = 16;
  static const double iconSm    = 20;
  static const double iconMd    = 24;
  static const double iconNav   = 28;
  static const double iconEmpty = 32;

  static const double strokeIcon      = 2;
  static const double strokeIconNavOn  = 2.25;

  static const double borderHairline = 1;
  static const double border         = 1.5;
  static const double borderFocus    = 2;
  static const double accentBar      = 4;
}

/// Sin rebotes, sin overshoot, sin confeti. La única animación con carácter del
/// sistema es el reordenamiento de equipos ([slow] + [stagger]), porque ahí sí
/// queremos que se vea trabajar.
abstract class FulbitoMotion {
  FulbitoMotion._();

  static const Duration instant = Duration(milliseconds: 90);
  static const Duration fast    = Duration(milliseconds: 140);
  static const Duration base    = Duration(milliseconds: 200);
  static const Duration slow    = Duration(milliseconds: 280);
  static const Duration exit    = Duration(milliseconds: 120);
  static const Duration stagger = Duration(milliseconds: 20);

  /// Mínimo que un spinner queda en pantalla, para que no titile.
  static const Duration minLoadingVisible = Duration(milliseconds: 400);

  /// Mínimo que la IA "piensa": una respuesta instantánea se lee como
  /// una respuesta no pensada.
  static const Duration minAiThinking = Duration(milliseconds: 900);

  static const Curve standard   = Cubic(0.2, 0, 0, 1);
  static const Curve accelerate = Cubic(0.4, 0, 1, 1);
}

/// Elevaciones casi planas: la jerarquía la hace el aire, no la profundidad.
/// En oscuro las sombras no se ven, así que se reemplazan por borde + luminancia.
abstract class FulbitoElevation {
  FulbitoElevation._();

  static const List<BoxShadow> e0 = <BoxShadow>[];

  /// Bottom nav, app bar al scrollear.
  static const List<BoxShadow> e2 = <BoxShadow>[
    BoxShadow(color: Color(0x0F0F1115), offset: Offset(0, 1), blurRadius: 2),
  ];

  /// Bottom sheet, snackbar, menú.
  static const List<BoxShadow> e3 = <BoxShadow>[
    BoxShadow(
      color: Color(0x140F1115),
      offset: Offset(0, 6),
      blurRadius: 16,
      spreadRadius: -2,
    ),
  ];

  /// Diálogo modal.
  static const List<BoxShadow> e4 = <BoxShadow>[
    BoxShadow(
      color: Color(0x240F1115),
      offset: Offset(0, 16),
      blurRadius: 40,
      spreadRadius: -8,
    ),
  ];
}

// =============================================================================
//  3. TIPOGRAFÍA
// =============================================================================

/// Escala tipográfica de Cancha Clara.
///
/// Familias:
///  - **Archivo** (Omnibus-Type, Buenos Aires): display, títulos, UI y cuerpo.
///    Grotesca de señalética: legible a 11sp y a 44sp. Que la tipografía sea
///    rioplatense es coherencia de marca hasta la última capa.
///  - **JetBrains Mono**: sólo bloques de datos tabulares (~3% del texto).
///    Le avisa al ojo "esto es un dato exacto, se puede comparar en columna".
///
/// El salto de 15sp (body) a 44sp (display) es de casi 3× a propósito: la
/// jerarquía tiene que resolverse antes de leer.
abstract class FulbitoText {
  FulbitoText._();

  static const String familySans = 'Archivo';
  static const String familyMono = 'JetBrains Mono';

  static const List<FontFeature> _tabular = <FontFeature>[
    FontFeature.tabularFigures(),
  ];

  static TextStyle _sans({
    required double size,
    required FontWeight weight,
    required double lineHeight,
    double letterSpacing = 0,
    bool tabular = false,
  }) {
    return GoogleFonts.archivo(
      fontSize: size,
      fontWeight: weight,
      height: lineHeight / size,
      letterSpacing: letterSpacing,
      fontFeatures: tabular ? _tabular : null,
    );
  }

  static TextStyle _mono({
    required double size,
    required FontWeight weight,
    required double lineHeight,
    double letterSpacing = 0,
  }) {
    return GoogleFonts.jetBrainsMono(
      fontSize: size,
      fontWeight: weight,
      height: lineHeight / size,
      letterSpacing: letterSpacing,
      fontFeatures: _tabular,
    );
  }

  // --- Escala ----------------------------------------------------------------

  /// 44/800, tracking −1.5%. El dato principal de la pantalla.
  /// Uno por pantalla, sin excepción. "21:00", "8.4", "$4.500".
  static TextStyle get display => _sans(
        size: 44,
        weight: FontWeight.w800,
        lineHeight: 44,
        letterSpacing: -0.66,
        tabular: true,
      );

  /// 32/700. Título de pantalla cuando no hay dato-héroe.
  static TextStyle get h1 => _sans(
        size: 32,
        weight: FontWeight.w700,
        lineHeight: 36,
        letterSpacing: -0.32,
      );

  /// 26/700. Nombre de equipo en el armado, monto secundario.
  static TextStyle get h2 => _sans(
        size: 26,
        weight: FontWeight.w700,
        lineHeight: 32,
        letterSpacing: -0.13,
      );

  /// 20/600. Encabezado de sección, nombre en tarjeta destacada.
  static TextStyle get h3 => _sans(
        size: 20,
        weight: FontWeight.w600,
        lineHeight: 26,
        letterSpacing: -0.05,
      );

  /// 17/400. Lectura en sheets, estados vacíos y campos de texto.
  static TextStyle get bodyLarge =>
      _sans(size: 17, weight: FontWeight.w400, lineHeight: 24);

  /// 15/400. Cuerpo por default.
  static TextStyle get body =>
      _sans(size: 15, weight: FontWeight.w400, lineHeight: 22);

  /// 15/600. Lo que hay que resaltar dentro del cuerpo.
  static TextStyle get bodyStrong =>
      _sans(size: 15, weight: FontWeight.w600, lineHeight: 22);

  /// 13/400. Metadatos y ayuda de campo. Piso absoluto del sistema.
  static TextStyle get caption => _sans(
        size: 13,
        weight: FontWeight.w400,
        lineHeight: 18,
        letterSpacing: 0.07,
      );

  /// 11/700, +8%, MAYÚSCULAS. El único uso de mayúsculas del sistema.
  /// Etiquetas de sección, chips de posición, badge de capitán.
  static TextStyle get overline => _sans(
        size: 11,
        weight: FontWeight.w700,
        lineHeight: 14,
        letterSpacing: 0.88,
      );

  /// 16/600. Botones y bottom nav.
  static TextStyle get label => _sans(
        size: 16,
        weight: FontWeight.w600,
        lineHeight: 20,
        letterSpacing: 0.08,
      );

  /// JetBrains Mono 15/500 tabular. Celdas de tabla, montos en columna, códigos.
  static TextStyle get data =>
      _mono(size: 15, weight: FontWeight.w500, lineHeight: 20);

  /// JetBrains Mono 22/700 tabular. Marcador, promedio destacado.
  static TextStyle get dataLarge => _mono(
        size: 22,
        weight: FontWeight.w700,
        lineHeight: 26,
        letterSpacing: -0.11,
      );

  /// Mapeo a los slots de Material 3.
  static TextTheme themeFor(Color primary, Color secondary) {
    return TextTheme(
      displayLarge:  display.copyWith(color: primary),
      displayMedium: h1.copyWith(color: primary),
      displaySmall:  h2.copyWith(color: primary),
      headlineLarge: h1.copyWith(color: primary),
      headlineMedium: h2.copyWith(color: primary),
      headlineSmall: h3.copyWith(color: primary),
      titleLarge:    h3.copyWith(color: primary),
      titleMedium:   bodyLarge.copyWith(color: primary, fontWeight: FontWeight.w600),
      titleSmall:    bodyStrong.copyWith(color: primary),
      bodyLarge:     bodyLarge.copyWith(color: primary),
      bodyMedium:    body.copyWith(color: primary),
      bodySmall:     caption.copyWith(color: secondary),
      labelLarge:    label.copyWith(color: primary),
      labelMedium:   bodyStrong.copyWith(color: secondary, fontSize: 13),
      labelSmall:    overline.copyWith(color: secondary),
    );
  }
}

// =============================================================================
//  4. THEME
// =============================================================================

abstract class FulbitoTheme {
  FulbitoTheme._();

  // ---------------------------------------------------------------------------
  //  ColorScheme
  // ---------------------------------------------------------------------------

  static const ColorScheme lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: FulbitoColors.azulBase,
    onPrimary: FulbitoColors.cal0,
    primaryContainer: FulbitoColors.azulTinta,
    onPrimaryContainer: FulbitoColors.azulHundido,
    secondary: FulbitoColors.cal1000,
    onSecondary: FulbitoColors.cal0,
    secondaryContainer: FulbitoColors.cal100,
    onSecondaryContainer: FulbitoColors.cal800,
    tertiary: FulbitoColors.dato,
    onTertiary: FulbitoColors.cal0,
    tertiaryContainer: FulbitoColors.datoFill,
    onTertiaryContainer: FulbitoColors.dato,
    error: FulbitoColors.corto,
    onError: FulbitoColors.cal0,
    errorContainer: FulbitoColors.cortoFill,
    onErrorContainer: FulbitoColors.corto,
    surface: FulbitoColors.cal0,
    onSurface: FulbitoColors.cal1000,
    onSurfaceVariant: FulbitoColors.cal600,
    surfaceContainerLowest: FulbitoColors.cal0,
    surfaceContainerLow: FulbitoColors.cal25,
    surfaceContainer: FulbitoColors.cal50,
    surfaceContainerHigh: FulbitoColors.cal100,
    surfaceContainerHighest: FulbitoColors.cal100,
    surfaceDim: FulbitoColors.cal50,
    surfaceBright: FulbitoColors.cal0,
    outline: FulbitoColors.cal400,
    outlineVariant: FulbitoColors.cal200,
    inverseSurface: FulbitoColors.cal900,
    onInverseSurface: FulbitoColors.cal0,
    inversePrimary: FulbitoColors.azulMedio,
    shadow: FulbitoColors.cal1000,
    scrim: FulbitoColors.cal1000,
    surfaceTint: Colors.transparent, // sin tinte de M3: la app no se tiñe
  );

  static const ColorScheme darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: FulbitoColors.azulMedio,
    onPrimary: FulbitoColors.cal1000,
    primaryContainer: FulbitoColors.azulNocturno,
    onPrimaryContainer: FulbitoColors.azulMedio,
    secondary: FulbitoColors.nocheTextPrimary,
    onSecondary: FulbitoColors.cal1000,
    secondaryContainer: FulbitoColors.nocheBorder,
    onSecondaryContainer: FulbitoColors.nocheTextPrimary,
    tertiary: FulbitoColors.datoDark,
    onTertiary: FulbitoColors.cal1000,
    tertiaryContainer: FulbitoColors.nocheSurfaceRaised,
    onTertiaryContainer: FulbitoColors.datoDark,
    error: FulbitoColors.cortoDark,
    onError: FulbitoColors.cal1000,
    errorContainer: FulbitoColors.nocheSurfaceRaised,
    onErrorContainer: FulbitoColors.cortoDark,
    surface: FulbitoColors.nocheSurface,
    onSurface: FulbitoColors.nocheTextPrimary,
    onSurfaceVariant: FulbitoColors.nocheTextSecondary,
    surfaceContainerLowest: FulbitoColors.nocheBg,
    surfaceContainerLow: FulbitoColors.nocheSurface,
    surfaceContainer: FulbitoColors.nocheSurfaceRaised,
    surfaceContainerHigh: FulbitoColors.nocheSurfaceRaised,
    surfaceContainerHighest: FulbitoColors.nocheBorder,
    surfaceDim: FulbitoColors.nocheBg,
    surfaceBright: FulbitoColors.nocheSurfaceRaised,
    outline: FulbitoColors.nocheBorderStrong,
    outlineVariant: FulbitoColors.nocheBorder,
    inverseSurface: FulbitoColors.cal50,
    onInverseSurface: FulbitoColors.cal1000,
    inversePrimary: FulbitoColors.azulBase,
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    surfaceTint: Colors.transparent,
  );

  // ---------------------------------------------------------------------------
  //  Themes públicos
  // ---------------------------------------------------------------------------

  static ThemeData get light => _build(
        scheme: lightScheme,
        canvas: FulbitoColors.cal25,
        textPrimary: FulbitoColors.cal1000,
        textSecondary: FulbitoColors.cal600,
        textTertiary: FulbitoColors.cal500,
        textDisabled: FulbitoColors.cal400,
        iconColor: FulbitoColors.cal700,
        borderSubtle: FulbitoColors.cal200,
        borderDefault: FulbitoColors.cal300,
        borderStrong: FulbitoColors.cal400,
        sunken: FulbitoColors.cal50,
        neutralFill: FulbitoColors.cal100,
        accent: FulbitoColors.azulBase,
        accentPressed: FulbitoColors.azulPresionado,
        accentMuted: FulbitoColors.azulTinta,
        onAccent: FulbitoColors.cal0,
        accentDisabledFill: FulbitoColors.cal100,
        inverseFill: FulbitoColors.cal900,
        onInverse: FulbitoColors.cal0,
        snackActionColor: FulbitoColors.azulMedio,
        selectedFill: FulbitoColors.cal1000,
        onSelected: FulbitoColors.cal0,
        pressedOverlay: const Color(0x0F0F1115),
      );

  static ThemeData get dark => _build(
        scheme: darkScheme,
        canvas: FulbitoColors.nocheBg,
        textPrimary: FulbitoColors.nocheTextPrimary,
        textSecondary: FulbitoColors.nocheTextSecondary,
        textTertiary: FulbitoColors.nocheTextTertiary,
        textDisabled: FulbitoColors.nocheTextDisabled,
        iconColor: FulbitoColors.nocheTextSecondary,
        borderSubtle: FulbitoColors.nocheBorder,
        borderDefault: FulbitoColors.nocheBorder,
        borderStrong: FulbitoColors.nocheBorderStrong,
        sunken: FulbitoColors.nocheBg,
        neutralFill: FulbitoColors.nocheBorder,
        accent: FulbitoColors.azulMedio,
        accentPressed: FulbitoColors.azulClaro,
        accentMuted: FulbitoColors.azulNocturno,
        onAccent: FulbitoColors.cal1000,
        accentDisabledFill: FulbitoColors.nocheBorder,
        inverseFill: FulbitoColors.nocheSurfaceRaised,
        onInverse: FulbitoColors.nocheTextPrimary,
        snackActionColor: FulbitoColors.azulMedio,
        selectedFill: FulbitoColors.nocheTextPrimary,
        onSelected: FulbitoColors.cal1000,
        pressedOverlay: const Color(0x14F4F6F8),
      );

  // ---------------------------------------------------------------------------
  //  Constructor interno
  // ---------------------------------------------------------------------------

  static ThemeData _build({
    required ColorScheme scheme,
    required Color canvas,
    required Color textPrimary,
    required Color textSecondary,
    required Color textTertiary,
    required Color textDisabled,
    required Color iconColor,
    required Color borderSubtle,
    required Color borderDefault,
    required Color borderStrong,
    required Color sunken,
    required Color neutralFill,
    required Color accent,
    required Color accentPressed,
    required Color accentMuted,
    required Color onAccent,
    required Color accentDisabledFill,
    required Color inverseFill,
    required Color onInverse,
    required Color snackActionColor,
    required Color selectedFill,
    required Color onSelected,
    required Color pressedOverlay,
  }) {
    final TextTheme textTheme = FulbitoText.themeFor(textPrimary, textSecondary);

    // Borde de campo de texto reutilizable.
    OutlineInputBorder inputBorder(Color color, double width) {
      return OutlineInputBorder(
        borderRadius: FulbitoRadii.brSm,
        borderSide: BorderSide(color: color, width: width),
      );
    }

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      brightness: scheme.brightness,
      scaffoldBackgroundColor: canvas,
      canvasColor: canvas,
      dividerColor: borderSubtle,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      // Sin ripple en todo el sistema: el cambio de color es la respuesta y se
      // percibe más rápido. El pressed se resuelve en 90ms.
      splashFactory: NoSplash.splashFactory,
      visualDensity: VisualDensity.standard,
      textTheme: textTheme,
      primaryColor: accent,
      // OJO: no se setea `fontFamily` en ThemeData. Haria
      // textTheme.apply(fontFamily: 'Archivo') sobre los estilos que ya trae
      // google_fonts y, al no haber un asset con ese nombre en pubspec, el
      // texto caeria al fallback del sistema.

      // -----------------------------------------------------------------------
      //  App bar: sin fondo, sin sombra, sin título por default.
      // -----------------------------------------------------------------------
      appBarTheme: AppBarTheme(
        backgroundColor: canvas,
        surfaceTintColor: Colors.transparent,
        foregroundColor: textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        toolbarHeight: FulbitoSizes.appBar,
        titleTextStyle: FulbitoText.h3.copyWith(color: textPrimary),
        iconTheme: IconThemeData(color: iconColor, size: FulbitoSizes.iconMd),
        actionsIconTheme:
            IconThemeData(color: iconColor, size: FulbitoSizes.iconMd),
      ),

      iconTheme: IconThemeData(
        color: iconColor,
        size: FulbitoSizes.iconMd,
      ),

      dividerTheme: DividerThemeData(
        color: borderSubtle,
        thickness: FulbitoSizes.borderHairline,
        space: FulbitoSizes.borderHairline,
      ),

      // -----------------------------------------------------------------------
      //  Botón primario. La única cosa azul con relleno. Uno por pantalla.
      //  56dp: es siempre la acción principal y cae en la zona del pulgar.
      //  El scale 0.98 del pressed se aplica en el widget (no es theme-able).
      // -----------------------------------------------------------------------
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) return accentDisabledFill;
            if (states.contains(WidgetState.pressed)) return accentPressed;
            return accent;
          }),
          foregroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) return textDisabled;
            return onAccent;
          }),
          overlayColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
          elevation: const WidgetStatePropertyAll<double>(0),
          shadowColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
          surfaceTintColor:
              const WidgetStatePropertyAll<Color>(Colors.transparent),
          minimumSize: const WidgetStatePropertyAll<Size>(
            Size(64, FulbitoSizes.buttonPrimary),
          ),
          // Sin altura máxima: con texto ampliado el botón pasa a dos líneas.
          padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: FulbitoSpacing.s7),
          ),
          shape: WidgetStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: FulbitoRadii.brSm),
          ),
          textStyle: WidgetStatePropertyAll<TextStyle>(FulbitoText.label),
          iconSize: const WidgetStatePropertyAll<double>(FulbitoSizes.iconSm),
          animationDuration: FulbitoMotion.instant,
          splashFactory: NoSplash.splashFactory,
          tapTargetSize: MaterialTapTargetSize.padded,
          visualDensity: VisualDensity.standard,
        ),
      ),

      // -----------------------------------------------------------------------
      //  Botón secundario. No es azul a propósito: dos botones azules obligan
      //  a leer para elegir, y leer cuesta.
      // -----------------------------------------------------------------------
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.pressed)) return sunken;
            return Colors.transparent;
          }),
          foregroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) return textDisabled;
            return textPrimary;
          }),
          side: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return BorderSide(color: borderSubtle, width: FulbitoSizes.border);
            }
            if (states.contains(WidgetState.pressed)) {
              return BorderSide(color: textTertiary, width: FulbitoSizes.border);
            }
            return BorderSide(color: borderStrong, width: FulbitoSizes.border);
          }),
          overlayColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
          elevation: const WidgetStatePropertyAll<double>(0),
          minimumSize: const WidgetStatePropertyAll<Size>(
            Size(64, FulbitoSizes.buttonSecondary),
          ),
          padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: FulbitoSpacing.s6),
          ),
          shape: WidgetStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: FulbitoRadii.brSm),
          ),
          textStyle: WidgetStatePropertyAll<TextStyle>(FulbitoText.label),
          iconSize: const WidgetStatePropertyAll<double>(FulbitoSizes.iconSm),
          animationDuration: FulbitoMotion.instant,
          splashFactory: NoSplash.splashFactory,
          tapTargetSize: MaterialTapTargetSize.padded,
        ),
      ),

      // -----------------------------------------------------------------------
      //  Botón terciario (texto). 44dp de alto, 48dp de área táctil.
      // -----------------------------------------------------------------------
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.pressed)) return accentMuted;
            return Colors.transparent;
          }),
          foregroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) return textDisabled;
            return accent;
          }),
          overlayColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
          minimumSize: const WidgetStatePropertyAll<Size>(
            Size(48, FulbitoSizes.buttonTertiary),
          ),
          padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: FulbitoSpacing.s4),
          ),
          shape: WidgetStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: FulbitoRadii.brSm),
          ),
          textStyle: WidgetStatePropertyAll<TextStyle>(FulbitoText.label),
          iconSize: const WidgetStatePropertyAll<double>(FulbitoSizes.iconSm),
          animationDuration: FulbitoMotion.instant,
          splashFactory: NoSplash.splashFactory,
          tapTargetSize: MaterialTapTargetSize.padded,
        ),
      ),

      // -----------------------------------------------------------------------
      //  Campo de texto. Label EXTERNO permanente (floating: never): al escribir
      //  el floating label desaparece y el capitán pierde el contexto.
      //  Texto a 17sp para poder verificar lo escrito sin acercar el teléfono.
      // -----------------------------------------------------------------------
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: scheme.surface,
        isDense: false,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        constraints: const BoxConstraints(minHeight: FulbitoSizes.input),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.s5,
          vertical: FulbitoSpacing.s5,
        ),
        border: inputBorder(borderDefault, FulbitoSizes.border),
        enabledBorder: inputBorder(borderDefault, FulbitoSizes.border),
        hoveredBorder: inputBorder(borderStrong, FulbitoSizes.border),
        focusedBorder: inputBorder(accent, FulbitoSizes.borderFocus),
        errorBorder: inputBorder(scheme.error, FulbitoSizes.borderFocus),
        focusedErrorBorder: inputBorder(scheme.error, FulbitoSizes.borderFocus),
        disabledBorder: inputBorder(borderSubtle, FulbitoSizes.border),
        labelStyle: FulbitoText.caption.copyWith(color: textSecondary),
        floatingLabelStyle: FulbitoText.caption.copyWith(color: textSecondary),
        hintStyle: FulbitoText.bodyLarge.copyWith(color: textDisabled),
        helperStyle: FulbitoText.caption.copyWith(color: textTertiary),
        helperMaxLines: 2,
        // El error nunca es sólo color: el widget agrega el ícono alert-circle.
        errorStyle: FulbitoText.caption.copyWith(color: scheme.error),
        errorMaxLines: 2,
        prefixIconColor: iconColor,
        suffixIconColor: iconColor,
        prefixStyle: FulbitoText.bodyLarge.copyWith(color: textPrimary),
        suffixStyle: FulbitoText.bodyLarge.copyWith(color: textSecondary),
      ),

      // -----------------------------------------------------------------------
      //  Tarjeta. No tiene sombra: tiene borde. La jerarquía la hace el aire.
      //  (Flutter < 3.27: cambiar CardThemeData por CardTheme.)
      // -----------------------------------------------------------------------
      cardTheme: CardThemeData(
        color: scheme.surface,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: FulbitoRadii.brMd,
          side: BorderSide(color: borderSubtle, width: FulbitoSizes.border),
        ),
      ),

      // -----------------------------------------------------------------------
      //  Chip de posición (ARQ/DEF/MED/DEL). Seleccionado va en NEGRO, no en
      //  azul: el azul está reservado para "esto ejecuta algo", y un filtro no
      //  ejecuta, describe.
      // -----------------------------------------------------------------------
      chipTheme: ChipThemeData(
        backgroundColor: neutralFill,
        selectedColor: selectedFill,
        disabledColor: sunken,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        selectedShadowColor: Colors.transparent,
        elevation: 0,
        pressElevation: 0,
        showCheckmark: false,
        labelStyle: FulbitoText.overline.copyWith(color: textSecondary),
        secondaryLabelStyle: FulbitoText.overline.copyWith(color: onSelected),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        labelPadding: EdgeInsets.zero,
        side: BorderSide.none,
        shape: RoundedRectangleBorder(borderRadius: FulbitoRadii.brXs),
        iconTheme: IconThemeData(color: iconColor, size: FulbitoSizes.iconXs),
        // El área táctil de 48dp aunque el chip mida 28 se resuelve en el
        // widget: `materialTapTargetSize` no existe en ChipThemeData.
      ),

      // -----------------------------------------------------------------------
      //  Bottom navigation. Sin píldora de indicador: el color ya lo dice y el
      //  fondo agrega ruido. Labels siempre visibles.
      // -----------------------------------------------------------------------
      navigationBarTheme: NavigationBarThemeData(
        height: FulbitoSizes.bottomNav,
        backgroundColor: scheme.surface,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        indicatorShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(FulbitoRadii.full)),
        ),
        elevation: 0,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return FulbitoText.overline.copyWith(color: accent);
          }
          return FulbitoText.overline
              .copyWith(color: textSecondary, fontWeight: FontWeight.w600);
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(color: accent, size: FulbitoSizes.iconNav);
          }
          return IconThemeData(color: iconColor, size: FulbitoSizes.iconNav);
        }),
        overlayColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
      ),

      // -----------------------------------------------------------------------
      //  Snackbar. Oscuro incluso en modo claro: es lo único que tiene que
      //  ganarle la atención al contenido, y en una interfaz blanca la única
      //  forma de gritar sin usar color es invertir.
      //  Se ancla arriba del bottom nav (margen desde el widget).
      // -----------------------------------------------------------------------
      snackBarTheme: SnackBarThemeData(
        backgroundColor: inverseFill,
        contentTextStyle: FulbitoText.body.copyWith(color: onInverse),
        actionTextColor: snackActionColor,
        disabledActionTextColor: textDisabled,
        behavior: SnackBarBehavior.floating,
        elevation: 6,
        insetPadding: const EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.s5,
          vertical: FulbitoSpacing.s4,
        ),
        shape: RoundedRectangleBorder(borderRadius: FulbitoRadii.brSm),
        actionOverflowThreshold: 0.25,
        showCloseIcon: false,
        closeIconColor: onInverse,
      ),

      // -----------------------------------------------------------------------
      //  Extras coherentes con el sistema
      // -----------------------------------------------------------------------
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: scheme.surfaceContainer,
        surfaceTintColor: Colors.transparent,
        modalBackgroundColor: scheme.surfaceContainer,
        elevation: 0,
        modalElevation: 0,
        showDragHandle: true,
        dragHandleColor: borderStrong,
        dragHandleSize: const Size(40, 4),
        shape: RoundedRectangleBorder(borderRadius: FulbitoRadii.brSheet),
        clipBehavior: Clip.antiAlias,
      ),

      listTileTheme: ListTileThemeData(
        minVerticalPadding: FulbitoSpacing.s4,
        horizontalTitleGap: FulbitoSpacing.s4,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.s6,
          vertical: FulbitoSpacing.s2,
        ),
        titleTextStyle: FulbitoText.body.copyWith(color: textPrimary),
        subtitleTextStyle: FulbitoText.caption.copyWith(color: textTertiary),
        leadingAndTrailingTextStyle:
            FulbitoText.data.copyWith(color: textPrimary),
        iconColor: iconColor,
        tileColor: Colors.transparent,
        selectedTileColor: accentMuted,
        selectedColor: accent,
        shape: RoundedRectangleBorder(borderRadius: FulbitoRadii.brSm),
        visualDensity: VisualDensity.standard,
      ),

      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: accent,
        linearTrackColor: neutralFill,
        circularTrackColor: Colors.transparent,
        linearMinHeight: 4,
        strokeWidth: 2,
        strokeCap: StrokeCap.round,
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) return accentDisabledFill;
          if (states.contains(WidgetState.selected)) return accent;
          return Colors.transparent;
        }),
        checkColor: WidgetStatePropertyAll<Color>(onAccent),
        side: BorderSide(color: borderStrong, width: FulbitoSizes.border),
        shape: RoundedRectangleBorder(borderRadius: FulbitoRadii.brXs),
        overlayColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
        splashRadius: 0,
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return onAccent;
          return scheme.surface;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) return accentDisabledFill;
          if (states.contains(WidgetState.selected)) return accent;
          return neutralFill;
        }),
        trackOutlineColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return Colors.transparent;
          return borderStrong;
        }),
        overlayColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
        splashRadius: 0,
      ),

      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: inverseFill,
          borderRadius: FulbitoRadii.brXs,
        ),
        textStyle: FulbitoText.caption.copyWith(color: onInverse),
        padding: const EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.s4,
          vertical: FulbitoSpacing.s3,
        ),
        waitDuration: FulbitoMotion.base,
      ),

      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),

      extensions: <ThemeExtension<dynamic>>[
        FulbitoSemantics(
          success: scheme.brightness == Brightness.light
              ? FulbitoColors.confirmado
              : FulbitoColors.confirmadoDark,
          successFill: scheme.brightness == Brightness.light
              ? FulbitoColors.confirmadoFill
              : const Color(0x2435C98B),
          warning: scheme.brightness == Brightness.light
              ? FulbitoColors.ojo
              : FulbitoColors.ojoDark,
          warningBold: scheme.brightness == Brightness.light
              ? FulbitoColors.ojoStrong
              : FulbitoColors.ojoDark,
          warningFill: scheme.brightness == Brightness.light
              ? FulbitoColors.ojoFill
              : const Color(0x24F5B33C),
          info: scheme.brightness == Brightness.light
              ? FulbitoColors.dato
              : FulbitoColors.datoDark,
          infoFill: scheme.brightness == Brightness.light
              ? FulbitoColors.datoFill
              : const Color(0x243FC7D6),
          errorFill: scheme.brightness == Brightness.light
              ? FulbitoColors.cortoFill
              : const Color(0x24FF6B85),
          accentVeil: scheme.brightness == Brightness.light
              ? FulbitoColors.azulVelo
              : FulbitoColors.azulNocturno,
          accentMuted: accentMuted,
          onAccentMuted: scheme.brightness == Brightness.light
              ? FulbitoColors.azulHundido
              : FulbitoColors.azulMedio,
          textTertiary: textTertiary,
          borderSubtle: borderSubtle,
          borderDefault: borderDefault,
          borderStrong: borderStrong,
          // Cuando MediaQuery.highContrast == true, todos los bordes suben a
          // este color y a 2dp.
          borderHighContrast: scheme.brightness == Brightness.light
              ? FulbitoColors.cal500
              : FulbitoColors.nocheTextTertiary,
          captainBadge: accent,
          onCaptainBadge: onAccent,
          pressedOverlay: pressedOverlay,
        ),
      ],
    );
  }
}

// =============================================================================
//  5. THEME EXTENSION — colores semánticos y de componente
//     Lo que ColorScheme de M3 no tiene lugar para expresar.
//     Uso: Theme.of(context).extension<FulbitoSemantics>()!.success
// =============================================================================

@immutable
class FulbitoSemantics extends ThemeExtension<FulbitoSemantics> {
  const FulbitoSemantics({
    required this.success,
    required this.successFill,
    required this.warning,
    required this.warningBold,
    required this.warningFill,
    required this.info,
    required this.infoFill,
    required this.errorFill,
    required this.accentVeil,
    required this.accentMuted,
    required this.onAccentMuted,
    required this.textTertiary,
    required this.borderSubtle,
    required this.borderDefault,
    required this.borderStrong,
    required this.borderHighContrast,
    required this.captainBadge,
    required this.onCaptainBadge,
    required this.pressedOverlay,
  });

  /// "Confirmado": jugador que dijo que va, seña acreditada.
  final Color success;
  final Color successFill;

  /// "Ojo": faltan jugadores, vence el pago, viene lluvia.
  final Color warning;
  final Color warningBold;
  final Color warningFill;

  /// "Dato": tips de la IA, cambios de sede.
  final Color info;
  final Color infoFill;

  /// "Cortó": se bajó un jugador, pago rechazado.
  final Color errorFill;

  /// Única superficie tintada de la app: el bloque donde la IA explica
  /// por qué armó los equipos así.
  final Color accentVeil;
  final Color accentMuted;
  final Color onAccentMuted;

  final Color textTertiary;
  final Color borderSubtle;
  final Color borderDefault;
  final Color borderStrong;
  final Color borderHighContrast;

  /// Badge de capitán: el único elemento azul no tocable del sistema.
  /// No es dorado, no es escudo, no es medalla. Es una etiqueta.
  final Color captainBadge;
  final Color onCaptainBadge;

  final Color pressedOverlay;

  @override
  FulbitoSemantics copyWith({
    Color? success,
    Color? successFill,
    Color? warning,
    Color? warningBold,
    Color? warningFill,
    Color? info,
    Color? infoFill,
    Color? errorFill,
    Color? accentVeil,
    Color? accentMuted,
    Color? onAccentMuted,
    Color? textTertiary,
    Color? borderSubtle,
    Color? borderDefault,
    Color? borderStrong,
    Color? borderHighContrast,
    Color? captainBadge,
    Color? onCaptainBadge,
    Color? pressedOverlay,
  }) {
    return FulbitoSemantics(
      success: success ?? this.success,
      successFill: successFill ?? this.successFill,
      warning: warning ?? this.warning,
      warningBold: warningBold ?? this.warningBold,
      warningFill: warningFill ?? this.warningFill,
      info: info ?? this.info,
      infoFill: infoFill ?? this.infoFill,
      errorFill: errorFill ?? this.errorFill,
      accentVeil: accentVeil ?? this.accentVeil,
      accentMuted: accentMuted ?? this.accentMuted,
      onAccentMuted: onAccentMuted ?? this.onAccentMuted,
      textTertiary: textTertiary ?? this.textTertiary,
      borderSubtle: borderSubtle ?? this.borderSubtle,
      borderDefault: borderDefault ?? this.borderDefault,
      borderStrong: borderStrong ?? this.borderStrong,
      borderHighContrast: borderHighContrast ?? this.borderHighContrast,
      captainBadge: captainBadge ?? this.captainBadge,
      onCaptainBadge: onCaptainBadge ?? this.onCaptainBadge,
      pressedOverlay: pressedOverlay ?? this.pressedOverlay,
    );
  }

  @override
  FulbitoSemantics lerp(covariant FulbitoSemantics? other, double t) {
    if (other == null) return this;
    Color c(Color a, Color b) => Color.lerp(a, b, t)!;
    return FulbitoSemantics(
      success: c(success, other.success),
      successFill: c(successFill, other.successFill),
      warning: c(warning, other.warning),
      warningBold: c(warningBold, other.warningBold),
      warningFill: c(warningFill, other.warningFill),
      info: c(info, other.info),
      infoFill: c(infoFill, other.infoFill),
      errorFill: c(errorFill, other.errorFill),
      accentVeil: c(accentVeil, other.accentVeil),
      accentMuted: c(accentMuted, other.accentMuted),
      onAccentMuted: c(onAccentMuted, other.onAccentMuted),
      textTertiary: c(textTertiary, other.textTertiary),
      borderSubtle: c(borderSubtle, other.borderSubtle),
      borderDefault: c(borderDefault, other.borderDefault),
      borderStrong: c(borderStrong, other.borderStrong),
      borderHighContrast: c(borderHighContrast, other.borderHighContrast),
      captainBadge: c(captainBadge, other.captainBadge),
      onCaptainBadge: c(onCaptainBadge, other.onCaptainBadge),
      pressedOverlay: c(pressedOverlay, other.pressedOverlay),
    );
  }
}
