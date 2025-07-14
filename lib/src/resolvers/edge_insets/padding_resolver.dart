part of '../resolvers.dart';

/// Convenience builder for [Padding] widgets based on spacing tokens.

/// Generates [Padding] widgets using [EdgeInsetsResolver].
class PaddingResolver extends Equatable {
  const PaddingResolver(this._edgeInsets);
  final EdgeInsetsResolver _edgeInsets;

  Padding none({
    Widget? child,
  }) => Padding(
    padding: _edgeInsets.none,
    child: child,
  );

  Padding all(
    final SpacingToken value, {
    final Widget? child,
  }) => Padding(
    padding: _edgeInsets.all(value),
    child: child,
  );

  Padding symmetric({
    final SpacingToken? vertical,
    final SpacingToken? horizontal,
    final Widget? child,
  }) => Padding(
    padding: _edgeInsets.symmetric(
      vertical: vertical,
      horizontal: horizontal,
    ),
    child: child,
  );

  Padding only({
    final SpacingToken? left,
    final SpacingToken? top,
    final SpacingToken? right,
    final SpacingToken? bottom,
    final Widget? child,
  }) => Padding(
    padding: _edgeInsets.only(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
    ),
    child: child,
  );

  @override
  List<Object?> get props => [
    _edgeInsets.tagged('_edgeInsets'),
  ];

  @override
  String toString() =>
      '''
    PaddingResolver(
      _edgeInsets: $_edgeInsets,
    )
  ''';
}
