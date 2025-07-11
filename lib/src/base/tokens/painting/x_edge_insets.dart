part of '../x_design_tokens.dart';

class XEdgeInsets extends Equatable {
  final XSpacesData _spaces;

  const XEdgeInsets(this._spaces);

  EdgeInsets get none => EdgeInsets.all(_spaces.none);

  EdgeInsets all(final XSpaces value) => EdgeInsets.all(value.toData(_spaces));

  EdgeInsets symmetric({
    final XSpaces? vertical,
    final XSpaces? horizontal,
  }) =>
      EdgeInsets.symmetric(
        horizontal: (horizontal ?? XSpaces.none).toData(_spaces),
        vertical: (vertical ?? XSpaces.none).toData(_spaces),
      );

  EdgeInsets only({
    final XSpaces? left,
    final XSpaces? top,
    final XSpaces? right,
    final XSpaces? bottom,
  }) =>
      EdgeInsets.only(
        left: (left ?? XSpaces.none).toData(_spaces),
        top: (top ?? XSpaces.none).toData(_spaces),
        right: (right ?? XSpaces.none).toData(_spaces),
        bottom: (bottom ?? XSpaces.none).toData(_spaces),
      );


  @override
  List<Object?> get props => [
        _spaces.named('_spaces'),
      ];

  @override
  String toString() => '''
    XEdgeInsets(
      _spaces: $_spaces,
    )
  ''';
}
