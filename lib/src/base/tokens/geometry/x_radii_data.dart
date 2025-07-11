part of '../x_design_tokens.dart';

enum XRadii {
  none,
  extraSmall,
  small,
  semiSmall,
  medium,
  semiLarge,
  large,
  extraLarge,
  superLarge,
}

extension XRadiiExtension on XRadii {
  double toData(XRadiiData radiiData) {
    return switch (this) {
      XRadii.none => radiiData.none,
      XRadii.extraSmall => radiiData.extraSmall,
      XRadii.small => radiiData.small,
      XRadii.semiSmall => radiiData.semiSmall,
      XRadii.medium => radiiData.medium,
      XRadii.semiLarge => radiiData.semiLarge,
      XRadii.large => radiiData.large,
      XRadii.extraLarge => radiiData.extraLarge,
      XRadii.superLarge => radiiData.superLarge,
    };
  }
}

class XRadiiData extends Equatable {
  // final double? _extraSmall;
  // final double? _small;
  // final double? _semiSmall;
  // final double? _medium;
  // final double? _semiLarge;
  // final double? _large;
  // final double? _extraLarge;
  // final double? _superLarge;

  final double _extraSmall;
  final double _small;
  final double _semiSmall;
  final double _medium;
  final double _semiLarge;
  final double _large;
  final double _extraLarge;
  final double _superLarge;

  // const XRadiiData({
  //   final double? extraSmall,
  //   final double? small,
  //   final double? semiSmall,
  //   final double? medium,
  //   final double? semiLarge,
  //   final double? large,
  //   final double? extraLarge,
  //   final double? superLarge,
  // })  : _extraSmall = extraSmall,
  //       _small = small,
  //       _semiSmall = semiSmall,
  //       _medium = medium,
  //       _semiLarge = semiLarge,
  //       _large = large,
  //       _extraLarge = extraLarge,
  //       _superLarge = superLarge;

  const XRadiiData({
    final double? extraSmall,
    final double? small,
    final double? semiSmall,
    final double? medium,
    final double? semiLarge,
    final double? large,
    final double? extraLarge,
    final double? superLarge,
  })  : _extraSmall = extraSmall ?? XStandardSizes.x4,
        _small = small ?? XStandardSizes.x8,
        _semiSmall = semiSmall ?? XStandardSizes.x12,
        _medium = medium ?? XStandardSizes.x16,
        _semiLarge = semiLarge ?? XStandardSizes.x20,
        _large = large ?? XStandardSizes.x24,
        _extraLarge = extraLarge ?? XStandardSizes.x32,
        _superLarge = superLarge ?? XStandardSizes.x48;

  factory XRadiiData.fromMap(Map<String, dynamic> map) {
    double? _d(String key) => (map[key] as num?)?.toDouble();

    return XRadiiData(
      extraSmall: _d('extraSmall'),
      small: _d('small'),
      semiSmall: _d('semiSmall'),
      medium: _d('medium'),
      semiLarge: _d('semiLarge'),
      large: _d('large'),
      extraLarge: _d('extraLarge'),
      superLarge: _d('superLarge'),
    );
  }

  // XRadiiData.x({
  //   final XAttribute<double?>? extraSmall,
  //   final XAttribute<double?>? small,
  //   final XAttribute<double?>? semiSmall,
  //   final XAttribute<double?>? medium,
  //   final XAttribute<double?>? semiLarge,
  //   final XAttribute<double?>? large,
  //   final XAttribute<double?>? extraLarge,
  //   final XAttribute<double?>? superLarge,

  double get none => XStandardSizes.zero;
  double get extraSmall => _extraSmall;
  double get small => _small;
  double get semiSmall => _semiSmall;
  double get medium => _medium;
  double get semiLarge => _semiLarge;
  double get large => _large;
  double get extraLarge => _extraLarge;
  double get superLarge => _superLarge;

  XRadiiData copyWith({
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
    double? superLarge,
  }) {
    return XRadiiData(
      extraSmall: extraSmall ?? _extraSmall,
      small: small ?? _small,
      semiSmall: semiSmall ?? _semiSmall,
      medium: medium ?? _medium,
      semiLarge: semiLarge ?? _semiLarge,
      large: large ?? _large,
      extraLarge: extraLarge ?? _extraLarge,
      superLarge: superLarge ?? _superLarge,
    );
  }

  @override
  List<Object?> get props => [
        none.named('none'),
        extraSmall.named('extraSmall'),
        small.named('small'),
        semiSmall.named('semiSmall'),
        medium.named('medium'),
        semiLarge.named('semiLarge'),
        large.named('large'),
        extraLarge.named('extraLarge'),
        superLarge.named('superLarge'),
      ];

  @override
  String toString() => '''
    XRadiiData(
      none: $none,
      extraSmall: $extraSmall,
      small: $small,
      semiSmall: $semiSmall,
      medium: $medium,
      semiLarge: $semiLarge,
      large: $large,
      extraLarge: $extraLarge,
      superLarge: $superLarge,
    )
  ''';
}
