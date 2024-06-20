// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:remo_design_system/remo_design_system.dart';

// class ApodTypographyData extends Equatable {
//   final TextStyle title1;
//   final TextStyle title2;
//   final TextStyle title3;
//   final TextStyle paragraph1;
//   final TextStyle paragraph2;

//   const ApodTypographyData({
//     required this.paragraph1,
//     required this.paragraph2,
//     required this.title1,
//     required this.title2,
//     required this.title3,
//   });

//   factory ApodTypographyData.regular() => const ApodTypographyData(
//         paragraph1: TextStyle(
//           fontFamily: 'Poppins',
//           package: 'remo_design_system',
//           fontWeight: FontWeight.w400,
//           fontSize: 12,
//           decoration: TextDecoration.none,
//         ),
//         paragraph2: TextStyle(
//           fontFamily: 'Poppins',
//           package: 'remo_design_system',
//           fontWeight: FontWeight.w400,
//           fontSize: 10,
//           decoration: TextDecoration.none,
//         ),
//         title1: TextStyle(
//           fontFamily: 'Poppins',
//           package: 'remo_design_system',
//           fontSize: 28,
//           fontWeight: FontWeight.bold,
//           decoration: TextDecoration.none,
//         ),
//         title2: TextStyle(
//           fontFamily: 'Poppins',
//           package: 'remo_design_system',
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//           decoration: TextDecoration.none,
//         ),
//         title3: TextStyle(
//           fontFamily: 'Poppins',
//           package: 'remo_design_system',
//           fontSize: 14,
//           fontWeight: FontWeight.bold,
//           decoration: TextDecoration.none,
//         ),
//       );

//   factory ApodTypographyData.small() => const ApodTypographyData(
//         paragraph1: TextStyle(
//           fontFamily: 'Poppins',
//           package: 'remo_design_system',
//           fontWeight: FontWeight.w400,
//           fontSize: 10,
//           decoration: TextDecoration.none,
//         ),
//         paragraph2: TextStyle(
//           fontFamily: 'Poppins',
//           package: 'remo_design_system',
//           fontWeight: FontWeight.w400,
//           fontSize: 9,
//           decoration: TextDecoration.none,
//         ),
//         title1: TextStyle(
//           fontFamily: 'Poppins',
//           package: 'remo_design_system',
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//           decoration: TextDecoration.none,
//         ),
//         title2: TextStyle(
//           fontFamily: 'Poppins',
//           package: 'remo_design_system',
//           fontSize: 14,
//           fontWeight: FontWeight.bold,
//           decoration: TextDecoration.none,
//         ),
//         title3: TextStyle(
//           fontFamily: 'Poppins',
//           package: 'remo_design_system',
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//           decoration: TextDecoration.none,
//         ),
//       );

//   @override
//   List<Object?> get props => [
//         title1.named('title1'),
//         title2.named('title2'),
//         title3.named('title3'),
//         paragraph1.named('paragraph1'),
//         paragraph2.named('paragraph2'),
//       ];
// }
