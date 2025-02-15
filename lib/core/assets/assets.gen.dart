/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Icon_AlternateTrash.png
  AssetGenImage get iconAlternateTrash =>
      const AssetGenImage('assets/icons/Icon_AlternateTrash.png');

  /// File path: assets/icons/Icon_wa.png
  AssetGenImage get iconWaPng =>
      const AssetGenImage('assets/icons/Icon_wa.png');

  /// File path: assets/icons/icon_wa.png
  AssetGenImage get iconWaPng_ =>
      const AssetGenImage('assets/icons/icon_wa.png');

  /// File path: assets/icons/icon_addressBook.png
  AssetGenImage get iconAddressBook =>
      const AssetGenImage('assets/icons/icon_addressBook.png');

  /// File path: assets/icons/icon_addressCard.png
  AssetGenImage get iconAddressCard =>
      const AssetGenImage('assets/icons/icon_addressCard.png');

  /// File path: assets/icons/icon_book.png
  AssetGenImage get iconBook =>
      const AssetGenImage('assets/icons/icon_book.png');

  /// File path: assets/icons/icon_bookClosed.png
  AssetGenImage get iconBookClosed =>
      const AssetGenImage('assets/icons/icon_bookClosed.png');

  /// File path: assets/icons/icon_check.png
  AssetGenImage get iconCheck =>
      const AssetGenImage('assets/icons/icon_check.png');

  /// File path: assets/icons/icon_cog.png
  AssetGenImage get iconCog => const AssetGenImage('assets/icons/icon_cog.png');

  /// File path: assets/icons/icon_home.png
  AssetGenImage get iconHome =>
      const AssetGenImage('assets/icons/icon_home.png');

  /// File path: assets/icons/icon_qrcode.png
  AssetGenImage get iconQrcode =>
      const AssetGenImage('assets/icons/icon_qrcode.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        iconAlternateTrash,
        iconWaPng,
        iconWaPng_,
        iconAddressBook,
        iconAddressCard,
        iconBook,
        iconBookClosed,
        iconCheck,
        iconCog,
        iconHome,
        iconQrcode
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Header.png
  AssetGenImage get header => const AssetGenImage('assets/images/Header.png');

  /// File path: assets/images/gambar1.png
  AssetGenImage get gambar1 => const AssetGenImage('assets/images/gambar1.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/logo2.png
  AssetGenImage get logo2 => const AssetGenImage('assets/images/logo2.png');

  /// List of all assets
  List<AssetGenImage> get values => [header, gambar1, logo, logo2];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

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
    String? package,
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
