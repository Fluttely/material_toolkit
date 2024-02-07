import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract final class XSVGsHelper {
  final _map = <String, BytesLoader>{};

  BytesLoader getLoader(String path) {
    return _map[path]!;
  }

  Future<void> precacheCache(
    BuildContext context, {
    required List<String> svgsPathList,
  }) async {
    for (final assetPath in svgsPathList) {
      final loader = SvgAssetLoader(assetPath);
      await svg.cache
          .putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
      _map[assetPath] = loader;
    }
  }
}
