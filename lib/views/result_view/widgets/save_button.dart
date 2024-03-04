import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SaveButton extends StatelessWidget {
  final VoidCallback? onPressed;

  SaveButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset('assets/icon/save_icon.svg'),
      onPressed: onPressed,
    );
  }
}