// =============================================================================
// FulbitoApp · UI Kit 01 — POTRERO
// Tema Material 3 completo. Light-first, dark traducido.
//
// Concepto: papel gastado, ladrillo de potrero, pasto pisado. Sin negro puro,
// sin blanco puro, sin verde neón.
//
// Baseline: Flutter 3.24+ / Dart 3.5+. Dependencia única: google_fonts ^6.2.1
//
// Uso:
//   MaterialApp(
//     theme: FulbitoTheme.light,
//     darkTheme: FulbitoTheme.dark,
//     themeMode: ThemeMode.system,
//   );
//
// NOTA DE MIGRACIÓN (si el proyecto está en Flutter >= 3.29):
//   CardTheme            -> CardThemeData
//   DialogTheme          -> DialogThemeData
//   InputDecorationTheme -> InputDecorationThemeData   (a partir de 3.32)
//   Son renombres puros: los parámetros son idénticos.
// =============================================================================

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// =============================================================================
// 1. COLOR — primitivos y roles semánticos
// =============================================================================

/// Paleta POTRERO. Todos los primitivos y los roles derivados.
///
/// Regla dura del kit: acá no existe `Colors.black` ni `Colors.white`.
/// Si aparecen en el código de la app, es un bug de implementación.
abstract final class FulbitoColors {
  const FulbitoColors._();

  // ---------------------------------------------------------------------------
  // Ladrillo — primario. El paredón del potrero, el polvo de la cancha.
  // ---------------------------------------------------------------------------
  static const Color ladrillo50 = Color(0xFFFBEEEA);
  static const Color ladrillo100 = Color(0xFFF6D9D0);
  static const Color ladrillo200 = Color(0xFFEDB3A2);
  static const Color ladrillo300 = Color(0xFFE08A72);
  static const Color ladrillo350 = Color(0xFFE8845F); // primario en dark
  static const Color ladrillo400 = Color(0xFFD6603F);
  static const Color ladrillo500 = Color(0xFFC8391B); // PRIMARIO
  static const Color ladrillo600 = Color(0xFFA82D14);
  static const Color ladrillo700 = Color(0xFF87230F);
  static const Color ladrillo800 = Color(0xFF661A0B);
  static const Color ladrillo900 = Color(0xFF451208);

  // ---------------------------------------------------------------------------
  // Pasto — secundario. El pasto pisado del área chica.
  // ---------------------------------------------------------------------------
  static const Color pasto50 = Color(0xFFE8F1EB);
  static const Color pasto100 = Color(0xFFC9E0D2);
  static const Color pasto200 = Color(0xFF9AC4AB);
  static const Color pasto300 = Color(0xFF6BA785);
  static const Color pasto350 = Color(0xFF8FC7A4); // secundario en dark
  static const Color pasto400 = Color(0xFF41855F);
  static const Color pasto500 = Color(0xFF265E3A); // SECUNDARIO
  static const Color pasto600 = Color(0xFF1F4E30);
  static const Color pasto700 = Color(0xFF193F27);
  static const Color pasto800 = Color(0xFF12301D);
  static const Color pasto900 = Color(0xFF0C2114);

  // ---------------------------------------------------------------------------
  // Papel — neutrales CÁLIDOS (hue ~35-40°). Nunca grises neutros.
  // ---------------------------------------------------------------------------
  static const Color papel0 = Color(0xFFFFFDFA); // cal (no #FFFFFF)
  static const Color papel50 = Color(0xFFFAF7F2);
  static const Color papel100 = Color(0xFFF4F0EB); // fondo de app
  static const Color papel200 = Color(0xFFE8E2D9);
  static const Color papel300 = Color(0xFFD6CEC2);
  static const Color papel400 = Color(0xFFB5AB9C);
  static const Color papel500 = Color(0xFF8C8275); // bordes — 3.33:1
  static const Color papel600 = Color(0xFF6B6255); // texto sec. — 5.28:1
  static const Color papel700 = Color(0xFF4E463C); // 8.17:1
  static const Color papel800 = Color(0xFF332D26);
  static const Color papel900 = Color(0xFF1F1B16); // birome — 15.09:1

  // ---------------------------------------------------------------------------
  // Tierra — escala de superficies para dark mode. Marrones, no grises.
  // ---------------------------------------------------------------------------
  static const Color tierra950 = Color(0xFF14100C); // fondo dark
  static const Color tierra900 = Color(0xFF1B1712); // superficie dark
  static const Color tierra850 = Color(0xFF211C17);
  static const Color tierra800 = Color(0xFF2A231C);
  static const Color tierra750 = Color(0xFF332B22);
  static const Color tierra700 = Color(0xFF3D342A);
  static const Color tierra600 = Color(0xFF4A4136);
  static const Color tierra500 = Color(0xFF746A5C); // outline dark — 3.36:1
  static const Color tierra400 = Color(0xFF8C8073);
  static const Color tierra300 = Color(0xFFA99C8B); // texto sec. dark — 6.63:1
  static const Color tierra200 = Color(0xFFC4B8A6);
  static const Color tierra100 = Color(0xFFE6DCCE); // texto dark — 13.15:1
  static const Color tierra50 = Color(0xFFF2EADF);

  // ---------------------------------------------------------------------------
  // Ocre capitán — acento RESERVADO. Solo capitán y MVP.
  // ocre500 es DECORATIVO (2.15:1 sobre papel): nunca texto.
  // ---------------------------------------------------------------------------
  static const Color ocre100 = Color(0xFFFBEFD4);
  static const Color ocre300 = Color(0xFFF0C868);
  static const Color ocre500 = Color(0xFFD99A2B);
  static const Color ocre600 = Color(0xFFE8B45C); // dark — 9.44:1
  static const Color ocre700 = Color(0xFF8A5E10); // texto — 5.02:1
  static const Color ocreDarkContainer = Color(0xFF3D2F14);
  static const Color ocreDarkBorder = Color(0xFF6B5220);

  // ---------------------------------------------------------------------------
  // Tiza — la única nota fría de la paleta. Info.
  // ---------------------------------------------------------------------------
  static const Color tiza100 = Color(0xFFD9E8F2);
  static const Color tiza300 = Color(0xFF7FB6DC);
  static const Color tiza500 = Color(0xFF1F5F8B);
  static const Color tiza700 = Color(0xFF133D59);

  // ---------------------------------------------------------------------------
  // Semánticos — LIGHT
  // ---------------------------------------------------------------------------
  static const Color successLight = Color(0xFF2F7A46); // 4.64:1
  static const Color successContainerLight = Color(0xFFDCEDE2);
  static const Color onSuccessContainerLight = Color(0xFF1B4A29);

  /// Carmín frío (hue ~353°) para diferenciarlo del ladrillo primario (hue 13°).
  static const Color errorLight = Color(0xFFA81F2D); // 6.39:1
  static const Color errorContainerLight = Color(0xFFF9DCDD);
  static const Color onErrorContainerLight = Color(0xFF6B1019);

  static const Color warningLight = Color(0xFF8A5A00); // 5.22:1
  static const Color warningContainerLight = Color(0xFFFBEBCF);
  static const Color onWarningContainerLight = Color(0xFF6B4708);

  static const Color infoLight = tiza500; // 6.03:1
  static const Color infoContainerLight = tiza100;
  static const Color onInfoContainerLight = tiza700;

  // ---------------------------------------------------------------------------
  // Semánticos — DARK
  // ---------------------------------------------------------------------------
  static const Color successDark = Color(0xFF7FC08F); // 8.35:1
  static const Color successContainerDark = Color(0xFF1B4A29);
  static const Color onSuccessContainerDark = Color(0xFFDCEDE2);

  static const Color errorDark = Color(0xFFF09384); // 7.82:1
  static const Color onErrorDark = Color(0xFF4A0A10);
  static const Color errorContainerDark = Color(0xFF7A1622);
  static const Color onErrorContainerDark = Color(0xFFFFDAD4);

  static const Color warningDark = ocre600; // 9.44:1
  static const Color warningContainerDark = Color(0xFF6B4708);
  static const Color onWarningContainerDark = Color(0xFFFBEBCF);

  static const Color infoDark = tiza300; // 8.17:1
  static const Color infoContainerDark = tiza700;
  static const Color onInfoContainerDark = tiza100;

  static const Color primaryContainerDark = Color(0xFF7A2412);
  static const Color onPrimaryContainerDark = Color(0xFFFFD9CC);
  static const Color secondaryContainerDark = Color(0xFF1E4A2E);
  static const Color onSecondaryContainerDark = Color(0xFFC9E8D6);

  // ---------------------------------------------------------------------------
  // Chips de posición — cada puesto tiene su par contenedor/texto (>= 7:1)
  // ---------------------------------------------------------------------------
  static const Color arqueroContainerLight = Color(0xFFFBEBCF);
  static const Color onArqueroContainerLight = Color(0xFF6B4708);
  static const Color defensaContainerLight = Color(0xFFD9E8F2);
  static const Color onDefensaContainerLight = Color(0xFF133D59);
  static const Color medioContainerLight = Color(0xFFC9E0D2);
  static const Color onMedioContainerLight = Color(0xFF12301D);
  static const Color delanteroContainerLight = Color(0xFFF6D9D0);
  static const Color onDelanteroContainerLight = Color(0xFF661A0B);

  static const Color arqueroContainerDark = Color(0xFF4A3208);
  static const Color defensaContainerDark = Color(0xFF123245);
  static const Color medioContainerDark = Color(0xFF1E4A2E);
  static const Color delanteroContainerDark = Color(0xFF7A2412);

  // ---------------------------------------------------------------------------
  // Fallback determinístico de avatar (hash del userId % 6).
  // Todos soportan papel900 encima con >= 7:1.
  // ---------------------------------------------------------------------------
  static const List<Color> avatarFallback = <Color>[
    Color(0xFFEDB3A2),
    Color(0xFF9AC4AB),
    Color(0xFFF0C868),
    Color(0xFFD6CEC2),
    Color(0xFF9BB8CE),
    Color(0xFFD8B3A0),
  ];

  // ---------------------------------------------------------------------------
  // Efectos. Alpha pre-calculado para poder ser `const`.
  // ---------------------------------------------------------------------------
  static const Color shadow06 = Color(0x0F1F1B16); // 6 %
  static const Color shadow04 = Color(0x0A1F1B16); // 4 %
  static const Color shadow08 = Color(0x141F1B16); // 8 %
  static const Color shadow05 = Color(0x0D1F1B16); // 5 %
  static const Color shadow10 = Color(0x1A1F1B16); // 10 %
  static const Color shadow12 = Color(0x1F1F1B16); // 12 %

  static const Color scrimLight = Color(0x8C1F1B16); // 55 % sobre foto
  static const Color scrimDark = Color(0xB30A0806); // 70 %

  static const Color overlayHoverLight = Color(0x0F1F1B16);
  static const Color overlayPressedLight = Color(0x1F1F1B16);
  static const Color overlayHoverDark = Color(0x0FE6DCCE);

  /// Ripple sobre relleno de color (botón primario): cal translúcida.
  static const Color onColorHover = Color(0x14FFFDFA); // 8 %
  static const Color onColorPressed = Color(0x1FFFFDFA); // 12 %
  static const Color overlayPressedDark = Color(0x1FE6DCCE);

  static const Color skeletonBaseLight = papel200;
  static const Color skeletonSheenLight = papel50;
  static const Color skeletonBaseDark = tierra800;
  static const Color skeletonSheenDark = tierra750;
}

// =============================================================================
// 2. GEOMETRÍA — espaciado, radios, sombras, motion
// =============================================================================

/// Escala de espaciado. Base 4 dp.
abstract final class FulbitoSpacing {
  const FulbitoSpacing._();

  static const double none = 0;
  static const double x1 = 4;
  static const double x2 = 8;
  static const double x3 = 12;
  static const double x4 = 16; // unidad base
  static const double x5 = 20;
  static const double x6 = 24;
  static const double x8 = 32;
  static const double x10 = 40;
  static const double x12 = 48;
  static const double x16 = 64;

  static const double screenMargin = 16;
  static const double cardPadding = 20;
  static const double sectionGap = 32;
  static const double blockGap = 24;
  static const double gutter = 16;
  static const double maxContentWidth = 600;

  /// Tercio inferior reservado a acciones primarias (uso con una mano).
  static const double thumbZoneHeight = 240;
}

/// Radios de borde. Suaves, no burbuja.
abstract final class FulbitoRadii {
  const FulbitoRadii._();

  static const double none = 0;
  static const double xs = 6;
  static const double sm = 10;
  static const double md = 14;
  static const double lg = 20;
  static const double xl = 28;
  static const double pill = 999;

  static const BorderRadius brXs = BorderRadius.all(Radius.circular(xs));
  static const BorderRadius brSm = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius brMd = BorderRadius.all(Radius.circular(md));
  static const BorderRadius brLg = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius brXl = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius brPill = BorderRadius.all(Radius.circular(pill));

  static const RoundedRectangleBorder shapeSm =
      RoundedRectangleBorder(borderRadius: brSm);
  static const RoundedRectangleBorder shapeMd =
      RoundedRectangleBorder(borderRadius: brMd);
  static const RoundedRectangleBorder shapeLg =
      RoundedRectangleBorder(borderRadius: brLg);
  static const RoundedRectangleBorder shapePill =
      RoundedRectangleBorder(borderRadius: brPill);
  static const RoundedRectangleBorder shapeSheet = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(xl)),
  );
}

/// Sombras TEÑIDAS DE MARRÓN. Una sombra negra sobre papel cálido se lee
/// como mancha gris sucia. En dark no se usan sombras: `elevation 0` + borde.
abstract final class FulbitoShadows {
  const FulbitoShadows._();

  static const List<BoxShadow> none = <BoxShadow>[];

  /// Tarjetas en reposo.
  static const List<BoxShadow> e1 = <BoxShadow>[
    BoxShadow(
      color: FulbitoColors.shadow06,
      offset: Offset(0, 1),
      blurRadius: 2,
    ),
    BoxShadow(
      color: FulbitoColors.shadow04,
      offset: Offset(0, 1),
      blurRadius: 3,
    ),
  ];

  /// Tarjeta de partido, bottom nav.
  static const List<BoxShadow> e2 = <BoxShadow>[
    BoxShadow(
      color: FulbitoColors.shadow08,
      offset: Offset(0, 2),
      blurRadius: 4,
    ),
    BoxShadow(
      color: FulbitoColors.shadow05,
      offset: Offset(0, 4),
      blurRadius: 8,
    ),
  ];

  /// FAB, menús, elemento arrastrado.
  static const List<BoxShadow> e3 = <BoxShadow>[
    BoxShadow(
      color: FulbitoColors.shadow10,
      offset: Offset(0, 4),
      blurRadius: 8,
    ),
    BoxShadow(
      color: FulbitoColors.shadow06,
      offset: Offset(0, 8),
      blurRadius: 16,
    ),
  ];

  /// Diálogos, bottom sheets.
  static const List<BoxShadow> e4 = <BoxShadow>[
    BoxShadow(
      color: FulbitoColors.shadow12,
      offset: Offset(0, 8),
      blurRadius: 16,
    ),
    BoxShadow(
      color: FulbitoColors.shadow08,
      offset: Offset(0, 16),
      blurRadius: 32,
    ),
  ];
}

/// Duraciones y curvas. Corto y seco: la app se siente rápida antes que
/// simpática. Nada supera los 400 ms, nada rebota más de una vez.
abstract final class FulbitoMotion {
  const FulbitoMotion._();

  static const Duration instant = Duration(milliseconds: 100);
  static const Duration fast = Duration(milliseconds: 140);
  static const Duration base = Duration(milliseconds: 200);
  static const Duration medium = Duration(milliseconds: 240);
  static const Duration slow = Duration(milliseconds: 320);
  static const Duration emphasis = Duration(milliseconds: 400);
  static const Duration stagger = Duration(milliseconds: 40);
  static const Duration shimmer = Duration(milliseconds: 1400);

  static const Curve standard = Curves.easeOutCubic;
  static const Curve exit = Curves.easeInCubic;
  static const Curve overshoot = Curves.easeOutBack;

  static const double pressScaleButton = 0.98;
  static const double pressScaleCard = 0.985;
  static const double pressScaleAvatar = 0.94;
  static const double dragScale = 1.08;
}

/// Medidas de componentes que el tema no puede expresar por sí solo.
abstract final class FulbitoMetrics {
  const FulbitoMetrics._();

  static const double buttonHeight = 52; // > 40 de M3: dedo con tierra o agua
  static const double buttonHeightTertiary = 48;
  static const double fieldHeight = 56;
  static const double chipHeight = 32;
  static const double navHeight = 64;
  static const double minTapTarget = 48;
  static const double minTapSeparation = 8;
  static const double matchCardStatusBar = 4;
  static const double avatarOverlap = -12;
  static const double captainRingWidth = 2.5;
  static const double borderWidth = 1.5;
  static const double borderWidthFocused = 2;
  static const double maxSupportedTextScale = 2.0;
  static const double maxNumericTextScale = 1.3;
}

// =============================================================================
// 3. TIPOGRAFÍA
// =============================================================================

/// Fraunces (display) + Archivo (UI) + Caveat (acento manuscrito).
///
/// Base 17 sp y no 16: el capitán lee de pie, de noche, con una mano. Un punto
/// extra de cuerpo es la mejora de accesibilidad más barata que existe.
///
/// Los ejes variables SOFT/WONK de Fraunces NO son controlables desde
/// `google_fonts` (sirve instancias estáticas por peso). Si diseño quiere el
/// "wonk", hay que bundlear el .ttf variable en assets/fonts.
abstract final class FulbitoTypography {
  const FulbitoTypography._();

  /// Números tabulares: sin esto, un marcador que va de 0 a 1 se mueve.
  static const List<FontFeature> tabular = <FontFeature>[
    FontFeature.tabularFigures(),
  ];

  // --- Display: Fraunces. Nunca por debajo de 20 sp. -------------------------

  static TextStyle display(Color c) => GoogleFonts.fraunces(
        fontSize: 40,
        fontWeight: FontWeight.w900,
        height: 44 / 40,
        letterSpacing: -0.5,
        color: c,
      );

  static TextStyle h1(Color c) => GoogleFonts.fraunces(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 38 / 32,
        letterSpacing: -0.3,
        color: c,
      );

  static TextStyle h2(Color c) => GoogleFonts.fraunces(
        fontSize: 26,
        fontWeight: FontWeight.w700,
        height: 32 / 26,
        letterSpacing: -0.2,
        color: c,
      );

  // --- UI: Archivo ----------------------------------------------------------

  static TextStyle h3(Color c) => GoogleFonts.archivo(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 26 / 20,
        color: c,
      );

  static TextStyle title(Color c) => GoogleFonts.archivo(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        height: 24 / 17,
        color: c,
      );

  static TextStyle titleSmall(Color c) => GoogleFonts.archivo(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        height: 20 / 15,
        color: c,
      );

  static TextStyle bodyLarge(Color c) => GoogleFonts.archivo(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        height: 26 / 17,
        color: c,
      );

  static TextStyle bodyMedium(Color c) => GoogleFonts.archivo(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        height: 22 / 15,
        color: c,
      );

  static TextStyle bodySmall(Color c) => GoogleFonts.archivo(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 20 / 13,
        letterSpacing: 0.1,
        color: c,
      );

  static TextStyle label(Color c) => GoogleFonts.archivo(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        height: 16 / 15,
        letterSpacing: 0.2,
        color: c,
      );

  static TextStyle labelSmall(Color c) => GoogleFonts.archivo(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        height: 16 / 13,
        letterSpacing: 0.2,
        color: c,
      );

  static TextStyle caption(Color c) => GoogleFonts.archivo(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 16 / 12,
        letterSpacing: 0.1,
        color: c,
      );

  /// MAYÚSCULA solo acá y en el badge de capitán. En otro lado grita.
  static TextStyle overline(Color c) => GoogleFonts.archivo(
        fontSize: 11,
        fontWeight: FontWeight.w700,
        height: 14 / 11,
        letterSpacing: 1.2,
        color: c,
      );

  /// Estadísticas grandes. Clampear el textScaler a 1.3 al usarlo.
  static TextStyle numeric(Color c) => GoogleFonts.archivo(
        fontSize: 48,
        fontWeight: FontWeight.w700,
        height: 1.0,
        letterSpacing: -1.0,
        fontFeatures: tabular,
        color: c,
      );

  /// Caveat. Presupuesto: MÁXIMO un elemento por pantalla, nunca funcional,
  /// nunca por debajo de 18 sp. Si aparece en más lugares, la dirección pasa
  /// de "hecha por alguien que juega" a "plantilla de Canva".
  static TextStyle manuscrito(Color c) => GoogleFonts.caveat(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        height: 28 / 22,
        color: c,
      );

  /// TextTheme M3 completo. `onSurface` es el color de texto principal,
  /// `onSurfaceVariant` el secundario.
  static TextTheme textTheme({
    required Color onSurface,
    required Color onSurfaceVariant,
  }) {
    return TextTheme(
      displayLarge: display(onSurface),
      displayMedium: h1(onSurface),
      displaySmall: h2(onSurface),
      headlineLarge: h1(onSurface), // alias de h1
      headlineMedium: h2(onSurface), // alias de h2
      headlineSmall: h3(onSurface),
      titleLarge: h3(onSurface),
      titleMedium: title(onSurface),
      titleSmall: titleSmall(onSurface),
      bodyLarge: bodyLarge(onSurface),
      bodyMedium: bodyMedium(onSurface),
      bodySmall: bodySmall(onSurfaceVariant),
      labelLarge: label(onSurface),
      labelMedium: labelSmall(onSurface),
      labelSmall: overline(onSurfaceVariant),
    );
  }
}

// =============================================================================
// 4. THEME EXTENSION — todo lo que M3 no tiene slot para expresar
// =============================================================================

/// Roles propios de FulbitoApp que Material 3 no modela: ocre capitán,
/// semánticos de éxito/advertencia/info, colores de posición, skeletons.
///
/// Uso: `Theme.of(context).extension<FulbitoTokens>()!.captainAccent`
@immutable
class FulbitoTokens extends ThemeExtension<FulbitoTokens> {
  const FulbitoTokens({
    required this.captainAccent,
    required this.onCaptainAccent,
    required this.captainContainer,
    required this.onCaptainContainer,
    required this.captainBorder,
    required this.success,
    required this.onSuccess,
    required this.successContainer,
    required this.onSuccessContainer,
    required this.warning,
    required this.onWarning,
    required this.warningContainer,
    required this.onWarningContainer,
    required this.info,
    required this.onInfo,
    required this.infoContainer,
    required this.onInfoContainer,
    required this.pitch,
    required this.pitchLines,
    required this.arqueroContainer,
    required this.onArqueroContainer,
    required this.defensaContainer,
    required this.onDefensaContainer,
    required this.medioContainer,
    required this.onMedioContainer,
    required this.delanteroContainer,
    required this.onDelanteroContainer,
    required this.skeletonBase,
    required this.skeletonSheen,
    required this.photoScrim,
    required this.cardShadow,
    required this.numericStyle,
    required this.manuscritoStyle,
    required this.captionStyle,
    required this.overlineStyle,
  });

  final Color captainAccent;
  final Color onCaptainAccent;
  final Color captainContainer;
  final Color onCaptainContainer;
  final Color captainBorder;

  final Color success;
  final Color onSuccess;
  final Color successContainer;
  final Color onSuccessContainer;

  final Color warning;
  final Color onWarning;
  final Color warningContainer;
  final Color onWarningContainer;

  final Color info;
  final Color onInfo;
  final Color infoContainer;
  final Color onInfoContainer;

  final Color pitch;
  final Color pitchLines;

  final Color arqueroContainer;
  final Color onArqueroContainer;
  final Color defensaContainer;
  final Color onDefensaContainer;
  final Color medioContainer;
  final Color onMedioContainer;
  final Color delanteroContainer;
  final Color onDelanteroContainer;

  final Color skeletonBase;
  final Color skeletonSheen;
  final Color photoScrim;

  /// Sombras teñidas de marrón para tarjetas custom (elevación 2).
  /// Lista vacía en dark: ahí la jerarquía se comunica con borde.
  final List<BoxShadow> cardShadow;

  final TextStyle numericStyle;
  final TextStyle manuscritoStyle;
  final TextStyle captionStyle;
  final TextStyle overlineStyle;

  static const FulbitoTokens light = FulbitoTokens(
    captainAccent: FulbitoColors.ocre500,
    onCaptainAccent: FulbitoColors.papel900,
    captainContainer: FulbitoColors.ocre100,
    onCaptainContainer: FulbitoColors.ocre700,
    captainBorder: FulbitoColors.ocre300,
    success: FulbitoColors.successLight,
    onSuccess: FulbitoColors.papel0,
    successContainer: FulbitoColors.successContainerLight,
    onSuccessContainer: FulbitoColors.onSuccessContainerLight,
    warning: FulbitoColors.warningLight,
    onWarning: FulbitoColors.papel0,
    warningContainer: FulbitoColors.warningContainerLight,
    onWarningContainer: FulbitoColors.onWarningContainerLight,
    info: FulbitoColors.infoLight,
    onInfo: FulbitoColors.papel0,
    infoContainer: FulbitoColors.infoContainerLight,
    onInfoContainer: FulbitoColors.onInfoContainerLight,
    pitch: FulbitoColors.pasto500,
    pitchLines: FulbitoColors.papel0,
    arqueroContainer: FulbitoColors.arqueroContainerLight,
    onArqueroContainer: FulbitoColors.onArqueroContainerLight,
    defensaContainer: FulbitoColors.defensaContainerLight,
    onDefensaContainer: FulbitoColors.onDefensaContainerLight,
    medioContainer: FulbitoColors.medioContainerLight,
    onMedioContainer: FulbitoColors.onMedioContainerLight,
    delanteroContainer: FulbitoColors.delanteroContainerLight,
    onDelanteroContainer: FulbitoColors.onDelanteroContainerLight,
    skeletonBase: FulbitoColors.skeletonBaseLight,
    skeletonSheen: FulbitoColors.skeletonSheenLight,
    photoScrim: FulbitoColors.scrimLight,
    cardShadow: FulbitoShadows.e2,
    numericStyle: TextStyle(),
    manuscritoStyle: TextStyle(),
    captionStyle: TextStyle(),
    overlineStyle: TextStyle(),
  );

  static const FulbitoTokens dark = FulbitoTokens(
    captainAccent: FulbitoColors.ocre600,
    onCaptainAccent: FulbitoColors.papel900,
    captainContainer: FulbitoColors.ocreDarkContainer,
    onCaptainContainer: FulbitoColors.ocre600,
    captainBorder: FulbitoColors.ocreDarkBorder,
    success: FulbitoColors.successDark,
    onSuccess: FulbitoColors.pasto900,
    successContainer: FulbitoColors.successContainerDark,
    onSuccessContainer: FulbitoColors.onSuccessContainerDark,
    warning: FulbitoColors.warningDark,
    onWarning: Color(0xFF3D2A00),
    warningContainer: FulbitoColors.warningContainerDark,
    onWarningContainer: FulbitoColors.onWarningContainerDark,
    info: FulbitoColors.infoDark,
    onInfo: Color(0xFF0D2637),
    infoContainer: FulbitoColors.infoContainerDark,
    onInfoContainer: FulbitoColors.onInfoContainerDark,
    pitch: FulbitoColors.pasto800,
    pitchLines: FulbitoColors.tierra100,
    arqueroContainer: FulbitoColors.arqueroContainerDark,
    onArqueroContainer: FulbitoColors.onWarningContainerDark,
    defensaContainer: FulbitoColors.defensaContainerDark,
    onDefensaContainer: FulbitoColors.tiza100,
    medioContainer: FulbitoColors.medioContainerDark,
    onMedioContainer: FulbitoColors.onSecondaryContainerDark,
    delanteroContainer: FulbitoColors.delanteroContainerDark,
    onDelanteroContainer: FulbitoColors.onPrimaryContainerDark,
    skeletonBase: FulbitoColors.skeletonBaseDark,
    skeletonSheen: FulbitoColors.skeletonSheenDark,
    photoScrim: FulbitoColors.scrimDark,
    cardShadow: FulbitoShadows.none,
    numericStyle: TextStyle(),
    manuscritoStyle: TextStyle(),
    captionStyle: TextStyle(),
    overlineStyle: TextStyle(),
  );

  /// Los estilos tipográficos se resuelven acá porque `GoogleFonts` no es
  /// `const`. `FulbitoTheme` llama a este método al construir el tema.
  FulbitoTokens withResolvedTextStyles({
    required Color onSurface,
    required Color onSurfaceVariant,
  }) {
    return copyWith(
      numericStyle: FulbitoTypography.numeric(onSurface),
      manuscritoStyle: FulbitoTypography.manuscrito(onSurfaceVariant),
      captionStyle: FulbitoTypography.caption(onSurfaceVariant),
      overlineStyle: FulbitoTypography.overline(onSurfaceVariant),
    );
  }

  @override
  FulbitoTokens copyWith({
    Color? captainAccent,
    Color? onCaptainAccent,
    Color? captainContainer,
    Color? onCaptainContainer,
    Color? captainBorder,
    Color? success,
    Color? onSuccess,
    Color? successContainer,
    Color? onSuccessContainer,
    Color? warning,
    Color? onWarning,
    Color? warningContainer,
    Color? onWarningContainer,
    Color? info,
    Color? onInfo,
    Color? infoContainer,
    Color? onInfoContainer,
    Color? pitch,
    Color? pitchLines,
    Color? arqueroContainer,
    Color? onArqueroContainer,
    Color? defensaContainer,
    Color? onDefensaContainer,
    Color? medioContainer,
    Color? onMedioContainer,
    Color? delanteroContainer,
    Color? onDelanteroContainer,
    Color? skeletonBase,
    Color? skeletonSheen,
    Color? photoScrim,
    List<BoxShadow>? cardShadow,
    TextStyle? numericStyle,
    TextStyle? manuscritoStyle,
    TextStyle? captionStyle,
    TextStyle? overlineStyle,
  }) {
    return FulbitoTokens(
      captainAccent: captainAccent ?? this.captainAccent,
      onCaptainAccent: onCaptainAccent ?? this.onCaptainAccent,
      captainContainer: captainContainer ?? this.captainContainer,
      onCaptainContainer: onCaptainContainer ?? this.onCaptainContainer,
      captainBorder: captainBorder ?? this.captainBorder,
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      successContainer: successContainer ?? this.successContainer,
      onSuccessContainer: onSuccessContainer ?? this.onSuccessContainer,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      warningContainer: warningContainer ?? this.warningContainer,
      onWarningContainer: onWarningContainer ?? this.onWarningContainer,
      info: info ?? this.info,
      onInfo: onInfo ?? this.onInfo,
      infoContainer: infoContainer ?? this.infoContainer,
      onInfoContainer: onInfoContainer ?? this.onInfoContainer,
      pitch: pitch ?? this.pitch,
      pitchLines: pitchLines ?? this.pitchLines,
      arqueroContainer: arqueroContainer ?? this.arqueroContainer,
      onArqueroContainer: onArqueroContainer ?? this.onArqueroContainer,
      defensaContainer: defensaContainer ?? this.defensaContainer,
      onDefensaContainer: onDefensaContainer ?? this.onDefensaContainer,
      medioContainer: medioContainer ?? this.medioContainer,
      onMedioContainer: onMedioContainer ?? this.onMedioContainer,
      delanteroContainer: delanteroContainer ?? this.delanteroContainer,
      onDelanteroContainer: onDelanteroContainer ?? this.onDelanteroContainer,
      skeletonBase: skeletonBase ?? this.skeletonBase,
      skeletonSheen: skeletonSheen ?? this.skeletonSheen,
      photoScrim: photoScrim ?? this.photoScrim,
      cardShadow: cardShadow ?? this.cardShadow,
      numericStyle: numericStyle ?? this.numericStyle,
      manuscritoStyle: manuscritoStyle ?? this.manuscritoStyle,
      captionStyle: captionStyle ?? this.captionStyle,
      overlineStyle: overlineStyle ?? this.overlineStyle,
    );
  }

  @override
  FulbitoTokens lerp(ThemeExtension<FulbitoTokens>? other, double t) {
    if (other is! FulbitoTokens) return this;
    Color c(Color a, Color b) => Color.lerp(a, b, t)!;
    return FulbitoTokens(
      captainAccent: c(captainAccent, other.captainAccent),
      onCaptainAccent: c(onCaptainAccent, other.onCaptainAccent),
      captainContainer: c(captainContainer, other.captainContainer),
      onCaptainContainer: c(onCaptainContainer, other.onCaptainContainer),
      captainBorder: c(captainBorder, other.captainBorder),
      success: c(success, other.success),
      onSuccess: c(onSuccess, other.onSuccess),
      successContainer: c(successContainer, other.successContainer),
      onSuccessContainer: c(onSuccessContainer, other.onSuccessContainer),
      warning: c(warning, other.warning),
      onWarning: c(onWarning, other.onWarning),
      warningContainer: c(warningContainer, other.warningContainer),
      onWarningContainer: c(onWarningContainer, other.onWarningContainer),
      info: c(info, other.info),
      onInfo: c(onInfo, other.onInfo),
      infoContainer: c(infoContainer, other.infoContainer),
      onInfoContainer: c(onInfoContainer, other.onInfoContainer),
      pitch: c(pitch, other.pitch),
      pitchLines: c(pitchLines, other.pitchLines),
      arqueroContainer: c(arqueroContainer, other.arqueroContainer),
      onArqueroContainer: c(onArqueroContainer, other.onArqueroContainer),
      defensaContainer: c(defensaContainer, other.defensaContainer),
      onDefensaContainer: c(onDefensaContainer, other.onDefensaContainer),
      medioContainer: c(medioContainer, other.medioContainer),
      onMedioContainer: c(onMedioContainer, other.onMedioContainer),
      delanteroContainer: c(delanteroContainer, other.delanteroContainer),
      onDelanteroContainer: c(onDelanteroContainer, other.onDelanteroContainer),
      skeletonBase: c(skeletonBase, other.skeletonBase),
      skeletonSheen: c(skeletonSheen, other.skeletonSheen),
      photoScrim: c(photoScrim, other.photoScrim),
      cardShadow: t < 0.5 ? cardShadow : other.cardShadow,
      numericStyle:
          TextStyle.lerp(numericStyle, other.numericStyle, t) ?? numericStyle,
      manuscritoStyle:
          TextStyle.lerp(manuscritoStyle, other.manuscritoStyle, t) ??
              manuscritoStyle,
      captionStyle:
          TextStyle.lerp(captionStyle, other.captionStyle, t) ?? captionStyle,
      overlineStyle:
          TextStyle.lerp(overlineStyle, other.overlineStyle, t) ?? overlineStyle,
    );
  }
}

// =============================================================================
// 5. COLOR SCHEMES
// =============================================================================

abstract final class FulbitoSchemes {
  const FulbitoSchemes._();

  static const ColorScheme light = ColorScheme(
    brightness: Brightness.light,
    primary: FulbitoColors.ladrillo500,
    onPrimary: FulbitoColors.papel0, // 5.10:1 AA
    primaryContainer: FulbitoColors.ladrillo100,
    onPrimaryContainer: FulbitoColors.ladrillo800, // 9.17:1 AAA
    secondary: FulbitoColors.pasto500,
    onSecondary: FulbitoColors.papel0, // 7.54:1 AAA
    secondaryContainer: FulbitoColors.pasto100,
    onSecondaryContainer: FulbitoColors.pasto800, // 10.28:1 AAA
    tertiary: FulbitoColors.ocre700,
    onTertiary: FulbitoColors.papel0,
    tertiaryContainer: FulbitoColors.ocre100,
    onTertiaryContainer: FulbitoColors.ocre700, // 5.02:1 AA
    error: FulbitoColors.errorLight, // carmín frío, no ladrillo
    onError: FulbitoColors.papel0, // 7.13:1 AAA
    errorContainer: FulbitoColors.errorContainerLight,
    onErrorContainer: FulbitoColors.onErrorContainerLight,
    surface: FulbitoColors.papel0,
    onSurface: FulbitoColors.papel900, // 16.86:1 AAA
    onSurfaceVariant: FulbitoColors.papel600, // 5.28:1 AA
    surfaceContainerLowest: FulbitoColors.papel0,
    surfaceContainerLow: FulbitoColors.papel50,
    surfaceContainer: FulbitoColors.papel100,
    surfaceContainerHigh: FulbitoColors.papel200,
    surfaceContainerHighest: FulbitoColors.papel300,
    surfaceDim: FulbitoColors.papel200,
    surfaceBright: FulbitoColors.papel0,
    outline: FulbitoColors.papel500, // 3.33:1 — UI no textual
    outlineVariant: FulbitoColors.papel300,
    inverseSurface: FulbitoColors.papel900,
    onInverseSurface: FulbitoColors.papel0,
    inversePrimary: FulbitoColors.ladrillo300,
    shadow: FulbitoColors.papel900, // sombra marrón, no negra
    scrim: FulbitoColors.papel900,
    surfaceTint: FulbitoColors.ladrillo500,
  );

  /// "El potrero de noche": tierra mojada bajo luz de mercurio.
  /// No es POTRERO invertido, es POTRERO a las 22 h.
  static const ColorScheme dark = ColorScheme(
    brightness: Brightness.dark,
    primary: FulbitoColors.ladrillo350, // 6.70:1 AA
    onPrimary: FulbitoColors.papel900, // 6.44:1 AA
    primaryContainer: FulbitoColors.primaryContainerDark,
    onPrimaryContainer: FulbitoColors.onPrimaryContainerDark,
    secondary: FulbitoColors.pasto350, // 9.23:1 AAA
    onSecondary: FulbitoColors.papel900,
    secondaryContainer: FulbitoColors.secondaryContainerDark,
    onSecondaryContainer: FulbitoColors.onSecondaryContainerDark,
    tertiary: FulbitoColors.ocre600, // 9.44:1 AAA
    onTertiary: FulbitoColors.papel900,
    tertiaryContainer: FulbitoColors.ocreDarkContainer,
    onTertiaryContainer: FulbitoColors.ocre600,
    error: FulbitoColors.errorDark, // 7.82:1 AAA
    onError: FulbitoColors.onErrorDark,
    errorContainer: FulbitoColors.errorContainerDark,
    onErrorContainer: FulbitoColors.onErrorContainerDark,
    surface: FulbitoColors.tierra900,
    onSurface: FulbitoColors.tierra100, // 13.15:1 AAA
    onSurfaceVariant: FulbitoColors.tierra300, // 6.63:1 AA
    surfaceContainerLowest: FulbitoColors.tierra950,
    surfaceContainerLow: FulbitoColors.tierra850,
    surfaceContainer: FulbitoColors.tierra800,
    surfaceContainerHigh: FulbitoColors.tierra750,
    surfaceContainerHighest: FulbitoColors.tierra700,
    surfaceDim: FulbitoColors.tierra950,
    surfaceBright: FulbitoColors.tierra700,
    outline: FulbitoColors.tierra500, // 3.36:1 — UI no textual
    outlineVariant: FulbitoColors.tierra600,
    inverseSurface: FulbitoColors.tierra100,
    onInverseSurface: FulbitoColors.tierra950,
    inversePrimary: FulbitoColors.ladrillo600,
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    surfaceTint: Colors.transparent, // en dark elevamos con superficie, no tinte
  );
}

// =============================================================================
// 6. THEME DATA
// =============================================================================

abstract final class FulbitoTheme {
  const FulbitoTheme._();

  static ThemeData get light => _build(
        scheme: FulbitoSchemes.light,
        tokens: FulbitoTokens.light,
        scaffoldBackground: FulbitoColors.papel100,
        // En light la elevación se comunica con sombra marrón.
        cardElevation: 2,
        // El bottom nav NO lleva sombra: una sombra hacia arriba sobre papel
        // se lee como suciedad. Se separa con un borde superior de 1 px, que
        // el app shell dibuja (NavigationBarThemeData no expone `border`):
        //   DecoratedBox(
        //     decoration: BoxDecoration(
        //       border: Border(top: BorderSide(
        //         color: Theme.of(context).colorScheme.outlineVariant)),
        //     ),
        //     child: NavigationBar(...),
        //   )
        navElevation: 0,
      );

  static ThemeData get dark => _build(
        scheme: FulbitoSchemes.dark,
        tokens: FulbitoTokens.dark,
        scaffoldBackground: FulbitoColors.tierra950,
        // En dark toda sombra es invisible o produce halo sucio: elevación 0
        // + borde `outline` a 1 px.
        cardElevation: 0,
        navElevation: 0,
      );

  static ThemeData _build({
    required ColorScheme scheme,
    required FulbitoTokens tokens,
    required Color scaffoldBackground,
    required double cardElevation,
    required double navElevation,
  }) {
    final bool isDark = scheme.brightness == Brightness.dark;

    final TextTheme text = FulbitoTypography.textTheme(
      onSurface: scheme.onSurface,
      onSurfaceVariant: scheme.onSurfaceVariant,
    );

    final Color overlayHover =
        isDark ? FulbitoColors.overlayHoverDark : FulbitoColors.overlayHoverLight;
    final Color overlayPressed = isDark
        ? FulbitoColors.overlayPressedDark
        : FulbitoColors.overlayPressedLight;

    final Color disabledFill =
        isDark ? FulbitoColors.tierra700 : FulbitoColors.papel300;
    final Color disabledText =
        isDark ? FulbitoColors.tierra500 : FulbitoColors.papel500;

    // -------------------------------------------------------------------------
    // Botón primario — "Ladrillo". 52 dp de alto: es un botón para dedo con
    // guante, con tierra o con la mano mojada. Elevación 0: el relleno ya
    // comunica jerarquía y una sombra bajo ladrillo se ve sucia.
    // -------------------------------------------------------------------------
    final ButtonStyle primaryStyle = ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) return disabledFill;
        if (states.contains(WidgetState.pressed)) {
          return isDark ? FulbitoColors.ladrillo400 : FulbitoColors.ladrillo600;
        }
        if (states.contains(WidgetState.hovered)) {
          return isDark ? FulbitoColors.ladrillo300 : FulbitoColors.ladrillo400;
        }
        return scheme.primary;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) return disabledText;
        return scheme.onPrimary;
      }),
      // Nunca opacidad global en disabled: un botón semitransparente sobre
      // papel se lee como error de render.
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return FulbitoColors.onColorPressed;
        }
        if (states.contains(WidgetState.hovered)) {
          return FulbitoColors.onColorHover;
        }
        return null;
      }),
      elevation: const WidgetStatePropertyAll<double>(0),
      shadowColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
      surfaceTintColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
      textStyle: WidgetStatePropertyAll<TextStyle>(text.labelLarge!),
      padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.x4,
          vertical: FulbitoSpacing.x3 + 2,
        ),
      ),
      minimumSize: const WidgetStatePropertyAll<Size>(
        Size(64, FulbitoMetrics.buttonHeight),
      ),
      shape: const WidgetStatePropertyAll<OutlinedBorder>(FulbitoRadii.shapeMd),
      iconSize: const WidgetStatePropertyAll<double>(20),
      tapTargetSize: MaterialTapTargetSize.padded,
      animationDuration: FulbitoMotion.fast,
    );

    // -------------------------------------------------------------------------
    // Botón secundario — contorno. Es la variante por defecto cuando convive
    // con un primario en la misma fila.
    // -------------------------------------------------------------------------
    final ButtonStyle secondaryStyle = ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return isDark ? FulbitoColors.tierra750 : FulbitoColors.papel300;
        }
        if (states.contains(WidgetState.hovered)) {
          return isDark ? FulbitoColors.tierra800 : FulbitoColors.papel200;
        }
        return Colors.transparent;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) return disabledText;
        return scheme.onSurface;
      }),
      side: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return BorderSide(color: disabledFill, width: 1.5);
        }
        if (states.contains(WidgetState.focused)) {
          return BorderSide(color: scheme.primary, width: 2);
        }
        if (states.contains(WidgetState.pressed)) {
          return BorderSide(color: scheme.onSurfaceVariant, width: 1.5);
        }
        return BorderSide(color: scheme.outline, width: 1.5);
      }),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) return overlayPressed;
        if (states.contains(WidgetState.hovered)) return overlayHover;
        return null;
      }),
      textStyle: WidgetStatePropertyAll<TextStyle>(text.labelLarge!),
      padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.x4,
          vertical: FulbitoSpacing.x3 + 2,
        ),
      ),
      minimumSize: const WidgetStatePropertyAll<Size>(
        Size(64, FulbitoMetrics.buttonHeight),
      ),
      shape: const WidgetStatePropertyAll<OutlinedBorder>(FulbitoRadii.shapeMd),
      iconSize: const WidgetStatePropertyAll<double>(20),
      tapTargetSize: MaterialTapTargetSize.padded,
      animationDuration: FulbitoMotion.fast,
    );

    // -------------------------------------------------------------------------
    // Botón terciario — texto. Usa ladrillo600 y no ladrillo500 justamente por
    // el contraste sobre papel (6.07:1 vs 4.56:1).
    // -------------------------------------------------------------------------
    final Color tertiaryLabel =
        isDark ? FulbitoColors.ladrillo350 : FulbitoColors.ladrillo600;

    final ButtonStyle tertiaryStyle = ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return isDark
              ? FulbitoColors.primaryContainerDark
              : FulbitoColors.ladrillo100;
        }
        if (states.contains(WidgetState.hovered) ||
            states.contains(WidgetState.focused)) {
          return isDark ? FulbitoColors.tierra800 : FulbitoColors.ladrillo50;
        }
        return Colors.transparent;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) return disabledText;
        return tertiaryLabel;
      }),
      side: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return BorderSide(color: tertiaryLabel, width: 2);
        }
        return null;
      }),
      textStyle: WidgetStatePropertyAll<TextStyle>(
        FulbitoTypography.titleSmall(tertiaryLabel),
      ),
      padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.x3,
          vertical: FulbitoSpacing.x3,
        ),
      ),
      minimumSize: const WidgetStatePropertyAll<Size>(
        Size(48, FulbitoMetrics.buttonHeightTertiary),
      ),
      shape: const WidgetStatePropertyAll<OutlinedBorder>(FulbitoRadii.shapeSm),
      iconSize: const WidgetStatePropertyAll<double>(20),
      tapTargetSize: MaterialTapTargetSize.padded,
      animationDuration: FulbitoMotion.fast,
    );

    // -------------------------------------------------------------------------
    // Campo de texto. 56 dp, contorno completo. Placeholder en onSurfaceVariant
    // (5.28:1): legible, no decorativo.
    // -------------------------------------------------------------------------
    OutlineInputBorder border(Color color, double width) => OutlineInputBorder(
          borderRadius: FulbitoRadii.brSm,
          borderSide: BorderSide(color: color, width: width),
        );

    final InputDecorationTheme inputTheme = InputDecorationTheme(
      filled: true,
      fillColor: isDark ? FulbitoColors.tierra850 : FulbitoColors.papel50,
      isDense: false,
      constraints: const BoxConstraints(minHeight: FulbitoMetrics.fieldHeight),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: FulbitoSpacing.x4,
        vertical: FulbitoSpacing.x4,
      ),
      border: border(scheme.outline, FulbitoMetrics.borderWidth),
      enabledBorder: border(scheme.outline, FulbitoMetrics.borderWidth),
      focusedBorder: border(scheme.primary, FulbitoMetrics.borderWidthFocused),
      errorBorder: border(scheme.error, FulbitoMetrics.borderWidthFocused),
      focusedErrorBorder:
          border(scheme.error, FulbitoMetrics.borderWidthFocused),
      disabledBorder: border(disabledFill, 1),
      labelStyle: FulbitoTypography.labelSmall(scheme.onSurfaceVariant),
      floatingLabelStyle: FulbitoTypography.labelSmall(
        isDark ? FulbitoColors.ladrillo350 : FulbitoColors.ladrillo600,
      ),
      hintStyle: FulbitoTypography.bodyLarge(scheme.onSurfaceVariant),
      helperStyle: FulbitoTypography.caption(scheme.onSurfaceVariant),
      // El estado de error SIEMPRE lleva texto: nunca solo el borde rojo.
      errorStyle: FulbitoTypography.caption(scheme.error),
      errorMaxLines: 2,
      prefixIconColor: scheme.onSurfaceVariant,
      suffixIconColor: scheme.onSurfaceVariant,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
    );

    // -------------------------------------------------------------------------
    // Chip. 32 dp de alto, área de toque forzada a 48.
    // -------------------------------------------------------------------------
    final ChipThemeData chipTheme = ChipThemeData(
      backgroundColor: isDark ? FulbitoColors.tierra800 : FulbitoColors.papel200,
      selectedColor: scheme.primary,
      secondarySelectedColor: scheme.secondaryContainer,
      disabledColor: disabledFill,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      elevation: 0,
      pressElevation: 0,
      labelStyle: FulbitoTypography.labelSmall(scheme.onSurface),
      secondaryLabelStyle: FulbitoTypography.labelSmall(scheme.onPrimary),
      labelPadding: const EdgeInsets.symmetric(horizontal: FulbitoSpacing.x1),
      padding: const EdgeInsets.symmetric(
        horizontal: FulbitoSpacing.x2,
        vertical: FulbitoSpacing.x1 + 2,
      ),
      shape: FulbitoRadii.shapePill,
      side: BorderSide(color: scheme.outline, width: FulbitoMetrics.borderWidth),
      showCheckmark: true,
      checkmarkColor: scheme.onPrimary,
      iconTheme: IconThemeData(color: scheme.onSurfaceVariant, size: 16),
      brightness: scheme.brightness,
    );

    // -------------------------------------------------------------------------
    // Bottom navigation. Cuatro destinos: Partidos, Equipos, Stats, Grupo.
    // Activo = ícono relleno + píldora ladrillo50. El cambio trazo->relleno es
    // más legible de noche y de reojo que un cambio de color solo.
    // -------------------------------------------------------------------------
    final NavigationBarThemeData navTheme = NavigationBarThemeData(
      height: FulbitoMetrics.navHeight,
      backgroundColor: isDark ? FulbitoColors.tierra900 : FulbitoColors.papel0,
      elevation: navElevation,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      indicatorColor:
          isDark ? FulbitoColors.primaryContainerDark : FulbitoColors.ladrillo50,
      indicatorShape: FulbitoRadii.shapePill,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return FulbitoTypography.labelSmall(
            isDark ? FulbitoColors.ladrillo350 : FulbitoColors.ladrillo600,
          ).copyWith(fontWeight: FontWeight.w700);
        }
        return FulbitoTypography.labelSmall(scheme.onSurfaceVariant);
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(size: 24, color: scheme.primary);
        }
        return IconThemeData(size: 24, color: scheme.onSurfaceVariant);
      }),
    );

    // -------------------------------------------------------------------------
    // Snackbar. Flota 16 dp por encima del bottom nav: nunca lo tapa, el
    // capitán tiene que poder seguir navegando mientras lee.
    // -------------------------------------------------------------------------
    final SnackBarThemeData snackBarTheme = SnackBarThemeData(
      backgroundColor: scheme.inverseSurface,
      contentTextStyle: FulbitoTypography.bodyMedium(scheme.onInverseSurface)
          .copyWith(fontWeight: FontWeight.w500),
      actionTextColor:
          isDark ? FulbitoColors.ladrillo600 : FulbitoColors.ladrillo300,
      disabledActionTextColor: disabledText,
      elevation: isDark ? 0 : 3,
      shape: FulbitoRadii.shapeMd,
      behavior: SnackBarBehavior.floating,
      insetPadding: const EdgeInsets.fromLTRB(
        FulbitoSpacing.x4,
        FulbitoSpacing.x4,
        FulbitoSpacing.x4,
        FulbitoSpacing.x4 + FulbitoMetrics.navHeight,
      ),
      actionOverflowThreshold: 0.25,
      showCloseIcon: false,
    );

    // -------------------------------------------------------------------------
    // Tarjeta. En light, sombra marrón; en dark, elevación 0 + borde outline.
    // -------------------------------------------------------------------------
    final CardTheme cardTheme = CardTheme(
      color: scheme.surface,
      shadowColor: scheme.shadow,
      surfaceTintColor: Colors.transparent,
      elevation: cardElevation,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: FulbitoRadii.brLg,
        side: isDark
            ? BorderSide(color: scheme.outline, width: 1)
            : BorderSide.none,
      ),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: scheme.brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: scaffoldBackground,
      canvasColor: scaffoldBackground,
      textTheme: text,
      primaryTextTheme: text,
      fontFamily: GoogleFonts.archivo().fontFamily,
      splashFactory: InkSparkle.splashFactory,
      visualDensity: VisualDensity.standard,
      extensions: <ThemeExtension<dynamic>>[
        tokens.withResolvedTextStyles(
          onSurface: scheme.onSurface,
          onSurfaceVariant: scheme.onSurfaceVariant,
        ),
      ],

      // --- Botones ---
      elevatedButtonTheme: ElevatedButtonThemeData(style: primaryStyle),
      filledButtonTheme: FilledButtonThemeData(style: primaryStyle),
      outlinedButtonTheme: OutlinedButtonThemeData(style: secondaryStyle),
      textButtonTheme: TextButtonThemeData(style: tertiaryStyle),

      // --- Entrada de datos ---
      inputDecorationTheme: inputTheme,

      // --- Contenedores ---
      cardTheme: cardTheme,
      chipTheme: chipTheme,
      navigationBarTheme: navTheme,
      snackBarTheme: snackBarTheme,

      // --- App bar: transparente y sin sombra. Los 56 dp de una app bar fija
      //     son 56 dp menos de partido en pantalla.
      appBarTheme: AppBarTheme(
        backgroundColor: scaffoldBackground,
        foregroundColor: scheme.onSurface,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: FulbitoTypography.h3(scheme.onSurface),
        toolbarHeight: 56,
        iconTheme: IconThemeData(color: scheme.onSurface, size: 24),
        actionsIconTheme: IconThemeData(color: scheme.onSurface, size: 24),
      ),

      dividerTheme: DividerThemeData(
        color: scheme.outlineVariant,
        thickness: 1,
        space: 1,
      ),

      iconTheme: IconThemeData(
        color: isDark ? FulbitoColors.tierra300 : FulbitoColors.papel700,
        size: 24,
      ),

      // El FAB es una acción de pulgar: vive en el tercio inferior.
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: scheme.primary,
        foregroundColor: scheme.onPrimary,
        elevation: isDark ? 0 : 3,
        focusElevation: isDark ? 0 : 3,
        hoverElevation: isDark ? 0 : 4,
        highlightElevation: isDark ? 0 : 2,
        shape: FulbitoRadii.shapeMd,
        extendedTextStyle: text.labelLarge,
        sizeConstraints: const BoxConstraints.tightFor(width: 56, height: 56),
      ),

      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: scheme.surface,
        surfaceTintColor: Colors.transparent,
        shadowColor: scheme.shadow,
        elevation: isDark ? 0 : 4,
        modalElevation: isDark ? 0 : 4,
        shape: FulbitoRadii.shapeSheet,
        showDragHandle: true,
        dragHandleColor: scheme.outlineVariant,
        dragHandleSize: const Size(40, 4),
        clipBehavior: Clip.antiAlias,
      ),

      dialogTheme: DialogTheme(
        backgroundColor: scheme.surface,
        surfaceTintColor: Colors.transparent,
        shadowColor: scheme.shadow,
        elevation: isDark ? 0 : 4,
        shape: RoundedRectangleBorder(
          borderRadius: FulbitoRadii.brLg,
          side: isDark
              ? BorderSide(color: scheme.outline, width: 1)
              : BorderSide.none,
        ),
        titleTextStyle: FulbitoTypography.h2(scheme.onSurface),
        contentTextStyle: FulbitoTypography.bodyLarge(scheme.onSurface),
        insetPadding: const EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.x6,
          vertical: FulbitoSpacing.x6,
        ),
      ),

      listTileTheme: ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.x4,
          vertical: FulbitoSpacing.x2,
        ),
        minVerticalPadding: FulbitoSpacing.x2,
        minLeadingWidth: 40,
        iconColor: scheme.onSurfaceVariant,
        textColor: scheme.onSurface,
        titleTextStyle: FulbitoTypography.bodyLarge(scheme.onSurface),
        subtitleTextStyle:
            FulbitoTypography.bodyMedium(scheme.onSurfaceVariant),
        shape: FulbitoRadii.shapeSm,
      ),

      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: scheme.primary,
        linearTrackColor: scheme.surfaceContainerHighest,
        circularTrackColor: Colors.transparent,
        linearMinHeight: 6,
      ),

      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: scheme.inverseSurface,
          borderRadius: FulbitoRadii.brSm,
        ),
        textStyle: FulbitoTypography.caption(scheme.onInverseSurface),
        padding: const EdgeInsets.symmetric(
          horizontal: FulbitoSpacing.x2 + 2,
          vertical: FulbitoSpacing.x1 + 2,
        ),
        waitDuration: const Duration(milliseconds: 400),
      ),

      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }
}

// =============================================================================
// 7. HELPERS DE ACCESO
// =============================================================================

/// Azúcar sintáctico para leer el kit desde un widget.
///
///   context.fulbito.captainAccent
///   context.scheme.primary
extension FulbitoThemeContext on BuildContext {
  ColorScheme get scheme => Theme.of(this).colorScheme;
  TextTheme get texts => Theme.of(this).textTheme;
  FulbitoTokens get fulbito => Theme.of(this).extension<FulbitoTokens>()!;

  /// Clamp para números grandes: por encima de 1.3 un "47" no aporta nada
  /// y rompe el layout. Es la única limitación de escalado del kit.
  TextScaler get numericScaler =>
      MediaQuery.textScalerOf(this).clamp(maxScaleFactor: 1.3);
}

/// Color de fallback determinístico para el avatar: el mismo amigo tiene
/// siempre el mismo color, y eso construye reconocimiento.
Color fulbitoAvatarColor(String userId) {
  final int hash = userId.codeUnits.fold<int>(7, (a, b) => (a * 31 + b) & 0x7FFFFFFF);
  return FulbitoColors.avatarFallback[hash % FulbitoColors.avatarFallback.length];
}
