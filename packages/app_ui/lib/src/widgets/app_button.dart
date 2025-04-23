import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// {@template app_button}
/// A custom Button widget
/// {@endtemplate}

class AppButton extends StatelessWidget {
  /// {@macro app_button}
  const AppButton({
    super.key,
    this.onPressed,
    this.text,
    this.width,
    this.height,
    this.padding,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.style,
    this.textStyle,
    this.maxLines,
    this.icon,
    this.iconSize,
    this.iconScale = 1.0,
    this.isIconButton = false,
    this.isArrowButton = false,
    this.isLoading = false,
    this.isDialogButton = false,
    this.isDefaultAction = false,
    this.isDestructiveAction = false,
    this.outlined = false,
    this.child,
  });

  /// {@macro app_button}
  const AppButton.auth({
    required String text,
    VoidCallback? onPressed,
    bool outlined = false,
    ButtonStyle? style,
    TextStyle? textStyle,
    Color? color,
    Key? key,
  }) : this(
          text: text,
          onPressed: onPressed,
          outlined: outlined,
          style: style,
          textStyle: textStyle,
          color: color,
          key: key,
        );

  /// {@macro app_button}
  const AppButton.outlined({
    required String text,
    VoidCallback? onPressed,
    TextStyle? textStyle,
    Key? key,
    ButtonStyle? style,
  }) : this(
          key: key,
          text: text,
          textStyle: textStyle,
          onPressed: onPressed,
          outlined: true,
          style: style,
        );

  /// {@macro app_button}
  const AppButton.inProgress({
    double scale = 0.6,
    Key? key,
    ButtonStyle? style,
  }) : this(
          iconScale: scale,
          isLoading: true,
          style: style,
          key: key,
          icon: const CircularProgressIndicator(),
        );

  /// {@macro app_button}
  const AppButton.iconButton({
    required Icon icon,
    VoidCallback? onPressed,
    bool isNextButton = true,
    double? size,
    EdgeInsets? padding,
    ButtonStyle? style,
    Color? color,
    Key? key,
  }) : this(
          key: key,
          onPressed: onPressed,
          isArrowButton: isNextButton,
          color: color,
          icon: icon,
          isIconButton: true,
          iconSize: size,
          style: style,
          padding: padding,
        );

  /// function to be called when button is pressed
  final void Function()? onPressed;

  /// Text to be displayed on the button
  final String? text;

  /// Width of the button
  final double? width;

  /// Height of the button
  final double? height;

  /// Color of the button
  final Color? color;

  /// The padding applied around the button.
  final EdgeInsets? padding;

  /// Font size of the text on the button
  final double? fontSize;

  /// Font weight of the text on the button
  final FontWeight? fontWeight;

  /// Style of the button
  final ButtonStyle? style;

  /// TextStyle of the text on the button
  final TextStyle? textStyle;

  /// max amount of lines that the text can take on the button
  final int? maxLines;

  /// The size of the icon
  final double? iconSize;

  /// Icon of the button.
  final Widget? icon;

  /// Scale of the icon, Default is 1.0
  final double iconScale;

  /// The Icon button.
  final bool isIconButton;

  /// Wether the button serves as a next button.
  final bool isArrowButton;

  /// Flag to indicate if the button is outlined
  final bool outlined;

  /// Wether to display button as a [CircularProgressIndicator]
  final bool isLoading;

  /// Flag to indicate wether the button is used in a [Dialog]
  final bool isDialogButton;

  /// Flag to indicate if the button is default action in a [Dialog]
  final bool isDefaultAction;

  /// Flag to indicate if the button is the destructive action in a [Dialog]
  final bool isDestructiveAction;

  /// Widget to be displayed inside the button
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final text = _Text(
      text: this.text ?? '',
      textStyle: textStyle,
      maxLines: maxLines,
    );
    final buttonStyle = style ??
        ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(color),
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(vertical: 16),
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        );
    final effectiveChild = child ?? text;
    final effectiveIcon = icon == null
        ? null
        : Transform.scale(
            scale: iconScale,
            child: icon,
          );
    final platform = context.theme.platform;
    final isIOS = platform == TargetPlatform.iOS;

    return Builder(
      builder: (_) {
        if (isDialogButton) {
          if (isIOS) {
            return CupertinoDialogAction(
              onPressed: onPressed,
              isDefaultAction: isDefaultAction,
              isDestructiveAction: isDestructiveAction,
              child: effectiveChild,
            );
          } else {
            return TextButton(
              onPressed: onPressed,
              child: effectiveChild,
            );
          }
        }
        if (effectiveIcon != null && !isIconButton) {
          return ElevatedButton.icon(
            onPressed: onPressed,
            icon: effectiveIcon,
            style: buttonStyle,
            label: effectiveChild,
          );
        }
        if (outlined) {
          return OutlinedButton(
            onPressed: onPressed,
            style: buttonStyle,
            child: effectiveChild,
          );
        }
        if (outlined && effectiveIcon != null) {
          return OutlinedButton.icon(
            onPressed: onPressed,
            style: buttonStyle,
            icon: effectiveIcon,
            label: effectiveChild,
          );
        }

        if (isIconButton) {
          if (isArrowButton) {
            const style = ButtonStyle(
              side: WidgetStatePropertyAll(BorderSide(width: 0.1)),
              elevation: WidgetStatePropertyAll(1),
              shadowColor: WidgetStatePropertyAll(AppColors.black),
              backgroundColor: WidgetStatePropertyAll(
                AppColors.primaryWhite,
              ),
            );

            return IconButton(
              onPressed: onPressed,
              icon: icon!,
              style: style,
              iconSize: iconSize,
              color: AppColors.lighGreen,
              padding: padding,
            );
          }

          return IconButton(
            onPressed: onPressed,
            icon: icon!,
            style: buttonStyle,
            iconSize: iconSize,
            color: color,
            padding: padding,
          );
        }

        return ElevatedButton(
          onPressed: onPressed,
          style: buttonStyle,
          child: effectiveChild,
        );
      },
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({required this.text, this.textStyle, this.maxLines});

  final String text;
  final TextStyle? textStyle;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      child: Text(
        text,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: textStyle,
      ),
    );
  }
}
