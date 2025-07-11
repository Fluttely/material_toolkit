// OutlineInputBorder(
//   borderRadius: BorderRadius.circular(0),
//   borderSide: BorderSide(
//     color: Colors.grey,
//     width: 1.0,
//   ),
// )
// UnderlineInputBorder(
//   borderSide: BorderSide(
//     color: Colors.grey,
//     width: 1.0,
//   ),
// )
// InputBorder.none
// ContinuousRectangleBorder(
//   borderRadius: BorderRadius.circular(8),
// )
// RoundedRectangleBorder(
//   borderRadius: BorderRadius.circular(12),
//   side: BorderSide(color: Colors.grey),
// )
// StadiumBorder(
//   side: BorderSide(color: Colors.grey),
// )
// CircleBorder(
//   side: BorderSide(color: Colors.grey),
// )
// BeveledRectangleBorder(
//   borderRadius: BorderRadius.circular(8),
//   side: BorderSide(color: Colors.grey),
// )
// BoxDecoration(
//   border: Border(
//     top: BorderSide(color: Colors.red, width: 2.0),
//     right: BorderSide(color: Colors.green, width: 2.0),
//     bottom: BorderSide(color: Colors.blue, width: 2.0),
//     left: BorderSide(color: Colors.yellow, width: 2.0),
//   ),
// )
// ContinuousRectangleBorder(
//   borderRadius: BorderRadius.circular(12),
// )
// BoxDecoration(
//   border: Border.all(color: Colors.grey, width: 2),
// )

// BoxDecoration(
//   border: Border.symmetric(
//     vertical: BorderSide(color: Colors.red, width: 2),
//   ),
// )
// BoxDecoration(
//   border: BorderDirectional(
//     start: BorderSide(color: Colors.red),
//     end: BorderSide(color: Colors.blue),
//   ),
// )
// ClipRRect(
//   borderRadius: BorderRadius.circular(8),
//   child: Image.network('image_url'),
// )
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

// // Utilização no widget:
// Container(
//   width: 100,
//   height: 100,
//   child: CustomPaint(
//     painter: TrianglePainter(),
//   ),
// )
// ClipRRect(
//   borderRadius: BorderRadius.circular(12),
//   child: Image.network('https://example.com/image.jpg'),
// )
// ClipOval(
//   child: Image.network(
//     'https://example.com/image.jpg',
//     width: 100,
//     height: 100,
//     fit: BoxFit.cover,
//   ),
// )
// ClipPath(
//   clipper: TriangleClipper(),
//   child: Container(
//     color: Colors.red,
//     width: 100,
//     height: 100,
//   ),
// );

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
// ShapeDecoration(
//   color: Colors.blue,
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(12),
//   ),
// )
