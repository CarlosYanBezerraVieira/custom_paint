import 'package:flutter/material.dart';

class PaintArc extends StatelessWidget {
  const PaintArc({Key? key}) : super(key: key);

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
            foregroundPainter: ArcPainter(),
          ),
        ),
      ),
    );
  }
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    final arc1 = Path();
    arc1.moveTo(size.width * 0.2, size.height * 0.2);

    arc1.arcToPoint(Offset(size.width * 0.8, size.height * 0.2),
        radius: const Radius.circular(150), clockwise: false);
    canvas.drawPath(arc1, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
