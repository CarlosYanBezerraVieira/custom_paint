import 'package:flutter/material.dart';

class PaintLine extends StatelessWidget {
  const PaintLine({Key? key}) : super(key: key);

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
            foregroundPainter: LinePainter(),
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.amber
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;
    canvas.drawLine(
      Offset(size.width * 1 / 6, size.height * 1 / 2),
      Offset(size.width * 5 / 6, size.height * 1 / 2),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
