import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CenterCharacterAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/start_screen/main_character.json',
      ),
    );
  }
}