import 'package:flutter/widgets.dart';

abstract final class XImagesHelper {
  Future<void> precacheCache(
    BuildContext context, {
    required List<String> imagesPathList,
  }) async {
    for (final assetPath in imagesPathList) {
      await precacheImage(AssetImage(assetPath), context);
    }
  }
}
