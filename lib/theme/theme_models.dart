import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unknown/extensions/color_extensions.dart';

///BOX DECORATION

@immutable
class GlobalBoxDecoration {
  static BoxDecoration primaryContainer = BoxDecoration(
    color: globalColorScheme.primaryContainer,
    borderRadius: GlobalRadius.s,
  );
  static BoxDecoration plain = BoxDecoration(
    color: globalColorScheme.primary.withOpacity(.2),
  );
  static BoxDecoration card = BoxDecoration(
    color: globalColorScheme.primaryContainer,
    borderRadius: GlobalRadius.l,
  );
  static BoxDecoration labelOutlined = BoxDecoration(
    //color: globalColorScheme.primary,
    border: Border.all(
        color: globalColorScheme.primary, style: BorderStyle.solid, width: 1),
    borderRadius: GlobalRadius.l,
  );
  static BoxDecoration label = BoxDecoration(
    color: globalColorScheme.primary.withOpacity(.2),
    borderRadius: GlobalRadius.s,
  );
  static BoxDecoration thumbnail = BoxDecoration(
    color: globalColorScheme.primary.withOpacity(.2),
    borderRadius: GlobalRadius.s,
  );
  static BoxDecoration avatar = BoxDecoration(
    border: Border.all(
        color: globalColorScheme.primary, style: BorderStyle.solid, width: 1),
    borderRadius: GlobalRadius.l,
  );

  const GlobalBoxDecoration._();
}

///LOTTIE ANIMATION

@immutable
class LottieAnimation {
  static const google = 'google_icon';
  static const login = 'google_icon';
  static const hbo = 'google_icon';
  static const netflix = 'google_icon';
  static const apple = 'google_icon';

  const LottieAnimation._();
}

///BOX SHADOWS

@immutable
class GlobalBoxShadow {
  static BoxShadow primary = BoxShadow(
    color: globalColorScheme.shadow.withOpacity(.5),
    blurRadius: 10,
  );

  const GlobalBoxShadow._();
}

///RADIUS
@immutable
class GlobalRadius {
  static const s = BorderRadius.all(Radius.circular(5));
  static const m = BorderRadius.all(Radius.circular(10));
  static const l = BorderRadius.all(Radius.circular(20));
  static const xl = BorderRadius.all(Radius.circular(40));

  const GlobalRadius._();
}

///PADDINGS
@immutable
class GlobalPaddingSize {
  static const double xxs = 2;
  static const double xs = 4;
  static const double s = 8;
  static const double m = 12;
  static const double l = 16;
  static const double xl = 20;

  const GlobalPaddingSize._();
}

///ICON SIZES
@immutable
class GlobalIconSize {
  static const double s = 8;
  static const double m = 12;
  static const double l = 16;
  static const double xl = 20;

  const GlobalIconSize._();
}

///GLOBAL BUTTON STYLES
class GlobalButtonStyle {
  ButtonStyle primary = ElevatedButton.styleFrom(
    backgroundColor: globalColorScheme.primaryContainer,
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    foregroundColor: globalColorScheme.onPrimaryContainer,
    textStyle: globalTextTheme.labelMedium,
  );

  GlobalButtonStyle._();
}

///THEME
ThemeData globalThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: globalColorScheme,
  textTheme: globalTextTheme,
  elevatedButtonTheme: const ElevatedButtonThemeData(),
);

///COLOR SCHEME
ColorScheme globalColorScheme = ColorScheme.fromSeed(
  seedColor: HexColor('#FFB4A8'),
  brightness: Brightness.light,
  //background: Colors.black,
);

///TEXT THEME
TextTheme globalTextTheme = TextTheme(
  displayLarge: GoogleFonts.chakraPetch(
    fontSize: 96,
    fontWeight: FontWeight.w900,
    color: globalColorScheme.primary,
    letterSpacing: -1.5,
    height: 0.95,
  ),
  titleLarge: GoogleFonts.chakraPetch(
    fontSize: 48,
    fontWeight: FontWeight.w900,
    color: globalColorScheme.primary,
    letterSpacing: -1.5,
    height: 0.95,
  ),
  headlineMedium: GoogleFonts.chakraPetch(
    fontSize: 20,
    fontWeight: FontWeight.w900,
    color: globalColorScheme.primary,
    letterSpacing: 0,
    height: 0.95,
  ),
  bodyMedium: GoogleFonts.chakraPetch(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: globalColorScheme.primary,
    letterSpacing: 0,
    height: 0.95,
  ),
  labelLarge: GoogleFonts.chakraPetch(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: globalColorScheme.primary,
    letterSpacing: 0,
    height: 0.95,
  ),
  labelMedium: GoogleFonts.chakraPetch(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: globalColorScheme.primary,
    letterSpacing: 0,
    height: 0.95,
  ),
);

///Global Colors
@immutable
class GlobalColor {
  ///Primary palette
  static Color primary50 = HexColor('#b9cbfe');
  static Color primary100 = HexColor('#b9cbfe');
  static Color primary200 = HexColor('#b9cbfe');
  static Color primary300 = HexColor('#b9cbfe');
  static Color primary400 = HexColor('#b9cbfe');
  static Color primary500 = HexColor('#b9cbfe');
  static Color primary600 = HexColor('#b9cbfe');
  static Color primary700 = HexColor('#b9cbfe');
  static Color primary800 = HexColor('#b9cbfe');
  static Color primary900 = HexColor('#b9cbfe');

  ///Shades
  static Color neutral = HexColor('#b9cbfe');
  static Color onNeutral = HexColor('#b9cbfe');

  ///Neutral
  static Color neutral00 = HexColor('#b9cbfe');
  static Color neutral50 = HexColor('#b9cbfe');
  static Color neutral100 = HexColor('#b9cbfe');
  static Color neutral200 = HexColor('#b9cbfe');
  static Color neutral300 = HexColor('#b9cbfe');
  static Color neutral400 = HexColor('#b9cbfe');
  static Color neutral500 = HexColor('#b9cbfe');
  static Color neutral600 = HexColor('#b9cbfe');
  static Color neutral700 = HexColor('#b9cbfe');
  static Color neutral800 = HexColor('#b9cbfe');
  static Color neutral900 = HexColor('#b9cbfe');

  ///Misc
  static Color error = HexColor('#b9cbfe');

  const GlobalColor._();
}
