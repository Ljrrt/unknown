import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ModularLottieAnimation extends StatelessWidget {
  const ModularLottieAnimation({
    super.key,
    required this.animation,
    this.repeat = true,
    this.reverse = false,
    this.controller,
    this.height,
    this.width,
  });

  final String animation;
  final bool repeat;
  final bool reverse;
  final double? height;
  final double? width;
  final Animation<double>? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Lottie.asset(
        'assets/lottie/$animation.json',
        repeat: repeat,
        reverse: reverse,
        controller: controller,
      ),
    );
  }
}
