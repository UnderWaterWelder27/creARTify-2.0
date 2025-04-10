/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/CenturyGothicPaneuropeanBold.ttf
  String get centuryGothicPaneuropeanBold =>
      'assets/fonts/CenturyGothicPaneuropeanBold.ttf';

  /// File path: assets/fonts/CenturyGothicPaneuropeanExtraBold.ttf
  String get centuryGothicPaneuropeanExtraBold =>
      'assets/fonts/CenturyGothicPaneuropeanExtraBold.ttf';

  /// File path: assets/fonts/CenturyGothicPaneuropeanLight.ttf
  String get centuryGothicPaneuropeanLight =>
      'assets/fonts/CenturyGothicPaneuropeanLight.ttf';

  /// File path: assets/fonts/CenturyGothicPaneuropeanRegular.ttf
  String get centuryGothicPaneuropeanRegular =>
      'assets/fonts/CenturyGothicPaneuropeanRegular.ttf';

  /// File path: assets/fonts/CenturyGothicPaneuropeanSemiBold.ttf
  String get centuryGothicPaneuropeanSemiBold =>
      'assets/fonts/CenturyGothicPaneuropeanSemiBold.ttf';

  /// List of all assets
  List<String> get values => [
        centuryGothicPaneuropeanBold,
        centuryGothicPaneuropeanExtraBold,
        centuryGothicPaneuropeanLight,
        centuryGothicPaneuropeanRegular,
        centuryGothicPaneuropeanSemiBold
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_left.svg
  SvgGenImage get arrowLeft => const SvgGenImage('assets/icons/arrow_left.svg');

  /// Directory path: assets/icons/bottom_bar
  $AssetsIconsBottomBarGen get bottomBar => const $AssetsIconsBottomBarGen();

  /// List of all assets
  List<SvgGenImage> get values => [arrowLeft];
}

class $AssetsIconsBottomBarGen {
  const $AssetsIconsBottomBarGen();

  /// File path: assets/icons/bottom_bar/favorite.svg
  SvgGenImage get favorite =>
      const SvgGenImage('assets/icons/bottom_bar/favorite.svg');

  /// File path: assets/icons/bottom_bar/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/bottom_bar/home.svg');

  /// File path: assets/icons/bottom_bar/profile.svg
  SvgGenImage get profile =>
      const SvgGenImage('assets/icons/bottom_bar/profile.svg');

  /// List of all assets
  List<SvgGenImage> get values => [favorite, home, profile];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
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
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
