part of '../x_design_tokens.dart';

class XPadding extends Equatable {
  final XEdgeInsets _edgeInsets;

  const XPadding(this._edgeInsets);

  Padding none({
    Widget? child,
  }) =>
      Padding(
        padding: _edgeInsets.none,
        child: child,
      );

  Padding all(
    final XSpaces value, {
    final Widget? child,
  }) =>
      Padding(
        padding: _edgeInsets.all(value),
        child: child,
      );

  Padding symmetric({
    final XSpaces? vertical,
    final XSpaces? horizontal,
    final Widget? child,
  }) =>
      Padding(
        padding: _edgeInsets.symmetric(
          vertical: vertical,
          horizontal: horizontal,
        ),
        child: child,
      );

  Padding only({
    final XSpaces? left,
    final XSpaces? top,
    final XSpaces? right,
    final XSpaces? bottom,
    final Widget? child,
  }) =>
      Padding(
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
        _edgeInsets.named('_edgeInsets'),
      ];

  @override
  String toString() => '''
    XPadding(
      _edgeInsets: $_edgeInsets,
    )
  ''';
}
