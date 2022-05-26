import 'package:flutter/material.dart';

class PaintCircular extends StatelessWidget {
  const PaintCircular({Key? key}) : super(key: key);

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
            foregroundPainter: CirclePainter(),
          ),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    final center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, size.width * 1 / 4, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
