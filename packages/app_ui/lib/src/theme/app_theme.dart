import 'package:app_ui/app_ui.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// {@template app_theme}
/// The Default App [ThemeData]
/// {@endtemplate}
class AppTheme {
  /// {@macro app_theme}
  const AppTheme();

  /// Defines brightness of the theme.
  Brightness get brightness => Brightness.light;

  /// Defines the background color of the theme.
  Color get backrgoundColor => AppColors.backgroundColor;

  /// Defines the primary Color of the theme.
  Color get primary => AppColors.primaryColor;

  /// Define the light theme
  ThemeData get theme => FlexThemeData.light(
        scheme: FlexScheme.custom,
        colors: FlexSchemeColor.from(
          brightness: brightness,
          primary: primary,
          swapOnMaterial3: true,
        ),
      ).copyWith(
        textTheme: textTheme,
        iconTheme: const IconThemeData(color: AppColors.black),
        chipTheme: const ChipThemeData(
          brightness: Brightness.light,
          selectedColor: Colors.transparent,
          showCheckmark: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.all(4),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: AppSpacing.md),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          focusColor: AppColors.lighGreen,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.primaryWhite,
          surfaceTintColor: AppColors.primaryWhite,
        ),
        searchBarTheme: const SearchBarThemeData(
          backgroundColor: WidgetStatePropertyAll(AppColors.primaryWhite),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
          elevation: WidgetStatePropertyAll(0.5),
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: AppSpacing.md),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          selectedItemColor: AppColors.lighGreen,
          backgroundColor: AppColors.primaryWhite,
        ),
        navigationBarTheme: const NavigationBarThemeData(
          indicatorColor: AppColors.secondaryWhite,
          backgroundColor: AppColors.primaryWhite,
          iconTheme: WidgetStatePropertyAll(
            IconThemeData(color: AppColors.lighGreen),
          ),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        ),
      );

  /// Text theme of the app theme.
  TextTheme get textTheme => uiTextTheme;

  /// The UI Text Theme bases on [AppTextStyle]
  static final uiTextTheme = TextTheme(
    headlineLarge: AppTextStyle.headline1,
    headlineMedium: AppTextStyle.headline2,
    headlineSmall: AppTextStyle.headline3,
    titleLarge: AppTextStyle.headline4,
    titleMedium: AppTextStyle.headline5,
    titleSmall: AppTextStyle.headline6,
    bodyLarge: AppTextStyle.bodyText1,
    bodyMedium: AppTextStyle.bodyText2,
    bodySmall: AppTextStyle.caption,
    labelLarge: AppTextStyle.button,
    labelSmall: AppTextStyle.labelSmall,
    labelMedium: AppTextStyle.subtitle2,
  ).apply(
    bodyColor: AppColors.black,
    displayColor: AppColors.black,
    decorationColor: AppColors.black,
  );

  /// Defines a portrait only orientation for any device.
  static void setPortraitOrientation() {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
  }
}
