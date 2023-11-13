import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final $styles = AppStyle();

@immutable
class AppStyle {
  late final AppColors colors = AppColors();
  late final AppText text = AppText();
  late final AppDuration durations = AppDuration();
}

@immutable
class AppText {
  late final headline = GoogleFonts.anton(
    fontSize: 35,
    color: $styles.colors.black,
  );
  late final caption = GoogleFonts.nunito(
    fontSize: 18,
    color: $styles.colors.subtitle,
  );

  late final googleButton = GoogleFonts.nunito(
    fontSize: 20,
    color: $styles.colors.black,
  );
  late final bodyMedium = TextStyle(
    color: $styles.colors.black,
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  late final headlineMedium = TextStyle(
    color: $styles.colors.black,
    fontSize: 20,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    height: 0,
  );
  late final bodySmall = TextStyle(
    color: $styles.colors.black,
    fontSize: 10,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  late final titleSmall = TextStyle(
    color: $styles.colors.black,
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
  );
  late final numStyle = TextStyle(
    color: $styles.colors.white,
    fontSize: 65,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  late final labelSmall = TextStyle(
    color: $styles.colors.white,
    fontSize: 11,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  late final labelSmallBold = TextStyle(
    color: $styles.colors.black,
    fontSize: 11,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
  );
  late final bodyLarge = TextStyle(
    color: $styles.colors.black,
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  late final bodyLargeBold = TextStyle(
    color: $styles.colors.black,
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
  );
  late final titleMedium = TextStyle(
    color: $styles.colors.black,
    fontSize: 20,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  late final titleMediumBold = TextStyle(
    color: $styles.colors.black,
    fontSize: 20,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
  );

  late final labelLarge = TextStyle(
    color: $styles.colors.white,
    fontSize: 15,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    height: 0,
  );
  late final houseText = TextStyle(
    color: $styles.colors.black,
    fontSize: 13,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
  );
}

@immutable
class AppColors {
  late final black = const Color(0xFF040003);
  late final background = const Color(0xFFfffdff);
  late final white = const Color(0xFFffffff);
  late final border = const Color(0xFFa3a4af);
  late final subtitle = const Color(0xFFa7a8bc);
  late final input = const Color(0xFF898c9a);
  late final button = const Color(0xFF040317);
  late final tabBackground = const Color(0xFFf5f3fe);

}

@immutable
class AppDuration {
  final fast = const Duration(milliseconds: 300);
}
