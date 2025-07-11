part of '../design_tokens.dart';

class Elevations extends Equatable {
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

  // const Elevations({
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

  const Elevations({
    final double? level1,
    final double? level2,
    final double? level3,
    final double? level4,
    final double? level5,
  })  : _level1 = level1 ?? AuxiliarySizes.x1,
        _level2 = level2 ?? AuxiliarySizes.x3,
        _level3 = level3 ?? AuxiliarySizes.x6,
        _level4 = level4 ?? StandardSizes.x8,
        _level5 = level5 ?? StandardSizes.x12;

  // Elevations.x({
  //   final XAttribute<double?>? level1,
  //   final XAttribute<double?>? level2,
  //   final XAttribute<double?>? level3,
  //   final XAttribute<double?>? level4,
  //   final XAttribute<double?>? level5,
  // })  : _level1 = level1 == null ? AuxiliarySizes.x1 : level1.value,
  //       _level2 = level2 == null ? AuxiliarySizes.x3 : level2.value,
  //       _level3 = level3 == null ? AuxiliarySizes.x6 : level3.value,
  //       _level4 = level4 == null ? StandardSizes.x8 : level4.value,
  //       _level5 = level5 == null ? StandardSizes.x12 : level5.value;

  // double get none => StandardSizes.zero;
  // double get level1 =>
  //     _level1 ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'level1', location: 'elevations')));
  // double get level2 =>
  //     _level2 ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'level2', location: 'elevations')));
  // double get level3 =>
  //     _level3 ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'level3', location: 'elevations')));
  // double get level4 =>
  //     _level4 ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'level4', location: 'elevations')));
  // double get level5 =>
  //     _level5 ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'level5', location: 'elevations')));

  double get none => StandardSizes.zero;
  double get level1 => _level1;
  double get level2 => _level2;
  double get level3 => _level3;
  double get level4 => _level4;
  double get level5 => _level5;

  double get x1 => AuxiliarySizes.x1;
  double get x3 => AuxiliarySizes.x3;
  double get x6 => AuxiliarySizes.x6;
  double get x8 => StandardSizes.x8;
  double get x12 => StandardSizes.x12;

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
    Elevations(
      none: $none,
      level1: $level1,
      level2: $level2,
      level3: $level3,
      level4: $level4,
      level5: $level5,
    )
  ''';
}
