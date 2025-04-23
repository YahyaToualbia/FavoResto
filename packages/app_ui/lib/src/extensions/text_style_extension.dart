import 'package:app_ui/src/extensions/extensions.dart';
import 'package:flutter/material.dart';

/// extension that provide access to [TextTheme].
extension TextStyleExtension on BuildContext {
  /// Returns [TextTheme] from [theme].
  TextTheme get textTheme => theme.textTheme;

  /// Returns headline large text style.
  TextStyle? get headlineLarge => textTheme.headlineLarge;

  /// Return headline medium text style.
  TextStyle? get headlineMedium => textTheme.headlineMedium;

  /// Return headline small text style.
  TextStyle? get headlineSmall => textTheme.headlineSmall;

  /// Return title large text style.
  TextStyle? get titleLarge => textTheme.titleLarge;

  /// Return title medium text style.
  TextStyle? get titleMedium => textTheme.titleMedium;

  /// Return title small text style.
  TextStyle? get titleSmall => textTheme.titleSmall;

  /// Return body large text style.
  TextStyle? get bodyLarge => textTheme.bodyLarge;

  /// Return body medium text style.
  TextStyle? get bodyMedium => textTheme.bodyMedium;

  /// Return body small text style.
  TextStyle? get bodySmall => textTheme.bodySmall;

  /// Return label large text style.
  TextStyle? get labelLarge => textTheme.labelLarge;

  /// Return label medium text style.
  TextStyle? get labelMedium => textTheme.labelMedium;

  /// Return label small text style.
  TextStyle? get labelSmall => textTheme.labelSmall;
}
