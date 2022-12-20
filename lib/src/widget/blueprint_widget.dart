import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BlueprintWidget extends HookWidget {
  const BlueprintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        // onHorizontalDragUpdate: print,
        // onVerticalDragUpdate: print,
        child: CustomPaint(
          size: Size.infinite,
          painter: _BlueprintPainter(),
        ),
      ),
    );
  }
}

class _BlueprintPainter extends CustomPainter {
  //final _paintDotCenter = Paint()..color = Colors.black45;
  final _paintDot = Paint()..color = Colors.black26;
  static const _gap = 16.0;

  @override
  void paint(Canvas canvas, Size size) {
    final xNum = (size.width / _gap).round();
    final yNum = (size.height / _gap).round();
    for (var x = -1; x <= xNum; x++) {
      for (var y = -1; y < yNum; y++) {
        final pos = Offset(_gap * x, _gap * y);

        canvas.drawCircle(pos, 1, _paintDot);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
