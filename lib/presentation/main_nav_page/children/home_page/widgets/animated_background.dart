import 'dart:math';

import 'package:flutter/material.dart';

class Bubbles extends StatefulWidget {
  const Bubbles({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BubblesState();
  }
}

class _BubblesState extends State<Bubbles> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Bubble> bubbles;
  final int numberOfBubbles = 40;
  final Color color = Colors.amber;
  final double maxBubbleSize = 10.0;

  @override
  void initState() {
    super.initState();

    // Initialize bubbles
    bubbles = [];
    int i = numberOfBubbles;
    while (i > 0) {
      bubbles.add(Bubble(color, maxBubbleSize));
      i--;
    }

    // Init animation controller
    _controller = AnimationController(duration: const Duration(seconds: 1000), vsync: this);
    _controller.addListener(updateBubblePosition);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        foregroundPainter: BubblePainter(bubbles: bubbles, controller: _controller),
        size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
      ),
    );
  }

  void updateBubblePosition() {
    for (var it in bubbles) {
      it.updatePosition();
    }
    setState(() {});
  }
}

class BubblePainter extends CustomPainter {

  BubblePainter({required this.bubbles, required this.controller});
  List<Bubble> bubbles;
  AnimationController controller;

  @override
  void paint(Canvas canvas, Size size) {
    for (var it in bubbles) {
      it.draw(canvas, size);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Bubble {

  Bubble(Color color, double maxBubbleSize)
      : colour = color.withOpacity(Random().nextDouble()),
        direction = Random().nextDouble() * 360,
        speed = 1,
        radius = Random().nextDouble() * maxBubbleSize,
        x = 0,
        y = 0;
  Color colour;
  double direction;
  double speed;
  double radius;
  double x;
  double y;

  void draw(Canvas canvas, Size canvasSize) {
    final Paint paint = Paint()
      ..color = colour
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    assignRandomPositionIfUninitialized(canvasSize);

    randomlyChangeDirectionIfEdgeReached(canvasSize);

    canvas.drawCircle(Offset(x, y), radius, paint);
  }

  void assignRandomPositionIfUninitialized(Size canvasSize) {

  }

  void updatePosition() {
    final a = 180 - (direction + 90);
    direction > 0 && direction < 180
        ? x += speed * sin(direction) / sin(speed)
        : x -= speed * sin(direction) / sin(speed);
    direction > 90 && direction < 270
        ? y += speed * sin(a) / sin(speed)
        : y -= speed * sin(a) / sin(speed);
  }

  void randomlyChangeDirectionIfEdgeReached(Size canvasSize)  {
    if (x > canvasSize.width || x < 0 || y > canvasSize.height || y < 0) {
      direction = Random().nextDouble() * 360;
    }
  }
}
