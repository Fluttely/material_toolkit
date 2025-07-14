part of '../../design_tokens.dart';

/// Defines the border radius values for the application.
enum BorderRadiusToken {
  /// No border radius.
  none,

  /// A small border radius.
  small,

  /// A medium border radius.
  medium,

  /// A large border radius.
  large,

  /// A full border radius, resulting in a circle.
  full,
}

/// A data class holding the customizable [BorderRadiusGeometry] values.
class BorderRadiusTokensData extends Equatable {
  /// Creates a new instance of [BorderRadiusTokensData].
  const BorderRadiusTokensData({
    this.none = BorderRadius.zero,
    this.small = const BorderRadius.all(Radius.circular(4)),
    this.medium = const BorderRadius.all(Radius.circular(8)),
    this.large = const BorderRadius.all(Radius.circular(16)),
    this.full = const BorderRadius.all(Radius.circular(9999)),
  });

  /// No border radius.
  final BorderRadiusGeometry none;

  /// A small border radius.
  final BorderRadiusGeometry small;

  /// A medium border radius.
  final BorderRadiusGeometry medium;

  /// A large border radius.
  final BorderRadiusGeometry large;

  /// A full border radius, resulting in a circle.
  final BorderRadiusGeometry full;

  /// Creates a copy of this object with the given fields replaced with the
  /// new values.
  BorderRadiusTokensData copyWith({
    BorderRadiusGeometry? none,
    BorderRadiusGeometry? small,
    BorderRadiusGeometry? medium,
    BorderRadiusGeometry? large,
    BorderRadiusGeometry? full,
  }) {
    return BorderRadiusTokensData(
      none: none ?? this.none,
      small: small ?? this.small,
      medium: medium ?? this.medium,
      large: large ?? this.large,
      full: full ?? this.full,
    );
  }

  @override
  List<Object?> get props => [none, small, medium, large, full];
}
