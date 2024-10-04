// import 'package:material_toolkit/material_toolkit.dart';
// import 'package:flutter/material.dart';

// /// TOKENS
// extension AssetTokenUtilExtension on AssetTokenUtil {
//   AssetToken get sample => const AssetToken('sample');
// }

// extension BoxShadowTokenUtilExtension on BoxShadowTokenUtil {
//   BoxShadowToken get large => const BoxShadowToken('large');
// }

// extension BreakpointTokenUtilExtension on BreakpointTokenUtil {
//   BreakpointToken get mobile => const BreakpointToken('mobile');
// }

// extension ColorTokenUtilExtension on ColorTokenUtil {
//   ColorToken get primary => const ColorToken('primary');
//   ColorToken get card => const ColorToken('card');
// }

// extension DurationTokenUtilExtension on DurationTokenUtil {
//   DurationToken get quick => const DurationToken('quick');
// }

// extension ElevationTokenUtilExtension on ElevationTokenUtil {
//   ElevationToken get level2 => const ElevationToken('level2');
// }

// extension FontTokenUtilExtension on FontTokenUtil {
//   FontToken get astronaut => const FontToken('astronaut');
// }

// extension ImageTokenUtilExtension on ImageTokenUtil {
//   ImageToken get fruit => const ImageToken('fruit');
//   ImageToken get googleLogo => const ImageToken('googleLogo');
// }

// extension RadiusTokenUtilExtension on RadiusTokenUtil {
//   RadiusToken get medium => const RadiusToken('medium');
// }

// extension SpaceTokenUtilExtension on SpaceTokenUtil {
//   SpaceToken get extraLarge => const SpaceToken('extraLarge');
// }

// extension SvgTokenUtilExtension on SvgTokenUtil {
//   SvgToken get fireEmoji => const SvgToken('fireEmoji');
//   SvgToken get brazilFlag => const SvgToken('brazilFlag');
// }

// extension TextShadowTokenUtilExtension on TextShadowTokenUtil {
//   TextShadowToken get title => const TextShadowToken('title');
// }

// extension TextStyleTokenUtilExtension on TextStyleTokenUtil {
//   TextStyleToken get title => const TextStyleToken(' d');
// }

// /// THEME DATA
// final themeData = XThemeData(
//   assets: {
//     $token.asset.sample: 'assets/data/sample.json',
//   },
//   boxShadows: {
//     $token.boxShadow.large: BoxShadow(
//       color: const Color.fromARGB(255, 255, 242, 0).withOpacity(0.5),
//       spreadRadius: 4.0,
//       blurRadius: 3.0,
//       offset: const Offset(6.0, 6.0),
//     ),
//   },
//   breakpoints: {
//     $token.breakpoint.mobile: const Breakpoint(maxWidth: 599),
//   },
//   colors: {
//     $token.color.primary: const Color.fromARGB(255, 0, 255, 229),
//     $token.color.card: const Color.fromARGB(255, 255, 115, 22),
//   },
//   durations: {
//     $token.duration.quick: const Duration(milliseconds: 500),
//   },
//   elevations: {
//     $token.elevation.level2: 4.0,
//   },
//   fonts: {
//     $token.font.astronaut: 'Astronaut_PersonalUse',
//   },
//   images: {
//     $token.image.fruit: const Image(image: AssetImage('assets/images/orange.jpg')),
//     $token.image.googleLogo:
//         const Image(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/4/4a/Logo_2013_Google.png')),
//   },
//   radii: {
//     $token.radius.medium: const Radius.circular(12),
//   },
//   spaces: {
//     $token.space.extraLarge: 24,
//   },
//   svgs: {
//     $token.svg.fireEmoji: SvgPicture.asset('assets/svgs/fire.svg'),
//     $token.svg.brazilFlag: SvgPicture.network(
//       'https://upload.wikimedia.org/wikipedia/commons/0/05/Flag_of_Brazil.svg',
//       fit: BoxFit.contain,
//       height: 128,
//     ),
//   },
//   textShadows: {
//     $token.textShadow.title: Shadow(
//       color: const Color.fromARGB(255, 255, 0, 0).withOpacity(0.5),
//       blurRadius: 1.0,
//       offset: const Offset(-3.0, 3.0),
//     ),
//   },
//   textStyles: {
//     $token.textStyle.title: const TextStyle(
//       fontSize: 16.0,
//       fontWeight: FontWeight.bold,
//       color: Color.fromARGB(255, 0, 68, 255),
//     ),
//   },
// );
