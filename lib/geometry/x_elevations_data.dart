part of x_metrics_data;

class XElevationsData {
  final double none;
  final double level1;
  final double level2;
  final double level3;
  final double level4;
  final double level5;

  const XElevationsData({
    final double? none,
    final double? level1,
    final double? level2,
    final double? level3,
    final double? level4,
    final double? level5,
  })  : none = none ?? XStandardSizes.x0,
        level1 = level1 ?? XAuxiliarySizes.x1,
        level2 = level2 ?? XAuxiliarySizes.x3,
        level3 = level3 ?? XAuxiliarySizes.x6,
        level4 = level4 ?? XStandardSizes.x8,
        level5 = level5 ?? XStandardSizes.x12;
}
