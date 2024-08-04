import 'package:flutter/material.dart';
import 'package:flutter_task02/circles.dart';
import 'package:flutter_task02/containers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFF0401),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.95,
          decoration: ShapeDecoration(
            color: const Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  width: 5, strokeAlign: BorderSide.strokeAlignOutside),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Column(
            children: [
              const CircleShape(),
              Transform.translate(
                offset: const Offset(0, -30),
                child: const RectangleContainer(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
