part of '../x_design_tokens.dart';

class XElevationsData extends Equatable {
  // final double? _level1;
  // final double? _level2;
  // final double? _level3;
  // final double? _level4;
  // final double? _level5;

  final double _level1;
  final double _level2;
  final double _level3;
  final double _level4;
  final double _level5;

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

  factory XElevationsData.fromMap(Map<String, dynamic> map) {
    double? _d(String key) => (map[key] as num?)?.toDouble();

    return XElevationsData(
      level1: _d('level1'),
      level2: _d('level2'),
      level3: _d('level3'),
      level4: _d('level4'),
      level5: _d('level5'),
    );
  }


  double get none => XStandardSizes.zero;
  double get level1 => _level1;
  double get level2 => _level2;
  double get level3 => _level3;
  double get level4 => _level4;
  double get level5 => _level5;

  double get x1 => XAuxiliarySizes.x1;
  double get x3 => XAuxiliarySizes.x3;
  double get x6 => XAuxiliarySizes.x6;
  double get x8 => XStandardSizes.x8;
  double get x12 => XStandardSizes.x12;

  @override
  List<Object?> get props => [
        none.named('none'),
        level1.named('level1'),
        level2.named('level2'),
        level3.named('level3'),
        level4.named('level4'),
        level5.named('level5'),
      ];

  @override
  String toString() => '''
    XElevationsData(
      none: $none,
      level1: $level1,
      level2: $level2,
      level3: $level3,
      level4: $level4,
      level5: $level5,
    )
  ''';
}
