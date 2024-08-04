import 'package:flutter/material.dart';

class CircleShape extends StatelessWidget {
  const CircleShape({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 20),
            CircleDraw(),
            SizedBox(width: 20),
            CircleDraw(),
            SizedBox(width: 20),
            CircleDraw(),
            SizedBox(width: 20),
          ],
        ),
      ],
    );
  }
}

class CircleDraw extends StatelessWidget {
  const CircleDraw({super.key});

  @override
  Widget build(BuildContext context) {
    final circleSizeWidth = MediaQuery.of(context).size.width * 0.23;
    final circleSizeHeight = MediaQuery.of(context).size.height * 0.23;
    return Container(
      width: circleSizeWidth,
      height: circleSizeHeight,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFDD7979)),
    );
  }
}
