part of x_metrics_data;

class XIconsData {
  final String? fontFamily;
  final String? fontPackage;
  final XIconCharactersData characters;
  final XIconSizesData sizes;

  const XIconsData({
    this.fontFamily,
    this.fontPackage,
    final XIconCharactersData? characters,
    final XIconSizesData? sizes,
  })  : characters = characters ?? const XIconCharactersData(),
        sizes = sizes ?? const XIconSizesData();
}

class XIconCharactersData {
  const XIconCharactersData();
}

class XIconSizesData {
  final double x16;
  final double x24;
  final double x32;
  final double x64;
  final double x128;
  final double x256;

  const XIconSizesData()
      : x16 = TkStandardSizeConstants.x16,
        x24 = TkStandardSizeConstants.x24,
        x32 = TkStandardSizeConstants.x32,
        x64 = TkStandardSizeConstants.x64,
        x128 = TkStandardSizeConstants.x128,
        x256 = TkStandardSizeConstants.x256;
}
