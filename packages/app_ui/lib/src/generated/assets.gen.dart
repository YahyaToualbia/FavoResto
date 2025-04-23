/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/find_location.svg
  SvgGenImage get findLocation =>
      const SvgGenImage('assets/icons/find_location.svg');

  /// List of all assets
  List<SvgGenImage> get values => [findLocation];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Onboarding_page_image.jpg
  AssetGenImage get onboardingPageImage =>
      const AssetGenImage('assets/images/Onboarding_page_image.jpg');

  /// File path: assets/images/app_logo.svg
  SvgGenImage get appLogo => const SvgGenImage('assets/images/app_logo.svg');

  /// File path: assets/images/circular_avatar.jpg
  AssetGenImage get circularAvatar =>
      const AssetGenImage('assets/images/circular_avatar.jpg');

  /// File path: assets/images/most_popular_1.jpg
  AssetGenImage get mostPopular1 =>
      const AssetGenImage('assets/images/most_popular_1.jpg');

  /// File path: assets/images/most_popular_2.jpg
  AssetGenImage get mostPopular2 =>
      const AssetGenImage('assets/images/most_popular_2.jpg');

  /// File path: assets/images/most_popular_3.jpg
  AssetGenImage get mostPopular3 =>
      const AssetGenImage('assets/images/most_popular_3.jpg');

  /// File path: assets/images/profile_coupon.jpg
  AssetGenImage get profileCoupon =>
      const AssetGenImage('assets/images/profile_coupon.jpg');

  /// File path: assets/images/trending_1.jpg
  AssetGenImage get trending1 =>
      const AssetGenImage('assets/images/trending_1.jpg');

  /// File path: assets/images/trending_2.jpg
  AssetGenImage get trending2 =>
      const AssetGenImage('assets/images/trending_2.jpg');

  /// File path: assets/images/trending_3.jpg
  AssetGenImage get trending3 =>
      const AssetGenImage('assets/images/trending_3.jpg');

  /// File path: assets/images/trending_4.jpg
  AssetGenImage get trending4 =>
      const AssetGenImage('assets/images/trending_4.jpg');

  /// List of all assets
  List<dynamic> get values => [
    onboardingPageImage,
    appLogo,
    circularAvatar,
    mostPopular1,
    mostPopular2,
    mostPopular3,
    profileCoupon,
    trending1,
    trending2,
    trending3,
    trending4,
  ];
}

class Assets {
  const Assets._();

  static const String package = 'app_ui';

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  static const String package = 'app_ui';

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
  }) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => 'packages/app_ui/$_assetName';
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  static const String package = 'app_ui';

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/app_ui/$_assetName';
}
