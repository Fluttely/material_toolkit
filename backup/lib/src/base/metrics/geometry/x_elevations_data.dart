part of x_metrics_data;

// class NewXElevationsData extends XElevationsData {
//   const NewXElevationsData() : super();
//   // @override
//   // double get level5 => throw UnimplementedError();
//   double get level7 => 16;
// }

class XElevationsData extends Equatable {
  final double? _level1;
  final double? _level2;
  final double? _level3;
  final double? _level4;
  final double? _level5;

  // const XElevationsData({
  //   final double? level1,
  //   final double? level2,
  //   final double? level3,
  //   final double? level4,
  //   final double? level5,
  // })  : _level1 = level1,
  //       _level2 = level2,
  //       _level3 = level3,
  //       _level4 = level4,
  //       _level5 = level5;

  const XElevationsData({
    final double? level1,
    final double? level2,
    final double? level3,
    final double? level4,
    final double? level5,
  })  : _level1 = level1 ?? XAuxiliarySizes.x1,
        _level2 = level2 ?? XAuxiliarySizes.x3,
        _level3 = level3 ?? XAuxiliarySizes.x6,
        _level4 = level4 ?? XStandardSizes.x8,
        _level5 = level5 ?? XStandardSizes.x12;

  // XElevationsData.x({
  //   final XAttribute<double?>? level1,
  //   final XAttribute<double?>? level2,
  //   final XAttribute<double?>? level3,
  //   final XAttribute<double?>? level4,
  //   final XAttribute<double?>? level5,
  // })  : _level1 = level1 == null ? XAuxiliarySizes.x1 : level1.value,
  //       _level2 = level2 == null ? XAuxiliarySizes.x3 : level2.value,
  //       _level3 = level3 == null ? XAuxiliarySizes.x6 : level3.value,
  //       _level4 = level4 == null ? XStandardSizes.x8 : level4.value,
  //       _level5 = level5 == null ? XStandardSizes.x12 : level5.value;

  double get none => XStandardSizes.zero;
  double get level1 =>
      _level1 ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'level1', location: 'elevations')));
  double get level2 =>
      _level2 ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'level2', location: 'elevations')));
  double get level3 =>
      _level3 ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'level3', location: 'elevations')));
  double get level4 =>
      _level4 ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'level4', location: 'elevations')));
  double get level5 =>
      _level5 ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'level5', location: 'elevations')));

  @override
  List<Object?> get props => [
        level1.named('level1'),
        level2.named('level2'),
        level3.named('level3'),
        level4.named('level4'),
        level5.named('level5'),
      ];

  @override
  String toString() => '''
    XElevationsData(
      level1: $level1,
      level2: $level2,
      level3: $level3,
      level4: $level4,
      level5: $level5,
    )
  ''';
}
