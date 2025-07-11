// part of '../x_assets_data.dart';

// class XIconsTokens extends Equatable {
//   final String? fontFamily;
//   final String? fontPackage;
//   final XIconCharactersTokens characters;
//   final XIconSizesTokens sizes;

//   XIconsTokens({
//     this.fontFamily,
//     this.fontPackage,
//     final XIconCharactersTokens? characters,
//     final XIconSizesTokens? sizes,
//   })  : characters = characters ?? XIconCharactersTokens(),
//         sizes = sizes ?? const XIconSizesTokens();

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

// class XIconCharactersTokens extends Equatable {
//   final Map<XIconCharacterKey, String> _characters;

//   XIconCharactersTokens({
//     Map<XIconCharacterKey, String>? characters,
//   }) : _characters = Map.from(characters ?? {});

//   String char(XIconCharacterKey key) => _characters[key]!;

//   @override
//   List<Object?> get props => [
//         _characters.named('_characters'),
//       ];

//   @override
//   String toString() => '''
//     XIconCharactersTokens(
//       _characters: $_characters,
//     )
//   ''';
// }
