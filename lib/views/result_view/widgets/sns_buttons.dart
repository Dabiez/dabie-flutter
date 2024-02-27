import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SnsButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset('assets/icon/save_icon.svg'),
        SizedBox(width: 10),
        SvgPicture.asset('assets/icon/share_icon.svg'),
      ],
    );
  }
}