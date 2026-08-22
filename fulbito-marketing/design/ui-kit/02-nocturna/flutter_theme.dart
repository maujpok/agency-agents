// =============================================================================
// FulbitoApp — UI Kit "NOCTURNA" (dirección 02)
// Tema Material 3, dark-first. Continuidad con la campaña "100 Capitanes".
//
// Dependencias: google_fonts (única externa).
// Flutter: >= 3.27 (usa CardThemeData y WidgetStateProperty).
//
// NOTAS DE VERSIÓN
//  · Flutter <= 3.26: cambiá `CardThemeData(` por `CardTheme(`.
//  · Flutter >= 3.29, si el analizador se queja del input: cambiá
//    `InputDecorationTheme(` por `InputDecorationThemeData(`. Los parámetros
//    son idénticos.
//  · El AppBar se estila por pantalla a propósito: en "Próximo partido" es
//    transparente sobre el canvas y en pantallas de flujo es surface2 sólido.
//    Por eso no hay AppBarTheme global.
//
// PRODUCCIÓN: reemplazar google_fonts por fuentes empaquetadas como assets.
// La resolución por red deja la primera pantalla sin tipografía en conexiones
// malas, y eso pasa seguido.
// =============================================================================

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// =============================================================================
// 1. COLORES
// =============================================================================

/// Primitivos de color de NOCTURNA.
///
/// Los cuatro colores de campaña son [verdeCancha], [negroNoche], [blancoLinea]
/// y [doradoCapitan]. Todo lo demás deriva de ellos o resuelve una necesidad
/// que la campaña no tenía (superficies elevadas, semánticos de sistema).
abstract class FulbitoColors {
  FulbitoColors._();

  // --- Marca (campaña 100 Capitanes) ----------------------------------------
  static const Color verdeCancha = Color(0xFF1DB954);
  static const Color negroNoche = Color(0xFF0A0A0A);
  static const Color blancoLinea = Color(0xFFF5F5F5);
  static const Color doradoCapitan = Color(0xFFF5A623);
  static const Color verdeOscuro = Color(0xFF0F7A35);
  static const Color rojoUrgencia = Color(0xFFE53935);

  // --- Rampa verde -----------------------------------------------------------
  static const Color green50 = Color(0xFFE7FAEE);
  static const Color green100 = Color(0xFFC2F2D6);
  static const Color green200 = Color(0xFF8FE7B3);
  static const Color green300 = Color(0xFF56D98D);

  /// Verde de texto e ícono en dark. Iguala el peso óptico del relleno.
  static const Color green400 = Color(0xFF2FCA6E);
  static const Color green500 = verdeCancha;
  static const Color green600 = Color(0xFF17A048);

  /// Verde de texto en light. 5.3:1 sobre el canvas claro.
  static const Color green700 = verdeOscuro;
  static const Color green800 = Color(0xFF0A5726);
  static const Color green900 = Color(0xFF063418);

  // --- Rampa dorada (uso exclusivo del rol de capitán) -----------------------
  static const Color gold300 = Color(0xFFFFD07A);
  static const Color gold500 = doradoCapitan;
  static const Color gold700 = Color(0xFFB87A0C);

  /// Dorado cuando tiene que ser texto sobre superficie clara. 5.8:1.
  static const Color gold900 = Color(0xFF8F5A00);
  static const Color goldContainerDark = Color(0xFF2A1E05);
  static const Color goldContainerLight = Color(0xFFFFF4DF);

  // --- Superficies dark (la escala ES la escala de elevación) ----------------
  static const Color darkCanvas = negroNoche; // e0
  static const Color darkSurface1 = Color(0xFF121513); // e1 tarjetas
  static const Color darkSurface2 = Color(0xFF181C19); // e2 nav, inputs
  static const Color darkSurface3 = Color(0xFF1F2420); // e3 sheets, menús
  static const Color darkSurface4 = Color(0xFF262C27); // e4 diálogos, snackbar
  static const Color darkSurface5 = Color(0xFF2E3630); // e5 tooltips, drag

  // --- Texto y trazo dark ----------------------------------------------------
  static const Color darkTextPrimary = blancoLinea; // 18.2:1 sobre canvas
  static const Color darkTextSecondary = Color(0xFFA8B0AA); // 8.3:1 sobre e1
  static const Color darkTextTertiary = Color(0xFF8A938C); // 5.8:1 sobre e1
  static const Color darkTextDisabled = Color(0xFF5A625C); // exento WCAG
  static const Color darkBorderSubtle = Color(0xFF232823); // decorativo
  static const Color darkBorderDefault = Color(0xFF3A423C); // sobre foto
  static const Color darkBorderStrong = Color(0xFF6E7770); // funcional, 3.7:1

  // --- Superficies y texto light --------------------------------------------
  static const Color lightCanvas = Color(0xFFFAFBFA);
  static const Color lightSurface1 = Color(0xFFFFFFFF);
  static const Color lightSurface2 = Color(0xFFF2F4F2);
  static const Color lightSurface3 = Color(0xFFE8EBE8);
  static const Color lightSurface4 = Color(0xFFFFFFFF); // se separa por sombra
  static const Color lightSurface5 = Color(0xFF0E120F); // snackbar invertido

  static const Color lightTextPrimary = Color(0xFF0E120F); // 18.6:1
  static const Color lightTextSecondary = Color(0xFF4C534E); // 7.6:1
  static const Color lightTextTertiary = Color(0xFF6B736D); // 4.7:1
  static const Color lightTextDisabled = Color(0xFFA2A9A4);
  static const Color lightBorderSubtle = Color(0xFFE2E6E3);
  static const Color lightBorderDefault = Color(0xFFCBD2CD);
  static const Color lightBorderStrong = Color(0xFF7C857E); // funcional, 3.8:1

  // --- Semánticos: error -----------------------------------------------------
  static const Color errorTextDark = Color(0xFFFF6B6B); // 6.6:1 sobre e1
  static const Color errorFill = rojoUrgencia;
  static const Color errorTextLight = Color(0xFFC62828); // 5.4:1
  static const Color errorContainerDark = Color(0xFF3A1210);
  static const Color errorContainerLight = Color(0xFFFDECEC);

  // --- Semánticos: advertencia ----------------------------------------------
  /// Corrido deliberadamente al naranja para que nunca se confunda con
  /// [doradoCapitan]. El dorado no puede significar un estado.
  static const Color warningDark = Color(0xFFFF7A2F); // 7.1:1 sobre e1
  static const Color warningLight = Color(0xFFA64B00); // 5.6:1
  static const Color warningContainerDark = Color(0xFF2E1706);
  static const Color warningContainerLight = Color(0xFFFFF1E4);

  // --- Semánticos: info ------------------------------------------------------
  static const Color infoDark = Color(0xFF4DA3FF); // 7.0:1 sobre e1
  static const Color infoLight = Color(0xFF0B63C5); // 5.6:1
  static const Color infoContainerDark = Color(0xFF0A1D33);
  static const Color infoContainerLight = Color(0xFFE7F1FF);

  // --- Alfas -----------------------------------------------------------------
  static const Color lightHairline = Color(0x0FF5F5F5); // 6% luz superior
  static const Color overlayHover = Color(0x0FF5F5F5);
  static const Color overlayPressed = Color(0x1AF5F5F5);
  static const Color greenGlow = Color(0x591DB954); // 35%
  static const Color greenIndicator = Color(0x291DB954); // 16%
  static const Color greenSelection = Color(0x471DB954); // 28%
  static const Color greenTint = Color(0x1F2FCA6E); // 12%
  static const Color goldGlow = Color(0x47F5A623); // 28%
  static const Color scrimHeavy = Color(0xDB0A0A0A);
  static const Color scrimMedium = Color(0x990A0A0A);

  /// Fondos de avatar sin foto. Se elige por hash del nombre.
  /// Seis tonos oscuros derivados de la escala de superficies: una fila de
  /// avatares fucsia y cyan destruye la paleta en la pantalla que más se mira.
  static const List<Color> avatarFallbacksDark = <Color>[
    Color(0xFF1F2420),
    Color(0xFF26302A),
    Color(0xFF2A2A33),
    Color(0xFF332A26),
    Color(0xFF232E33),
    Color(0xFF2E2633),
  ];

  static const List<Color> avatarFallbacksLight = <Color>[
    Color(0xFFDDE4DF),
    Color(0xFFD6E4DB),
    Color(0xFFDCDCE6),
    Color(0xFFE6DCD6),
    Color(0xFFD6E1E6),
    Color(0xFFE1D6E6),
  ];

  /// Devuelve un color de fallback estable para un nombre dado.
  static Color avatarFallbackFor(String name, {required bool isDark}) {
    final List<Color> palette =
        isDark ? avatarFallbacksDark : avatarFallbacksLight;
    var hash = 0;
    for (final int unit in name.codeUnits) {
      hash = (hash * 31 + unit) & 0x7FFFFFFF;
    }
    return palette[hash % palette.length];
  }
}

// =============================================================================
// 2. ESPACIADO, RADIOS, TAMAÑOS
// =============================================================================

abstract class FulbitoSpacing {
  FulbitoSpacing._();

  static const double none = 0;
  static const double xxs = 2;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double xxxl = 32;
  static const double huge = 40;
  static const double giant = 48;
  static const double massive = 64;

  // Semánticos
  static const double screenMargin = 16;
  static const double cardPadding = 16;
  static const double cardGap = 12;
  static const double sectionGap = 32;
  static const double sectionTitleGap = 12;
  static const double minTargetGap = 8;
  static const double iconLabelGap = 8;

  /// Para que el CTA fijo nunca tape la última tarjeta del scroll.
  static const double scrollBottomInset = 96;

  /// Superposición de avatares en el pie de la tarjeta de partido.
  static const double avatarOverlap = -8;
}

abstract class FulbitoRadius {
  FulbitoRadius._();

  static const double none = 0;
  static const double xs = 6;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 24;
  static const double full = 999;

  static const BorderRadius rXs = BorderRadius.all(Radius.circular(xs));
  static const BorderRadius rSm = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius rMd = BorderRadius.all(Radius.circular(md));
  static const BorderRadius rLg = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius rXl = BorderRadius.all(Radius.circular(xl));

  /// Solo esquinas superiores, para bottom sheets.
  static const BorderRadius rSheet = BorderRadius.vertical(
    top: Radius.circular(xl),
  );
}

abstract class FulbitoSizes {
  FulbitoSizes._();

  /// Mínimo absoluto de área táctil. Sin excepciones.
  static const double touchTargetMin = 48;

  /// CTA primario: una mano, de noche, pantalla mojada. 48 es un piso, no una
  /// meta.
  static const double buttonPrimaryHeight = 56;
  static const double buttonPrimaryCompact = 48;
  static const double buttonSecondaryHeight = 48;
  static const double buttonTertiaryHeight = 44;
  static const double buttonMinWidth = 120;

  static const double inputHeight = 56;
  static const double inputHelperReserved = 20;

  static const double iconInline = 16;
  static const double iconInlineLg = 18;
  static const double iconStatus = 20;
  static const double iconDefault = 24;
  static const double illustrationEmpty = 140;

  static const double avatarXs = 24;
  static const double avatarSm = 32;
  static const double avatarMd = 40;
  static const double avatarLg = 56;
  static const double avatarXl = 96;
  static const double avatarRing = 2;
  static const double avatarRingXl = 3;

  static const double chipHeight = 32;
  static const double chipHeightCompact = 24;

  static const double badgeXs = 20;
  static const double badgeSm = 32;
  static const double badgeMd = 56;
  static const double badgeLg = 72;
  static const double badgeXl = 96;

  static const double navBarHeight = 64;
  static const double navIndicatorHeight = 32;

  /// Hexágono dorado central. Solo existe si el usuario es capitán.
  static const double captainFab = 56;
  static const double captainFabLift = 8;

  static const double appBarHeight = 56;
  static const double cardHeroHeight = 240;
  static const double cardListHeight = 120;
  static const double cardStatusBarHeight = 3;
  static const double snackBarMinHeight = 52;
  static const double snackBarBottomOffset = 76;
  static const double hairline = 1;
}

// =============================================================================
// 3. ELEVACIÓN
// =============================================================================

/// En dark la elevación se comunica con **luminosidad de superficie**, no con
/// sombra: una sombra negra sobre fondo negro no existe.
///
/// Herramientas, en orden de importancia:
///   1. superficie más clara (la escala de [FulbitoColors.darkSurface1]..5),
///   2. hairline superior de luz ([FulbitoColors.lightHairline]),
///   3. sombra, solo cuando el elemento flota sobre fotografía u otro elemento
///      elevado — nunca sobre el canvas negro.
abstract class FulbitoElevation {
  FulbitoElevation._();

  static const List<BoxShadow> none = <BoxShadow>[];

  // Dark: sombra excepcional, solo sobre foto u otro elevado.
  static const List<BoxShadow> darkE3 = <BoxShadow>[
    BoxShadow(color: Color(0x990A0A0A), blurRadius: 24, offset: Offset(0, 8)),
  ];
  static const List<BoxShadow> darkE4 = <BoxShadow>[
    BoxShadow(color: Color(0xB30A0A0A), blurRadius: 40, offset: Offset(0, 16)),
  ];
  static const List<BoxShadow> darkE5 = <BoxShadow>[
    BoxShadow(color: Color(0xBF0A0A0A), blurRadius: 48, offset: Offset(0, 20)),
  ];

  // Light: la sombra vuelve a ser la herramienta principal.
  static const List<BoxShadow> lightE1 = <BoxShadow>[
    BoxShadow(color: Color(0x0F0A0A0A), blurRadius: 2, offset: Offset(0, 1)),
  ];
  static const List<BoxShadow> lightE2 = <BoxShadow>[
    BoxShadow(color: Color(0x140A0A0A), blurRadius: 6, offset: Offset(0, 2)),
  ];
  static const List<BoxShadow> lightE3 = <BoxShadow>[
    BoxShadow(color: Color(0x1A0A0A0A), blurRadius: 16, offset: Offset(0, 6)),
  ];
  static const List<BoxShadow> lightE4 = <BoxShadow>[
    BoxShadow(color: Color(0x1F0A0A0A), blurRadius: 24, offset: Offset(0, 8)),
  ];

  /// Luz de reflector del producto. SOLO el CTA primario en reposo y el
  /// indicador de "en vivo". Se apaga en pressed: el elemento se hunde y se
  /// apaga, que es la lectura física correcta.
  static const List<BoxShadow> glowPrimary = <BoxShadow>[
    BoxShadow(color: FulbitoColors.greenGlow, blurRadius: 24),
  ];

  /// SOLO la insignia de capitán en la ficha. Nunca en listas ni en tamaños
  /// chicos.
  static const List<BoxShadow> glowGold = <BoxShadow>[
    BoxShadow(color: FulbitoColors.goldGlow, blurRadius: 20),
  ];

  /// Hairline superior de luz: simula el reflector pegando en el canto de
  /// arriba. Se usa a partir de e2.
  static const Border topLightHairline = Border(
    top: BorderSide(color: FulbitoColors.lightHairline),
  );
}

// =============================================================================
// 4. MOTION
// =============================================================================

abstract class FulbitoMotion {
  FulbitoMotion._();

  static const Duration instant = Duration(milliseconds: 80);
  static const Duration fast = Duration(milliseconds: 140);
  static const Duration normal = Duration(milliseconds: 220);
  static const Duration slow = Duration(milliseconds: 320);
  static const Duration deliberate = Duration(milliseconds: 480);
  static const Duration pulse = Duration(milliseconds: 1200);
  static const Duration shimmer = Duration(milliseconds: 1200);

  /// Mínimo visible de un spinner: evita el parpadeo.
  static const Duration minLoadingVisible = Duration(milliseconds: 400);

  /// Tope del "sorteo" de equipos. Pasado eso se muestra resultado parcial:
  /// nadie deja al capitán mirando una pantalla vacía con diez tipos esperando.
  static const Duration maxAiWait = Duration(milliseconds: 900);

  static const Duration staggerTeamDraw = Duration(milliseconds: 40);
  static const Duration staggerAvatarShuffle = Duration(milliseconds: 60);

  static const Curve standard = Cubic(0.2, 0, 0, 1);
  static const Curve decelerate = Cubic(0, 0, 0, 1);
  static const Curve accelerate = Cubic(0.3, 0, 1, 1);
  static const Curve emphasized = Cubic(0.2, 0, 0, 1);
  static const Curve loop = Cubic(0.4, 0, 0.6, 1);

  static const double pressScaleButton = 0.98;
  static const double pressScaleCard = 0.99;
  static const double pressScaleChip = 0.97;
  static const double pressScaleBadge = 0.96;
  static const double dragLiftScale = 1.04;
}

// =============================================================================
// 5. TIPOGRAFÍA
// =============================================================================

/// Tres familias con roles no negociables.
///
/// **Bebas Neue** (display): no tiene minúsculas, tiene un solo peso y es
/// ultra condensada. Es perfecta a 200px y un desastre a 14sp. Vive en display,
/// marcadores, cifras grandes y eyebrows. Nunca por debajo de 16sp, nunca en
/// contenido generado por usuarios, nunca en formularios ni en errores.
///
/// **Archivo** (headings): el escalón intermedio. Sin ella, el salto de Bebas
/// (100% condensada, todo mayúsculas) a Inter (grotesca neutra) se lee como dos
/// apps pegadas.
///
/// **Inter** (body): todo lo funcional. Nunca peso 300 sobre fondo oscuro: el
/// trazo fino sobre negro se deshilacha.
abstract class FulbitoTypography {
  FulbitoTypography._();

  static const List<FontFeature> _tabular = <FontFeature>[
    FontFeature.tabularFigures(),
  ];

  // --- Display (Bebas Neue) --------------------------------------------------
  static TextStyle displayLarge(Color color) => GoogleFonts.bebasNeue(
        fontSize: 64,
        fontWeight: FontWeight.w400,
        height: 60 / 64,
        letterSpacing: 1.0,
        color: color,
        fontFeatures: _tabular,
      );

  static TextStyle displayMedium(Color color) => GoogleFonts.bebasNeue(
        fontSize: 48,
        fontWeight: FontWeight.w400,
        height: 46 / 48,
        letterSpacing: 0.8,
        color: color,
        fontFeatures: _tabular,
      );

  static TextStyle displaySmall(Color color) => GoogleFonts.bebasNeue(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        height: 1.0,
        letterSpacing: 0.5,
        color: color,
        fontFeatures: _tabular,
      );

  // --- Headings (Archivo) ---------------------------------------------------
  static TextStyle heading1(Color color) => GoogleFonts.archivo(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        height: 34 / 28,
        letterSpacing: -0.4,
        color: color,
      );

  static TextStyle heading2(Color color) => GoogleFonts.archivo(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        height: 28 / 22,
        letterSpacing: -0.2,
        color: color,
      );

  static TextStyle heading3(Color color) => GoogleFonts.archivo(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 24 / 18,
        color: color,
      );

  // --- Titles / Body / Labels (Inter) ---------------------------------------
  static TextStyle titleMedium(Color color) => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 22 / 16,
        color: color,
      );

  static TextStyle titleSmall(Color color) => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 20 / 14,
        color: color,
      );

  static TextStyle bodyLarge(Color color) => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
        color: color,
      );

  static TextStyle bodyMedium(Color color) => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
        color: color,
      );

  static TextStyle bodySmall(Color color) => GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 18 / 13,
        color: color,
      );

  static TextStyle labelLarge(Color color) => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        height: 20 / 15,
        letterSpacing: 0.2,
        color: color,
      );

  static TextStyle labelMedium(Color color) => GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        height: 16 / 13,
        letterSpacing: 0.2,
        color: color,
      );

  static TextStyle labelSmall(Color color) => GoogleFonts.inter(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        height: 14 / 11,
        letterSpacing: 0.4,
        color: color,
      );

  // --- Estilos fuera de la escala de Material -------------------------------

  static TextStyle caption(Color color) => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 16 / 12,
        letterSpacing: 0.1,
        color: color,
      );

  /// MAYÚSCULAS. Encabezado de sección chico. Funcional, va en cualquier lado.
  static TextStyle overline(Color color) => GoogleFonts.inter(
        fontSize: 11,
        fontWeight: FontWeight.w700,
        height: 14 / 11,
        letterSpacing: 1.2,
        color: color,
      );

  /// MAYÚSCULAS. De marca. Encabeza bloques importantes ("PRÓXIMO PARTIDO").
  /// Máximo dos por pantalla: si aparecen tres, revisá la jerarquía.
  static TextStyle eyebrow(Color color) => GoogleFonts.bebasNeue(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.0,
        letterSpacing: 1.5,
        color: color,
      );

  /// PJ / Goles / Promedio. Único lugar donde Bebas convive con datos chicos, y
  /// funciona porque son tres cifras aisladas y no una tabla.
  static TextStyle statHero(Color color) => GoogleFonts.bebasNeue(
        fontSize: 40,
        fontWeight: FontWeight.w400,
        height: 1.0,
        letterSpacing: 0.5,
        color: color,
        fontFeatures: _tabular,
      );

  /// Contador "9/10", puntaje de equipo. Cifras tabulares obligatorias: sin
  /// ellas, pasar de 9 a 10 hace saltar el layout y se lee como un bug.
  static TextStyle statMedium(Color color) => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 24 / 20,
        color: color,
        fontFeatures: _tabular,
      );

  static TextStyle statSmall(Color color) => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        height: 20 / 15,
        color: color,
        fontFeatures: _tabular,
      );

  /// Escala completa mapeada a los slots de Material 3.
  static TextTheme textTheme({
    required Color primary,
    required Color secondary,
    required Color tertiary,
  }) {
    return TextTheme(
      displayLarge: displayLarge(primary),
      displayMedium: displayMedium(primary),
      displaySmall: displaySmall(primary),
      headlineLarge: heading1(primary),
      headlineMedium: heading2(primary),
      headlineSmall: heading3(primary),
      titleLarge: heading3(primary),
      titleMedium: titleMedium(primary),
      titleSmall: titleSmall(primary),
      bodyLarge: bodyLarge(primary),
      bodyMedium: bodyMedium(primary),
      bodySmall: bodySmall(secondary),
      labelLarge: labelLarge(primary),
      labelMedium: labelMedium(secondary),
      labelSmall: labelSmall(tertiary),
    );
  }
}

/// Bebas Neue se capea a 1.3x: un marcador desbordado es peor que un marcador
/// un poco chico. El texto funcional (Inter) escala sin tope, hasta 200%.
abstract class FulbitoTextScaling {
  FulbitoTextScaling._();

  static const double displayMaxScale = 1.3;
  static const double reflowThreshold = 1.5;

  static TextScaler clampDisplay(BuildContext context) =>
      MediaQuery.textScalerOf(context).clamp(maxScaleFactor: displayMaxScale);

  /// Por encima de este factor los layouts en fila pasan a columna: los dos
  /// botones de la pantalla de partido se apilan, las dos columnas de "Armar
  /// equipos" pasan a una sola.
  static bool shouldReflow(BuildContext context) =>
      MediaQuery.textScalerOf(context).scale(16) / 16 > reflowThreshold;
}

// =============================================================================
// 6. EXTENSIÓN DE COLORES SEMÁNTICOS
//    Todo lo que Material no modela: dorado de capitán, escala de superficies,
//    estados de partido, colores de posición.
// =============================================================================

@immutable
class FulbitoSemanticColors extends ThemeExtension<FulbitoSemanticColors> {
  const FulbitoSemanticColors({
    required this.surface1,
    required this.surface2,
    required this.surface3,
    required this.surface4,
    required this.surface5,
    required this.textSecondary,
    required this.textTertiary,
    required this.borderSubtle,
    required this.borderDefault,
    required this.borderStrong,
    required this.captainAccent,
    required this.captainAccentSoft,
    required this.captainContainer,
    required this.onCaptainAccent,
    required this.captainHistoric,
    required this.success,
    required this.successFill,
    required this.successContainer,
    required this.warning,
    required this.warningFill,
    required this.warningContainer,
    required this.info,
    required this.infoFill,
    required this.infoContainer,
    required this.matchConfirmed,
    required this.matchIncomplete,
    required this.matchAtRisk,
    required this.matchCancelled,
    required this.positionGk,
    required this.positionDef,
    required this.positionMid,
    required this.positionFwd,
    required this.positionFillOpacity,
  });

  // Superficies elevadas (en dark, la elevación misma).
  final Color surface1;
  final Color surface2;
  final Color surface3;
  final Color surface4;
  final Color surface5;

  final Color textSecondary;
  final Color textTertiary;

  final Color borderSubtle; // decorativo
  final Color borderDefault; // sobre fotografía
  final Color borderStrong; // funcional, >= 3:1

  /// El dorado del capitán. Máximo 5% de los píxeles de una pantalla, y solo
  /// en tres contextos: insignia, botón de herramientas de capitán, anillo del
  /// avatar. **La escasez es la feature.**
  final Color captainAccent;
  final Color captainAccentSoft;
  final Color captainContainer;
  final Color onCaptainAccent;
  final Color captainHistoric;

  final Color success;
  final Color successFill;
  final Color successContainer;

  /// Corrido al naranja: la advertencia no puede ser dorada.
  final Color warning;
  final Color warningFill;
  final Color warningContainer;

  final Color info;
  final Color infoFill;
  final Color infoContainer;

  // Barra de estado de la tarjeta de partido: el único elemento que se lee a
  // un metro de distancia.
  final Color matchConfirmed;
  final Color matchIncomplete;
  final Color matchAtRisk;
  final Color matchCancelled;

  final Color positionGk;
  final Color positionDef;
  final Color positionMid;
  final Color positionFwd;

  /// Los chips de posición van con relleno al 12%, no pleno: cinco colores
  /// plenos en una lista de diez convierten la pantalla en un arcoíris y anulan
  /// el trabajo del verde.
  final double positionFillOpacity;

  static const FulbitoSemanticColors dark = FulbitoSemanticColors(
    surface1: FulbitoColors.darkSurface1,
    surface2: FulbitoColors.darkSurface2,
    surface3: FulbitoColors.darkSurface3,
    surface4: FulbitoColors.darkSurface4,
    surface5: FulbitoColors.darkSurface5,
    textSecondary: FulbitoColors.darkTextSecondary,
    textTertiary: FulbitoColors.darkTextTertiary,
    borderSubtle: FulbitoColors.darkBorderSubtle,
    borderDefault: FulbitoColors.darkBorderDefault,
    borderStrong: FulbitoColors.darkBorderStrong,
    captainAccent: FulbitoColors.gold500,
    captainAccentSoft: FulbitoColors.gold300,
    captainContainer: FulbitoColors.goldContainerDark,
    onCaptainAccent: FulbitoColors.negroNoche,
    captainHistoric: FulbitoColors.gold900,
    success: FulbitoColors.green400,
    successFill: FulbitoColors.green500,
    successContainer: FulbitoColors.green900,
    warning: FulbitoColors.warningDark,
    warningFill: FulbitoColors.warningDark,
    warningContainer: FulbitoColors.warningContainerDark,
    info: FulbitoColors.infoDark,
    infoFill: FulbitoColors.infoDark,
    infoContainer: FulbitoColors.infoContainerDark,
    matchConfirmed: FulbitoColors.green500,
    matchIncomplete: FulbitoColors.warningDark,
    matchAtRisk: FulbitoColors.errorFill,
    matchCancelled: FulbitoColors.darkBorderDefault,
    positionGk: FulbitoColors.infoDark,
    positionDef: FulbitoColors.darkTextSecondary,
    positionMid: FulbitoColors.green400,
    positionFwd: FulbitoColors.errorTextDark,
    positionFillOpacity: 0.12,
  );

  static const FulbitoSemanticColors light = FulbitoSemanticColors(
    surface1: FulbitoColors.lightSurface1,
    surface2: FulbitoColors.lightSurface2,
    surface3: FulbitoColors.lightSurface3,
    surface4: FulbitoColors.lightSurface4,
    surface5: FulbitoColors.lightSurface5,
    textSecondary: FulbitoColors.lightTextSecondary,
    textTertiary: FulbitoColors.lightTextTertiary,
    borderSubtle: FulbitoColors.lightBorderSubtle,
    borderDefault: FulbitoColors.lightBorderDefault,
    borderStrong: FulbitoColors.lightBorderStrong,
    // En light el dorado deja de ser texto y pasa a ser relleno: la insignia se
    // invierte (hexágono dorado, número negro).
    captainAccent: FulbitoColors.gold500,
    captainAccentSoft: FulbitoColors.gold900,
    captainContainer: FulbitoColors.goldContainerLight,
    onCaptainAccent: FulbitoColors.negroNoche,
    captainHistoric: FulbitoColors.lightTextTertiary,
    success: FulbitoColors.green700,
    successFill: FulbitoColors.green500,
    successContainer: FulbitoColors.green100,
    warning: FulbitoColors.warningLight,
    warningFill: FulbitoColors.warningDark,
    warningContainer: FulbitoColors.warningContainerLight,
    info: FulbitoColors.infoLight,
    infoFill: FulbitoColors.infoDark,
    infoContainer: FulbitoColors.infoContainerLight,
    matchConfirmed: FulbitoColors.green500,
    matchIncomplete: FulbitoColors.warningDark,
    matchAtRisk: FulbitoColors.errorFill,
    matchCancelled: FulbitoColors.lightBorderDefault,
    positionGk: FulbitoColors.infoLight,
    positionDef: FulbitoColors.lightTextSecondary,
    positionMid: FulbitoColors.green700,
    positionFwd: FulbitoColors.errorTextLight,
    positionFillOpacity: 0.10,
  );

  @override
  FulbitoSemanticColors copyWith({
    Color? surface1,
    Color? surface2,
    Color? surface3,
    Color? surface4,
    Color? surface5,
    Color? textSecondary,
    Color? textTertiary,
    Color? borderSubtle,
    Color? borderDefault,
    Color? borderStrong,
    Color? captainAccent,
    Color? captainAccentSoft,
    Color? captainContainer,
    Color? onCaptainAccent,
    Color? captainHistoric,
    Color? success,
    Color? successFill,
    Color? successContainer,
    Color? warning,
    Color? warningFill,
    Color? warningContainer,
    Color? info,
    Color? infoFill,
    Color? infoContainer,
    Color? matchConfirmed,
    Color? matchIncomplete,
    Color? matchAtRisk,
    Color? matchCancelled,
    Color? positionGk,
    Color? positionDef,
    Color? positionMid,
    Color? positionFwd,
    double? positionFillOpacity,
  }) {
    return FulbitoSemanticColors(
      surface1: surface1 ?? this.surface1,
      surface2: surface2 ?? this.surface2,
      surface3: surface3 ?? this.surface3,
      surface4: surface4 ?? this.surface4,
      surface5: surface5 ?? this.surface5,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      borderSubtle: borderSubtle ?? this.borderSubtle,
      borderDefault: borderDefault ?? this.borderDefault,
      borderStrong: borderStrong ?? this.borderStrong,
      captainAccent: captainAccent ?? this.captainAccent,
      captainAccentSoft: captainAccentSoft ?? this.captainAccentSoft,
      captainContainer: captainContainer ?? this.captainContainer,
      onCaptainAccent: onCaptainAccent ?? this.onCaptainAccent,
      captainHistoric: captainHistoric ?? this.captainHistoric,
      success: success ?? this.success,
      successFill: successFill ?? this.successFill,
      successContainer: successContainer ?? this.successContainer,
      warning: warning ?? this.warning,
      warningFill: warningFill ?? this.warningFill,
      warningContainer: warningContainer ?? this.warningContainer,
      info: info ?? this.info,
      infoFill: infoFill ?? this.infoFill,
      infoContainer: infoContainer ?? this.infoContainer,
      matchConfirmed: matchConfirmed ?? this.matchConfirmed,
      matchIncomplete: matchIncomplete ?? this.matchIncomplete,
      matchAtRisk: matchAtRisk ?? this.matchAtRisk,
      matchCancelled: matchCancelled ?? this.matchCancelled,
      positionGk: positionGk ?? this.positionGk,
      positionDef: positionDef ?? this.positionDef,
      positionMid: positionMid ?? this.positionMid,
      positionFwd: positionFwd ?? this.positionFwd,
      positionFillOpacity: positionFillOpacity ?? this.positionFillOpacity,
    );
  }

  @override
  FulbitoSemanticColors lerp(
    covariant ThemeExtension<FulbitoSemanticColors>? other,
    double t,
  ) {
    if (other is! FulbitoSemanticColors) return this;
    Color c(Color a, Color b) => Color.lerp(a, b, t)!;
    return FulbitoSemanticColors(
      surface1: c(surface1, other.surface1),
      surface2: c(surface2, other.surface2),
      surface3: c(surface3, other.surface3),
      surface4: c(surface4, other.surface4),
      surface5: c(surface5, other.surface5),
      textSecondary: c(textSecondary, other.textSecondary),
      textTertiary: c(textTertiary, other.textTertiary),
      borderSubtle: c(borderSubtle, other.borderSubtle),
      borderDefault: c(borderDefault, other.borderDefault),
      borderStrong: c(borderStrong, other.borderStrong),
      captainAccent: c(captainAccent, other.captainAccent),
      captainAccentSoft: c(captainAccentSoft, other.captainAccentSoft),
      captainContainer: c(captainContainer, other.captainContainer),
      onCaptainAccent: c(onCaptainAccent, other.onCaptainAccent),
      captainHistoric: c(captainHistoric, other.captainHistoric),
      success: c(success, other.success),
      successFill: c(successFill, other.successFill),
      successContainer: c(successContainer, other.successContainer),
      warning: c(warning, other.warning),
      warningFill: c(warningFill, other.warningFill),
      warningContainer: c(warningContainer, other.warningContainer),
      info: c(info, other.info),
      infoFill: c(infoFill, other.infoFill),
      infoContainer: c(infoContainer, other.infoContainer),
      matchConfirmed: c(matchConfirmed, other.matchConfirmed),
      matchIncomplete: c(matchIncomplete, other.matchIncomplete),
      matchAtRisk: c(matchAtRisk, other.matchAtRisk),
      matchCancelled: c(matchCancelled, other.matchCancelled),
      positionGk: c(positionGk, other.positionGk),
      positionDef: c(positionDef, other.positionDef),
      positionMid: c(positionMid, other.positionMid),
      positionFwd: c(positionFwd, other.positionFwd),
      positionFillOpacity: positionFillOpacity +
          (other.positionFillOpacity - positionFillOpacity) * t,
    );
  }
}

/// Azúcar: `Theme.of(context).fulbito.captainAccent`.
extension FulbitoThemeX on ThemeData {
  FulbitoSemanticColors get fulbito =>
      this.extension<FulbitoSemanticColors>() ?? FulbitoSemanticColors.dark;
}

// =============================================================================
// 7. COLOR SCHEMES
// =============================================================================

abstract class FulbitoColorSchemes {
  FulbitoColorSchemes._();

  /// El tema por defecto de la app. Es el ambiente real del producto: el
  /// fulbito cordobés se juega entre las 20 y las 23.
  static const ColorScheme dark = ColorScheme(
    brightness: Brightness.dark,
    primary: FulbitoColors.green500,
    onPrimary: FulbitoColors.negroNoche, // nunca blanco: 2.4:1
    primaryContainer: FulbitoColors.green900,
    onPrimaryContainer: FulbitoColors.green100,
    secondary: FulbitoColors.green400,
    onSecondary: FulbitoColors.negroNoche,
    secondaryContainer: FulbitoColors.green800,
    onSecondaryContainer: FulbitoColors.green50,
    // El terciario de Material es el dorado del capitán. Que sea un slot del
    // esquema y no un color suelto obliga a pasar por el sistema para usarlo.
    tertiary: FulbitoColors.gold500,
    onTertiary: FulbitoColors.negroNoche,
    tertiaryContainer: FulbitoColors.goldContainerDark,
    onTertiaryContainer: FulbitoColors.gold300,
    error: FulbitoColors.errorTextDark,
    onError: FulbitoColors.negroNoche,
    errorContainer: FulbitoColors.errorContainerDark,
    onErrorContainer: FulbitoColors.errorTextDark,
    surface: FulbitoColors.darkCanvas,
    onSurface: FulbitoColors.darkTextPrimary,
    onSurfaceVariant: FulbitoColors.darkTextSecondary,
    surfaceDim: FulbitoColors.darkCanvas,
    surfaceBright: FulbitoColors.darkSurface5,
    surfaceContainerLowest: FulbitoColors.darkCanvas,
    surfaceContainerLow: FulbitoColors.darkSurface1,
    surfaceContainer: FulbitoColors.darkSurface2,
    surfaceContainerHigh: FulbitoColors.darkSurface3,
    surfaceContainerHighest: FulbitoColors.darkSurface4,
    outline: FulbitoColors.darkBorderStrong, // funcional, 3.7:1
    outlineVariant: FulbitoColors.darkBorderSubtle, // decorativo
    shadow: Color(0xFF000000),
    scrim: FulbitoColors.scrimHeavy,
    inverseSurface: FulbitoColors.lightCanvas,
    onInverseSurface: FulbitoColors.lightTextPrimary,
    inversePrimary: FulbitoColors.green700,
    surfaceTint: Colors.transparent, // el tint de M3 pelea con la escala
  );

  /// No es "la versión clara": es la misma cancha a las 13:00. Y es la única
  /// respuesta honesta al uso a pleno sol (ver Modo Sol en el README).
  static const ColorScheme light = ColorScheme(
    brightness: Brightness.light,
    // El CTA no cambia entre temas: es el ancla de reconocimiento de marca.
    primary: FulbitoColors.green500,
    onPrimary: FulbitoColors.negroNoche,
    primaryContainer: FulbitoColors.green100,
    onPrimaryContainer: FulbitoColors.green800,
    secondary: FulbitoColors.green700, // el verde de texto en light
    onSecondary: FulbitoColors.lightSurface1,
    secondaryContainer: FulbitoColors.green100,
    onSecondaryContainer: FulbitoColors.green800,
    tertiary: FulbitoColors.gold500,
    onTertiary: FulbitoColors.negroNoche,
    tertiaryContainer: FulbitoColors.goldContainerLight,
    onTertiaryContainer: FulbitoColors.gold900,
    error: FulbitoColors.errorTextLight,
    onError: FulbitoColors.lightSurface1,
    errorContainer: FulbitoColors.errorContainerLight,
    onErrorContainer: FulbitoColors.errorTextLight,
    surface: FulbitoColors.lightCanvas,
    onSurface: FulbitoColors.lightTextPrimary,
    onSurfaceVariant: FulbitoColors.lightTextSecondary,
    surfaceDim: FulbitoColors.lightSurface3,
    surfaceBright: FulbitoColors.lightSurface1,
    surfaceContainerLowest: FulbitoColors.lightSurface1,
    surfaceContainerLow: FulbitoColors.lightCanvas,
    surfaceContainer: FulbitoColors.lightSurface2,
    surfaceContainerHigh: FulbitoColors.lightSurface3,
    surfaceContainerHighest: FulbitoColors.lightSurface3,
    outline: FulbitoColors.lightBorderStrong, // funcional, 3.8:1
    outlineVariant: FulbitoColors.lightBorderSubtle,
    shadow: Color(0xFF000000),
    scrim: Color(0x990E120F),
    inverseSurface: FulbitoColors.lightSurface5,
    onInverseSurface: FulbitoColors.blancoLinea,
    inversePrimary: FulbitoColors.green400,
    surfaceTint: Colors.transparent,
  );
}

// =============================================================================
// 8. THEME DATA
// =============================================================================

abstract class FulbitoTheme {
  FulbitoTheme._();

  static ThemeData get dark => _build(
        scheme: FulbitoColorSchemes.dark,
        semantics: FulbitoSemanticColors.dark,
        canvas: FulbitoColors.darkCanvas,
        textPrimary: FulbitoColors.darkTextPrimary,
        textSecondary: FulbitoColors.darkTextSecondary,
        textTertiary: FulbitoColors.darkTextTertiary,
        textDisabled: FulbitoColors.darkTextDisabled,
        cardSurface: FulbitoColors.darkSurface1,
        inputSurface: FulbitoColors.darkSurface2,
        navSurface: FulbitoColors.darkSurface2,
        snackSurface: FulbitoColors.darkSurface4,
        snackText: FulbitoColors.darkTextPrimary,
        disabledFill: FulbitoColors.darkSurface3,
        tertiaryLabel: FulbitoColors.green400,
        overlayHover: FulbitoColors.overlayHover,
        overlayPressed: FulbitoColors.overlayPressed,
      );

  static ThemeData get light => _build(
        scheme: FulbitoColorSchemes.light,
        semantics: FulbitoSemanticColors.light,
        canvas: FulbitoColors.lightCanvas,
        textPrimary: FulbitoColors.lightTextPrimary,
        textSecondary: FulbitoColors.lightTextSecondary,
        textTertiary: FulbitoColors.lightTextTertiary,
        textDisabled: FulbitoColors.lightTextDisabled,
        cardSurface: FulbitoColors.lightSurface1,
        inputSurface: FulbitoColors.lightSurface2,
        navSurface: FulbitoColors.lightSurface1,
        snackSurface: FulbitoColors.lightSurface5,
        snackText: FulbitoColors.blancoLinea,
        disabledFill: FulbitoColors.lightSurface3,
        tertiaryLabel: FulbitoColors.green700,
        overlayHover: const Color(0x0A0E120F),
        overlayPressed: const Color(0x140E120F),
      );

  static ThemeData _build({
    required ColorScheme scheme,
    required FulbitoSemanticColors semantics,
    required Color canvas,
    required Color textPrimary,
    required Color textSecondary,
    required Color textTertiary,
    required Color textDisabled,
    required Color cardSurface,
    required Color inputSurface,
    required Color navSurface,
    required Color snackSurface,
    required Color snackText,
    required Color disabledFill,
    required Color tertiaryLabel,
    required Color overlayHover,
    required Color overlayPressed,
  }) {
    final TextTheme text = FulbitoTypography.textTheme(
      primary: textPrimary,
      secondary: textSecondary,
      tertiary: textTertiary,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme, // brightness se deriva del scheme
      scaffoldBackgroundColor: canvas,
      canvasColor: canvas,
      textTheme: text,
      splashFactory: InkRipple.splashFactory,
      visualDensity: VisualDensity.standard,

      // Todo lo interactivo llega a 48 aunque se dibuje más chico.
      materialTapTargetSize: MaterialTapTargetSize.padded,

      extensions: <ThemeExtension<dynamic>>[semantics],

      iconTheme: IconThemeData(
        color: textPrimary,
        size: FulbitoSizes.iconDefault,
      ),

      dividerTheme: DividerThemeData(
        color: semantics.borderSubtle,
        thickness: FulbitoSizes.hairline,
        space: FulbitoSpacing.md,
      ),

      // -----------------------------------------------------------------------
      // Botón primario: pastilla verde de 56. Es el objeto más grande, más
      // brillante y de forma más distinta de la pantalla: en una cancha de
      // noche el usuario no lo lee, lo reconoce por silueta.
      // -----------------------------------------------------------------------
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) return disabledFill;
            if (states.contains(WidgetState.pressed)) {
              return FulbitoColors.green600;
            }
            if (states.contains(WidgetState.hovered)) {
              return FulbitoColors.green400;
            }
            return FulbitoColors.green500;
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) return textDisabled;
            return FulbitoColors.negroNoche; // 7.7:1
          }),
          overlayColor: const WidgetStatePropertyAll<Color>(
            Color(0x1A0A0A0A),
          ),
          textStyle: WidgetStatePropertyAll<TextStyle>(
            FulbitoTypography.labelLarge(FulbitoColors.negroNoche),
          ),
          minimumSize: const WidgetStatePropertyAll<Size>(
            Size(FulbitoSizes.buttonMinWidth, FulbitoSizes.buttonPrimaryHeight),
          ),
          padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: FulbitoSpacing.xxl),
          ),
          shape: const WidgetStatePropertyAll<OutlinedBorder>(StadiumBorder()),
          // El glow se aplica con un DecoratedBox alrededor del botón
          // (FulbitoElevation.glowPrimary): Material no expone glows.
          elevation: const WidgetStatePropertyAll<double>(0),
          shadowColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
          iconSize: const WidgetStatePropertyAll<double>(
            FulbitoSizes.iconStatus,
          ),
          animationDuration: FulbitoMotion.fast,
          tapTargetSize: MaterialTapTargetSize.padded,
        ),
      ),

      // Filled = misma jerarquía que el primario, para pantallas que ya usan
      // FilledButton.
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) return disabledFill;
            if (states.contains(WidgetState.pressed)) {
              return FulbitoColors.green600;
            }
            return FulbitoColors.green500;
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) return textDisabled;
            return FulbitoColors.negroNoche;
          }),
          textStyle: WidgetStatePropertyAll<TextStyle>(
            FulbitoTypography.labelLarge(FulbitoColors.negroNoche),
          ),
          minimumSize: const WidgetStatePropertyAll<Size>(
            Size(FulbitoSizes.buttonMinWidth, FulbitoSizes.buttonPrimaryHeight),
          ),
          shape: const WidgetStatePropertyAll<OutlinedBorder>(StadiumBorder()),
          tapTargetSize: MaterialTapTargetSize.padded,
        ),
      ),

      // -----------------------------------------------------------------------
      // Botón secundario: borde neutro, NO verde. El verde aparece una sola vez
      // por pantalla y es el primario; si el secundario también fuera verde, la
      // jerarquía desaparecería justo cuando más se necesita (de noche, de
      // reojo).
      // -----------------------------------------------------------------------
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) return textDisabled;
            return textPrimary;
          }),
          side: WidgetStateProperty.resolveWith<BorderSide>((states) {
            if (states.contains(WidgetState.disabled)) {
              return BorderSide(color: semantics.borderSubtle, width: 1.5);
            }
            if (states.contains(WidgetState.focused)) {
              return const BorderSide(color: FulbitoColors.green400, width: 2);
            }
            if (states.contains(WidgetState.pressed)) {
              return BorderSide(color: semantics.textTertiary, width: 1.5);
            }
            return BorderSide(color: semantics.borderStrong, width: 1.5);
          }),
          overlayColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.pressed)) return overlayPressed;
            return overlayHover;
          }),
          textStyle: WidgetStatePropertyAll<TextStyle>(
            FulbitoTypography.labelLarge(textPrimary),
          ),
          minimumSize: const WidgetStatePropertyAll<Size>(
            Size(
              FulbitoSizes.buttonMinWidth,
              FulbitoSizes.buttonSecondaryHeight,
            ),
          ),
          padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: FulbitoSpacing.xl),
          ),
          shape: const WidgetStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: FulbitoRadius.rMd),
          ),
          animationDuration: FulbitoMotion.fast,
          tapTargetSize: MaterialTapTargetSize.padded,
        ),
      ),

      // Botón terciario. 44 de alto visual, 48 de área táctil.
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) return textDisabled;
            return tertiaryLabel;
          }),
          overlayColor: const WidgetStatePropertyAll<Color>(
            FulbitoColors.greenTint,
          ),
          textStyle: WidgetStatePropertyAll<TextStyle>(
            FulbitoTypography.labelLarge(tertiaryLabel),
          ),
          minimumSize: const WidgetStatePropertyAll<Size>(
            Size(0, FulbitoSizes.buttonTertiaryHeight),
          ),
          padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: FulbitoSpacing.md),
          ),
          shape: const WidgetStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: FulbitoRadius.rSm),
          ),
          tapTargetSize: MaterialTapTargetSize.padded,
        ),
      ),

      // -----------------------------------------------------------------------
      // Campo de texto. El helper reserva 20 de alto SIEMPRE: si aparece recién
      // con el error, todo el formulario salta.
      // -----------------------------------------------------------------------
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: inputSurface,
        isDense: false,
        constraints: const BoxConstraints(minHeight: FulbitoSizes.inputHeight),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.lg,
          vertical: 18,
        ),
        hintStyle: FulbitoTypography.bodyMedium(textTertiary),
        labelStyle: FulbitoTypography.bodyMedium(textTertiary),
        floatingLabelStyle: FulbitoTypography.caption(tertiaryLabel),
        helperStyle: FulbitoTypography.caption(textSecondary),
        helperMaxLines: 2,
        errorStyle: FulbitoTypography.caption(scheme.error),
        errorMaxLines: 2,
        prefixIconColor: textTertiary,
        suffixIconColor: textTertiary,
        border: OutlineInputBorder(
          borderRadius: FulbitoRadius.rMd,
          borderSide: BorderSide(color: semantics.borderStrong),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: FulbitoRadius.rMd,
          borderSide: BorderSide(color: semantics.borderStrong),
        ),
        // InputDecorationTheme no expone un borde de hover: el hover se
        // resuelve con un velo sobre el relleno.
        hoverColor: overlayHover,
        focusColor: FulbitoColors.green500,
        focusedBorder: const OutlineInputBorder(
          borderRadius: FulbitoRadius.rMd,
          borderSide: BorderSide(color: FulbitoColors.green500, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: FulbitoRadius.rMd,
          borderSide: BorderSide(color: scheme.error, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: FulbitoRadius.rMd,
          borderSide: BorderSide(color: scheme.error, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: FulbitoRadius.rMd,
          borderSide: BorderSide(color: semantics.borderSubtle),
        ),
      ),

      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: FulbitoColors.green500,
        selectionColor: FulbitoColors.greenSelection,
        selectionHandleColor: FulbitoColors.green500,
      ),

      // -----------------------------------------------------------------------
      // Tarjeta. En dark no lleva sombra: se despega del canvas por luminosidad
      // más un hairline. La sombra se agrega a mano solo cuando la tarjeta
      // flota sobre fotografía.
      // -----------------------------------------------------------------------
      cardTheme: CardThemeData(
        color: cardSurface,
        surfaceTintColor: Colors.transparent,
        shadowColor: scheme.brightness == Brightness.dark
            ? Colors.transparent
            : const Color(0x0F0A0A0A),
        elevation: scheme.brightness == Brightness.dark ? 0 : 1,
        margin: const EdgeInsets.only(bottom: FulbitoSpacing.md),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: FulbitoRadius.rLg,
          side: BorderSide(color: semantics.borderSubtle),
        ),
      ),

      // -----------------------------------------------------------------------
      // Chip. Relleno al 12% en reposo, pleno solo cuando está seleccionado.
      // -----------------------------------------------------------------------
      chipTheme: ChipThemeData(
        backgroundColor: Colors.transparent,
        selectedColor: FulbitoColors.green500,
        disabledColor: Colors.transparent,
        secondarySelectedColor: FulbitoColors.green500,
        surfaceTintColor: Colors.transparent,
        checkmarkColor: FulbitoColors.negroNoche,
        showCheckmark: false,
        elevation: 0,
        pressElevation: 0,
        labelStyle: FulbitoTypography.labelMedium(textPrimary),
        secondaryLabelStyle: FulbitoTypography.labelMedium(
          FulbitoColors.negroNoche,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.sm,
          vertical: FulbitoSpacing.xs,
        ),
        labelPadding: const EdgeInsets.symmetric(horizontal: FulbitoSpacing.xs),
        side: BorderSide(color: semantics.borderStrong),
        shape: const StadiumBorder(),
        iconTheme: IconThemeData(
          color: textSecondary,
          size: FulbitoSizes.iconInlineLg,
        ),
      ),

      // -----------------------------------------------------------------------
      // Bottom navigation. Labels SIEMPRE visibles: la app se usa dos veces por
      // semana, no hay memoria muscular para íconos sin texto.
      // El quinto slot (hexágono dorado, "Nuevo partido") se agrega como widget
      // solo si el usuario es capitán; no es parte del NavigationBar.
      // -----------------------------------------------------------------------
      navigationBarTheme: NavigationBarThemeData(
        height: FulbitoSizes.navBarHeight,
        backgroundColor: navSurface,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        indicatorColor: FulbitoColors.greenIndicator,
        indicatorShape: const StadiumBorder(),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
          final Color color =
              states.contains(WidgetState.selected) ? textPrimary : textTertiary;
          return FulbitoTypography.labelSmall(color);
        }),
        iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((states) {
          final Color color =
              states.contains(WidgetState.selected) ? textPrimary : textTertiary;
          return IconThemeData(color: color, size: FulbitoSizes.iconDefault);
        }),
        overlayColor: WidgetStatePropertyAll<Color>(overlayPressed),
      ),

      // -----------------------------------------------------------------------
      // Snackbar. Se levanta 76 para no tapar el bottom nav: la barra que
      // confirma una acción nunca puede tapar el botón de la siguiente.
      // El borde izquierdo de 3px con el color semántico se agrega en el
      // `content` (Material no expone un borde de acento).
      // -----------------------------------------------------------------------
      snackBarTheme: SnackBarThemeData(
        backgroundColor: snackSurface,
        contentTextStyle: FulbitoTypography.bodyMedium(snackText),
        actionTextColor: FulbitoColors.green400,
        disabledActionTextColor: textDisabled,
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        insetPadding: const EdgeInsets.fromLTRB(
          FulbitoSpacing.lg,
          FulbitoSpacing.lg,
          FulbitoSpacing.lg,
          FulbitoSizes.snackBarBottomOffset,
        ),
        shape: const RoundedRectangleBorder(borderRadius: FulbitoRadius.rMd),
        actionOverflowThreshold: 0.4,
        showCloseIcon: false,
        closeIconColor: textSecondary,
      ),

      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: semantics.surface3,
        surfaceTintColor: Colors.transparent,
        modalBackgroundColor: semantics.surface3,
        modalElevation: 0,
        elevation: 0,
        shape: const RoundedRectangleBorder(borderRadius: FulbitoRadius.rSheet),
        dragHandleColor: semantics.borderStrong,
        dragHandleSize: const Size(32, 4),
        showDragHandle: true,
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) return textDisabled;
          if (states.contains(WidgetState.selected)) {
            return FulbitoColors.negroNoche;
          }
          return textSecondary;
        }),
        trackColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) return disabledFill;
          if (states.contains(WidgetState.selected)) {
            return FulbitoColors.green500;
          }
          return semantics.surface3;
        }),
        trackOutlineColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.selected)) return Colors.transparent;
          return semantics.borderStrong;
        }),
      ),

      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: FulbitoColors.green500,
        linearTrackColor: semantics.surface3,
        circularTrackColor: Colors.transparent,
        linearMinHeight: 8,
      ),

      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: semantics.surface5,
          borderRadius: FulbitoRadius.rSm,
        ),
        textStyle: FulbitoTypography.caption(textPrimary),
        padding: const EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.md,
          vertical: FulbitoSpacing.sm,
        ),
        waitDuration: FulbitoMotion.slow,
      ),
    );
  }

  /// Estilo de barras del sistema. En dark, transparente para que el canvas
  /// negro llegue hasta arriba; en light, iconos oscuros.
  static SystemUiOverlayStyle overlayStyle({required bool isDark}) {
    return SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
      systemNavigationBarColor:
          isDark ? FulbitoColors.darkSurface2 : FulbitoColors.lightSurface1,
      systemNavigationBarIconBrightness:
          isDark ? Brightness.light : Brightness.dark,
      systemNavigationBarDividerColor: Colors.transparent,
    );
  }
}

// =============================================================================
// 9. USO
// =============================================================================
//
// MaterialApp(
//   theme: FulbitoTheme.light,
//   darkTheme: FulbitoTheme.dark,
//   // Dark por defecto: es el ambiente real del producto. El usuario puede
//   // forzar light con el "Modo Sol" de un toque (ver README §10).
//   themeMode: ThemeMode.system,
//   home: const HomeScreen(),
// );
//
// Acceso a los tokens que Material no modela:
//   final f = Theme.of(context).fulbito;
//   Container(color: f.surface1);
//   Icon(Icons.star, color: f.captainAccent);   // solo si es capitán
//   Text('Faltan 2', style: TextStyle(color: f.warning));
//
// Glow del CTA primario (Material no expone glows):
//   DecoratedBox(
//     decoration: const BoxDecoration(
//       borderRadius: BorderRadius.all(Radius.circular(FulbitoRadius.full)),
//       boxShadow: FulbitoElevation.glowPrimary,
//     ),
//     child: ElevatedButton(onPressed: () {}, child: const Text('Anotarme')),
//   );
//
// Cifras que cambian en vivo:
//   Text('9/10', style: FulbitoTypography.statMedium(f.textSecondary));
//
// Display con escala capeada:
//   MediaQuery.withClampedTextScaling(
//     maxScaleFactor: FulbitoTextScaling.displayMaxScale,
//     child: Text('JUE 21:00', style: theme.textTheme.displayMedium),
//   );
// =============================================================================
