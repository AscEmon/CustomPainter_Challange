import 'package:flutter/material.dart';

class SunScreen extends StatelessWidget {
  const SunScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 150,
          left: 150,
          child: CustomPaint(
            painter: ShapePainter(),
            child: Container(),
          ),
        ),
        Positioned(
          top: 210,
          left: 60,
          child: CustomPaint(
            painter: WavePaint(),
            child: Container(
              height: 260,
              width: 200,
            ),
          ),
        ),
         Positioned(
          top: 200,
          left: 160,
          child: CustomPaint(
            painter: WavePaint(),
            child: Container(
              height: 260,
              width: 200,
            ),
          ),
        ),
      ],
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paintCircle = Paint()
      ..color = Colors.orange
      ..strokeWidth = 10
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;
    Offset cicleOffset = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(cicleOffset, 108, paintCircle);
  
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class WavePaint extends CustomPainter {

 @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
      var paintWave = Paint()
      ..color = Colors.white54
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;



    var path = new Path();
    // var firstControlPoint = new Offset(size.width / 4, size.height / 4);
    // var firstEndPoint = new Offset(size.width / 2, size.height / 3 - 60);
    // var secondControlPoint =
    //     new Offset(size.width - (size.width / 2.7), size.height / 4 - 65);
    // var secondEndPoint = new Offset(size.width, size.height / 3.8 - 50);
    // path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
    //     firstEndPoint.dx, firstEndPoint.dy);
    // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
    //     secondEndPoint.dx, secondEndPoint.dy);
      path.cubicTo(size.width / 3, 3 * size.height / 3, 3 * size.width / 4, size.height /4, size.width, size.height);

    canvas.drawPath(path, paintWave);
  } 
 
 @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
