import 'package:flutter/material.dart';
import 'package:unknown/extensions/color_extensions.dart';

///BOX DECORATION

@immutable
class GlobalBoxDecoration {
  static BoxDecoration primaryContainer = BoxDecoration(
    color: GlobalColor.primary200,
    borderRadius: BorderRadius.circular(GlobalRadiusSize.l),
  );

  static BoxDecoration card = BoxDecoration(
    color: GlobalColor.primary200,
    borderRadius: BorderRadius.circular(GlobalRadiusSize.l),
  );

  const GlobalBoxDecoration._();
}

///LOTTIE ANIMATION

@immutable
class LottieAnimation {
  static const spotifyLogo = 'spotify_logo';

  const LottieAnimation._();
}

///BOX SHADOWS

@immutable
class GlobalBoxShadow {
  static BoxShadow primary = BoxShadow(
    color: GlobalColor.shadow,
    blurRadius: 10,
  );

  const GlobalBoxShadow._();
}

///RADIUS
@immutable
class GlobalRadiusSize {
  static const double s = 5;
  static const double m = 10;
  static const double l = 20;
  static const double xl = 40;
  static const double circular = 1000;

  const GlobalRadiusSize._();
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
    backgroundColor: GlobalColor.primary200,
    padding: const EdgeInsets.symmetric(
        vertical: GlobalPaddingSize.s, horizontal: GlobalPaddingSize.l),
    foregroundColor: GlobalColor.neutral50,
    textStyle: GlobalText.label,
  );

  GlobalButtonStyle._();
}

///THEME
ThemeData globalThemeData = ThemeData(
  useMaterial3: true,
);

///Global Colors
@immutable
class GlobalColor {
  // Primary palette
  static Color primary50 = HexColor('#FFFAC4');
  static Color primary100 = HexColor('#FFFAC4');
  static Color primary200 = HexColor('#FFFAC4');
  static Color primary300 = HexColor('#FFFAC4');
  static Color primary400 = HexColor('#FFFAC4');
  static Color primary500 = HexColor('#FFFAC4');
  static Color primary600 = HexColor('#FFFAC4');
  static Color primary700 = HexColor('#FFFAC4');
  static Color primary800 = HexColor('#FFFAC4');
  static Color primary900 = HexColor('#FFFAC4');

  // Neutral
  static Color neutral = HexColor('#000000');
  static Color neutral50 = HexColor('#262626');
  static Color neutral100 = HexColor('#262626');
  static Color neutral200 = HexColor('#262626');
  static Color neutral300 = HexColor('#262626');
  static Color neutral400 = HexColor('#262626');

  // On Neutral
  static Color onNeutral = HexColor('#FFFFFF');
  static Color onNeutral100 = HexColor('##E2E2E2');
  static Color onNeutral200 = HexColor('##E2E2E2');
  static Color onNeutral300 = HexColor('##E2E2E2');
  static Color onNeutral400 = HexColor('##E2E2E2');

  //Misc
  static Color error = HexColor('#FFC4C4');
  static Color shadow = HexColor('#000000');

  const GlobalColor._();
}

/// Global Text Styles

@immutable
class GlobalText {
  // Display
  static TextStyle display = const TextStyle(
    fontFamily: 'CircularStd',
    fontSize: 32,
    wordSpacing: 0,
  );

  // Title

  // Headline

  // Body

  // Label

  static TextStyle label = const TextStyle(
    fontFamily: 'CircularStd',
    fontSize: 14,
    wordSpacing: 0,
  );

  const GlobalText._();
}
