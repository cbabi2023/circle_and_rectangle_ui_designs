import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RectangleContainer extends StatelessWidget {
  const RectangleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FirstContainer(),
        SizedBox(height: 15),
        SecondContainer(),
      ],
    );
  }
}

// First Container
class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final containerSizeWidth = MediaQuery.of(context).size.width * 0.75;
    final containerSizeHeight = MediaQuery.of(context).size.height * 0.35;

    return Column(
      children: [
        Container(
          width: containerSizeWidth,
          height: containerSizeHeight,
          decoration: const BoxDecoration(color: Color(0xFF6AD1BF)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 11),
                  SmallChildBox(),
                  SizedBox(width: 11),
                  SmallChildBox(),
                  SizedBox(width: 11),
                  SmallChildBox(),
                  SizedBox(width: 11),
                  SmallChildBox(),
                  SizedBox(width: 11),
                ],
              ),
              Transform(
                transform: Matrix4.translationValues(0, 15, 0),
                child: const LargeChildBox(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SmallChildBox extends StatelessWidget {
  const SmallChildBox({super.key});

  @override
  Widget build(BuildContext context) {
    final childContinerSize = MediaQuery.of(context).size.width * 0.15;
    return Container(
      width: childContinerSize,
      height: childContinerSize,
      decoration: ShapeDecoration(
        color: const Color(0xFF6BACD2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}

class LargeChildBox extends StatelessWidget {
  const LargeChildBox({super.key});

  @override
  Widget build(BuildContext context) {
    final largeConWidth = MediaQuery.of(context).size.width * 0.67;
    final largeConHeight = MediaQuery.of(context).size.height * 0.219;
    return Container(
      width: largeConWidth,
      height: largeConHeight,
      decoration: ShapeDecoration(
        color: const Color(0xFF6BACD2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}

// Second Container
class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final containerSizeWidth = MediaQuery.of(context).size.width * 0.75;
    final containerSizeHeight = MediaQuery.of(context).size.height * 0.35;

    return Column(
      children: [
        Container(
          width: containerSizeWidth,
          height: containerSizeHeight,
          decoration: const BoxDecoration(color: Color(0xFF6AD1BF)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform(
                    transform: Matrix4.translationValues(-5, 10, 0),
                    child: const SmallChilBox2(),
                  ),
                  Transform(
                    transform: Matrix4.translationValues(10, 10, 0),
                    child: const LargeChilBox2(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LargeChilBox2 extends StatelessWidget {
  const LargeChilBox2({super.key});

  @override
  Widget build(BuildContext context) {
    final largeConWidth = MediaQuery.of(context).size.width * 0.47;
    final largeConHeight = MediaQuery.of(context).size.height * 0.3;
    return Container(
      width: largeConWidth,
      height: largeConHeight,
      decoration: ShapeDecoration(
        color: const Color(0xFF6BACD2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}

class SmallChilBox2 extends StatelessWidget {
  const SmallChilBox2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 10),
        SmallChildBox(),
        SizedBox(height: 10),
        SmallChildBox(),
        SizedBox(height: 10),
        SmallChildBox(),
        SizedBox(height: 10),
        SmallChildBox(),
        SizedBox(height: 10),
      ],
    );
  }
}
