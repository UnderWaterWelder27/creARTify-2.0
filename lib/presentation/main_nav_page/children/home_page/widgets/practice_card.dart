import 'package:flutter/material.dart';
import 'dart:math' as math;

class PracticeCard extends StatelessWidget {
  const PracticeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
        ),
      ),
    );
  }
}
