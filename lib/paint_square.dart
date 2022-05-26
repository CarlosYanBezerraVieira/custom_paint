import 'package:flutter/material.dart';

class PaintSquare extends StatelessWidget {
  const PaintSquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.white,
          child: CustomPaint(
            foregroundPainter: RectanglePainter(),
          ),
        ),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    final rect = Rect.fromPoints(
      Offset(size.width * 1 / 5, size.height * 1 / 4),
      Offset(size.width * 5 / 6, size.height * 3 / 4),
    );

    // canvas.drawRect(rect, paint);
    //borda circular
    // ignore: prefer_const_constructors
    final radius = Radius.circular(10);
    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
