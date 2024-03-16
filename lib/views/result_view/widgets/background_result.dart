import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: SvgPicture.asset(
            'assets/result_screen/result_bg.svg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 20,
          bottom: 240,
          child: SvgPicture.asset(
            'assets/result_screen/smart_characters.svg',
            width: 100, // 적절한 너비 지정
            height: 220, // 적절한 높이 지정
          ),
        ),
      ],
    );
  }
}