import 'package:flutter/cupertino.dart';

class ACustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurved = Offset(0, size.height - 20);
    final lastCurved = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurved.dx, firstCurved.dy, lastCurved.dx, lastCurved.dy);

    final secondFirstCurved = Offset(0, size.height - 20);
    final secondLastCurved = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondFirstCurved.dx, secondFirstCurved.dy,
        secondLastCurved.dx, secondLastCurved.dy);

    final thirdFirstCurved = Offset(size.width, size.height - 20);
    final thirdLastCurved = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFirstCurved.dx, thirdFirstCurved.dy,
        thirdLastCurved.dx, thirdLastCurved.dy);

    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

// @override
// Path getClip(Size size) {
//   Path path = Path();
//   final double _xScaling = size.width / 2000;
//   final double _yScaling = size.height / 1500;
//   path.lineTo(632.45 * _xScaling, 121.83000000000001 * _yScaling);
//   path.cubicTo(
//     709.44 * _xScaling,
//     166.66 * _yScaling,
//     724.61 * _xScaling,
//     315.46000000000004 * _yScaling,
//     664.5400000000001 * _xScaling,
//     375.53 * _yScaling,
//   );
//   path.cubicTo(
//     604.4700000000001 * _xScaling,
//     435.5999999999999 * _yScaling,
//     362.95000000000016 * _xScaling,
//     668.75 * _yScaling,
//     330.9200000000001 * _xScaling,
//     772.43 * _yScaling,
//   );
//   path.cubicTo(
//     317.8900000000001 * _xScaling,
//     672.1999999999999 * _yScaling,
//     59.08000000000007 * _xScaling,
//     428.99 * _yScaling,
//     -0.9799999999999329 * _xScaling,
//     368.91999999999996 * _yScaling,
//   );
//   path.cubicTo(
//     -61.049999999999926 * _xScaling,
//     308.8499999999999 * _yScaling,
//     -39.519999999999925 * _xScaling,
//     161.61999999999992 * _yScaling,
//     38.02000000000007 * _xScaling,
//     123.55999999999992 * _yScaling,
//   );
//   path.cubicTo(
//     114.16000000000005 * _xScaling,
//     86.17999999999992 * _yScaling,
//     221.03000000000006 * _xScaling,
//     112.64999999999989 * _yScaling,
//     257.1700000000001 * _xScaling,
//     155.6899999999999 * _yScaling,
//   );
//   path.cubicTo(
//     273.4000000000001 * _xScaling,
//     175.0299999999999 * _yScaling,
//     303.9900000000001 * _xScaling,
//     196.16999999999993 * _yScaling,
//     332.6400000000001 * _xScaling,
//     292.03999999999996 * _yScaling,
//   );
//   path.cubicTo(
//     375.05000000000007 * _xScaling,
//     195.26999999999995 * _yScaling,
//     375.19000000000005 * _xScaling,
//     203.99999999999991 * _yScaling,
//     416.7600000000001 * _xScaling,
//     160.87999999999997 * _yScaling,
//   );
//   path.cubicTo(
//     456.0400000000001 * _xScaling,
//     120.11999999999998 * _yScaling,
//     534.33 * _xScaling,
//     64.67999999999998 * _yScaling,
//     632.4500000000002 * _xScaling,
//     121.82999999999996 * _yScaling,
//   );
//   path.cubicTo(
//     632.4500000000002 * _xScaling,
//     121.82999999999996 * _yScaling,
//     632.45 * _xScaling,
//     121.83000000000001 * _yScaling,
//     632.45 * _xScaling,
//     121.83000000000001 * _yScaling,
//   );
//   return path;
// }
