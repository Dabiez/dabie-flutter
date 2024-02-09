import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundSvgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: SvgPicture.asset(
        'assets/start_screen/start_bg.svg',
        fit: BoxFit.cover
      ),
    );
  }
}