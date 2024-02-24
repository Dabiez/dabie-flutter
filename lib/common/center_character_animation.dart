import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CenterCharacterAnimation extends StatelessWidget {
  final String animationPath;

  CenterCharacterAnimation({required this.animationPath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(animationPath),
    );
  }
}