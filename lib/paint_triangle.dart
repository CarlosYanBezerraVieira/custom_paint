import 'package:flutter/material.dart';

class PaintTriangle extends StatelessWidget {
  const PaintTriangle({Key? key}) : super(key: key);

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
            foregroundPainter: TrianglePainter(),
          ),
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    final path = Path();
    path.moveTo(size.width * 1 / 2, size.height * 1 / 4);

    path.lineTo(size.width * 1 / 6, size.height * 3 / 4);
    path.lineTo(size.width * 5 / 6, size.height * 3 / 4);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
