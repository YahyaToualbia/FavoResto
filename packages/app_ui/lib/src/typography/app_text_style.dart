import 'package:app_ui/src/typography/app_font_weight.dart';
import 'package:flutter/material.dart';

/// Text Style of the app
abstract class AppTextStyle {
  static const _baseTextStyle = TextStyle(
    package: 'app_ui',
    fontFamily: 'Montserrat',
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
  );

  /// headline1 Text Style.
  static final headline1 = _baseTextStyle.copyWith(
    fontSize: 36,
    fontWeight: AppFontWeight.bold,
    height: 1.22,
  );

  /// headline2 Text Style.
  static final headline2 = _baseTextStyle.copyWith(
    fontSize: 32,
    fontWeight: AppFontWeight.bold,
    height: 1.25,
  );

  /// headline3 Text Style.
  static final headline3 = _baseTextStyle.copyWith(
    fontSize: 28,
    fontWeight: AppFontWeight.semiBold,
    height: 1.28,
  );

  /// headline4 Text Style.
  static final headline4 = _baseTextStyle.copyWith(
    fontSize: 24,
    fontWeight: AppFontWeight.semiBold,
    height: 1.33,
  );

  /// headline5 Text Style.
  static final headline5 = _baseTextStyle.copyWith(
    fontSize: 22,
    fontWeight: AppFontWeight.regular,
    height: 1.27,
  );

  /// headline6 Text Style.
  static final headline6 = _baseTextStyle.copyWith(
    fontSize: 22,
    fontWeight: AppFontWeight.semiBold,
    height: 1.33,
  );

  /// bodyText1 Text Style.
  static final bodyText1 = _baseTextStyle.copyWith(
    fontSize: 16,
    height: 1.5,
    letterSpacing: 0.5,
  );

  /// bodyText2 Text Style.
  static final bodyText2 = _baseTextStyle.copyWith(
    fontSize: 14,
    height: 1.42,
    letterSpacing: 0.25,
  );

  /// caption Text Style.
  static final caption = _baseTextStyle.copyWith(
    fontSize: 12,
    height: 1.33,
    letterSpacing: 0.4,
  );

  /// subtitle1 Text Style.
  static final subtitle1 = _baseTextStyle.copyWith(
    fontSize: 16,
    letterSpacing: 0.1,
    height: 1.5,
  );

  /// subtitle2 Text Style.
  static final subtitle2 = _baseTextStyle.copyWith(
    fontSize: 14,
    letterSpacing: 0.1,
    height: 1.42,
  );

  /// labelSmall Text Style.
  static final labelSmall = _baseTextStyle.copyWith(
    fontSize: 11,
    letterSpacing: 0.5,
    height: 1.45,
  );

  /// button Text Style.
  static final TextStyle button = _baseTextStyle.copyWith(
    fontSize: 16,
    height: 1.42,
    letterSpacing: 0.1,
  );
}
