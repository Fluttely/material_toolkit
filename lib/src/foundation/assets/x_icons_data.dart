// part of '../x_assets_data.dart';

// class XIconsData extends Equatable {
//   final String? fontFamily;
//   final String? fontPackage;
//   final XIconCharactersData characters;
//   final XIconSizesData sizes;

//   XIconsData({
//     this.fontFamily,
//     this.fontPackage,
//     final XIconCharactersData? characters,
//     final XIconSizesData? sizes,
//   })  : characters = characters ?? XIconCharactersData(),
//         sizes = sizes ?? const XIconSizesData();

//   @override
//   List<Object?> get props => [
//         fontFamily.named('fontFamily'),
//         fontPackage.named('fontPackage'),
//         characters.named('characters'),
//         sizes.named('sizes'),
//       ];
// }

// class XIconCharacterKey {
//   final String name;

//   const XIconCharacterKey(this.name);

//   static const none = XIconCharacterKey('none');

//   @override
//   String toString() => '''
//     XIconCharacterKey(
//       name: $name,
//     )
//   ''';
// }

// class XIconCharactersData extends Equatable {
//   final Map<XIconCharacterKey, String> _characters;

//   XIconCharactersData({
//     Map<XIconCharacterKey, String>? characters,
//   }) : _characters = Map.from(characters ?? {});

//   String char(XIconCharacterKey key) => _characters[key]!;

//   @override
//   List<Object?> get props => [
//         _characters.named('_characters'),
//       ];

//   @override
//   String toString() => '''
//     XIconCharactersData(
//       _characters: $_characters,
//     )
//   ''';
// }
