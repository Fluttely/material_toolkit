import 'dart:async';

import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

abstract final class XSoundsHelper {
  final _pool = Soundpool.fromOptions(
      options: const SoundpoolOptions(streamType: StreamType.music));

  final _map = <String, int>{};

  int getLoader(String path) {
    return _map[path]!;
  }

  void playSound(int sound) {
    _pool.play(sound);
  }

  Future<void> precacheCache({
    required List<String> soundsPathList,
  }) async {
    for (final assetPath in soundsPathList) {
      _map[assetPath] = await rootBundle
          .load(assetPath)
          .then((soundData) => _pool.load(soundData));
    }
  }
}
