/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsDataGen {
  const $AssetsDataGen();

  /// File path: assets/data/first_screen.json
  String get firstScreen => 'assets/data/first_screen.json';

  /// File path: assets/data/third_screen.json
  String get thirdScreen => 'assets/data/third_screen.json';

  /// List of all assets
  List<String> get values => [firstScreen, thirdScreen];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/fourhundard.png
  AssetGenImage get fourhundard =>
      const AssetGenImage('assets/images/fourhundard.png');

  /// File path: assets/images/password.png
  AssetGenImage get password =>
      const AssetGenImage('assets/images/password.png');

  /// File path: assets/images/person.png
  AssetGenImage get person => const AssetGenImage('assets/images/person.png');

  /// File path: assets/images/threehundard.png
  AssetGenImage get threehundard =>
      const AssetGenImage('assets/images/threehundard.png');

  $AssetsImagesXxlGen get xxl => const $AssetsImagesXxlGen();
  $AssetsImagesXxxlGen get xxxl => const $AssetsImagesXxxlGen();

  /// List of all assets
  List<AssetGenImage> get values =>
      [fourhundard, password, person, threehundard];
}

class $AssetsImagesXxlGen {
  const $AssetsImagesXxlGen();

  /// File path: assets/images/xxl/fourhundard.png
  AssetGenImage get fourhundard =>
      const AssetGenImage('assets/images/xxl/fourhundard.png');

  /// File path: assets/images/xxl/threehundard.png
  AssetGenImage get threehundard =>
      const AssetGenImage('assets/images/xxl/threehundard.png');

  /// List of all assets
  List<AssetGenImage> get values => [fourhundard, threehundard];
}

class $AssetsImagesXxxlGen {
  const $AssetsImagesXxxlGen();

  /// File path: assets/images/xxxl/fourhundard.png
  AssetGenImage get fourhundard =>
      const AssetGenImage('assets/images/xxxl/fourhundard.png');

  /// File path: assets/images/xxxl/threehundard.png
  AssetGenImage get threehundard =>
      const AssetGenImage('assets/images/xxxl/threehundard.png');

  /// List of all assets
  List<AssetGenImage> get values => [fourhundard, threehundard];
}

class Assets {
  Assets._();

  static const $AssetsDataGen data = $AssetsDataGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
