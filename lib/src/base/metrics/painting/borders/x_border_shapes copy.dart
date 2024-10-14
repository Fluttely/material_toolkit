// part of '../x_metrics_data.dart';

// /// A utility class that provides various shape styles and borders, based on
// /// the [_borderRadii] provided by [XBorderRadii].
// ///
// /// This class includes several predefined [RoundedRectangleBorder], [BoxDecoration],
// /// and [ClipRRect] variations to support a wide range of visual designs.
// class XBorderShapes extends Equatable {
//   final XBorderRadii _borderRadii;

//   /// Creates a [XBorderShapes] that defines shape properties based on the
//   /// given [XBorderRadii].
//   const XBorderShapes(this._borderRadii);

//   /// Returns a [StadiumBorder] with a customizable side color.
//   StadiumBorder stadiumBorderWithSide({Color color = Colors.grey}) {
//     return StadiumBorder(
//       side: BorderSide(color: color),
//     );
//   }

//   /// Returns a [CircleBorder] with a customizable side color.
//   CircleBorder circleBorderWithSide({Color color = Colors.grey}) {
//     return CircleBorder(
//       side: BorderSide(color: color),
//     );
//   }

//   /// Returns a [BoxDecoration] with customizable borders for each side.
//   BoxDecoration boxDecorationAllBorders({
//     Color topColor = Colors.red,
//     Color rightColor = Colors.green,
//     Color bottomColor = Colors.blue,
//     Color leftColor = Colors.yellow,
//     double width = 2.0,
//   }) {
//     return BoxDecoration(
//       border: Border(
//         top: BorderSide(color: topColor, width: width),
//         right: BorderSide(color: rightColor, width: width),
//         bottom: BorderSide(color: bottomColor, width: width),
//         left: BorderSide(color: leftColor, width: width),
//       ),
//     );
//   }

//   /// Returns a [BoxDecoration] with symmetric borders (vertical).
//   BoxDecoration boxDecorationSymmetric({Color verticalColor = Colors.red, double width = 2.0}) {
//     return BoxDecoration(
//       border: Border.symmetric(
//         vertical: BorderSide(color: verticalColor, width: width),
//       ),
//     );
//   }

//   /// Returns a [BoxDecoration] with directional borders.
//   BoxDecoration boxDecorationDirectional({Color startColor = Colors.red, Color endColor = Colors.blue}) {
//     return BoxDecoration(
//       border: BorderDirectional(
//         start: BorderSide(color: startColor),
//         end: BorderSide(color: endColor),
//       ),
//     );
//   }

//   /// Returns a [ClipRRect] with a customizable border radius.
//   ClipRRect clipRRect({required Widget child, double radius = 8.0}) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(radius),
//       child: child,
//     );
//   }

//   /// Returns a [ClipOval] for circular clipping of the given [child] widget.
//   ClipOval clipOval({required Widget child}) {
//     return ClipOval(
//       child: child,
//     );
//   }

//   /// Returns a [ClipPath] with a triangle clipping path.
//   ClipPath clipPathTriangle({required Widget child}) {
//     return ClipPath(
//       clipper: TriangleClipper(),
//       child: child,
//     );
//   }

//   /// Returns a [CustomPaint] to paint a custom triangle shape.
//   CustomPaint customTrianglePainter({required Size size}) {
//     return CustomPaint(
//       size: size,
//       painter: TrianglePainter(),
//     );
//   }
// }

// /// A custom [CustomClipper] that defines a triangular clipping path.
// class TriangleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.moveTo(size.width / 2, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

// /// A [CustomPainter] that paints a triangle shape on the canvas.
// class TrianglePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.blue
//       ..style = PaintingStyle.fill;

//     final path = Path();
//     path.moveTo(size.width / 2, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
