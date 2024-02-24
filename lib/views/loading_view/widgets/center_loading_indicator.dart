import 'package:dabieflutter/common/center_character_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CenterLoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBD0AE),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 250,
            right: 110,
            child: SvgPicture.asset(
              'assets/loading_screen/balloon_character.svg',
              width: 200,
            ),
          ),
          Positioned(
            top: 490,
            child: CenterCharacterAnimation(
              animationPath: 'assets/loading_screen/loading.json',
            )
          )

        ],
      ),
    );
  }
}