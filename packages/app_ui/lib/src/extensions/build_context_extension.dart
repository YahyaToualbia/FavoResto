import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// extension provides helpful methods and values, that can
/// be accessed via context `eg, context.screenWidth`.
extension BuildContextX on BuildContext {
  /// Returns [ThemeData] from [Theme.of].
  ThemeData get theme => Theme.of(this);

  /// Defines current theme [Brightness].
  Brightness get brightness => theme.brightness;

  /// Wether current theme [Brightness] is light.
  bool get isLight => brightness == Brightness.light;

  /// Wether current theme [Brightness] is dark.
  bool get isDark => brightness == Brightness.dark;

  /// Defines an adaptive [Color], depending on current theme brightness.
  Color get adaptiveColor => isDark ? AppColors.primaryWhite : AppColors.black;

  /// Define a reverse adaptive [Color], dedpending on current theme brightness.
  Color get reverseAdaptiveColor =>
      isDark ? AppColors.black : AppColors.primaryWhite;

  /// Define a custom adaptive [Color].
  ///
  /// if light or dark null, default colors are used.
  Color customAdaptiveColor({Color? light, Color? dark}) =>
      isDark ? (light ?? AppColors.primaryWhite) : (dark ?? AppColors.black);

  /// Define a reverse custom adaptive [Color].
  ///
  /// if light or dark null, default colors are used.
  Color customReverseAdaptiveColor({Color? light, Color? dark}) =>
      isDark ? (dark ?? AppColors.black) : (light ?? AppColors.primaryWhite);

  /// Define [MediaQueryData] based on provided context.
  Size get size => MediaQuery.of(this).size;

  /// Defines value of device current screen width bases on [size].
  double get screenWidth => size.width;

  /// Defines value of device current screen height bases on [size].
  double get screenHeight => size.height;

  /// Defines view padding from [MediaQuery] with current [BuildContext].
  EdgeInsets get viewPadding => MediaQuery.viewPaddingOf(this);

  /// Defines view insets from [MediaQuery] with current [BuildContext].
  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);

  /// Wether the current device in an `Android`.
  bool get isAndroid => theme.platform == TargetPlatform.android;

  /// Wether the current device is an `iOS`.
  bool get isIOS => theme.platform == TargetPlatform.iOS;

}
