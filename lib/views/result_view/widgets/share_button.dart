import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShareButton extends StatelessWidget {
  final VoidCallback? onPressed;

  ShareButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset('assets/icon/share_icon.svg'),
      onPressed: onPressed,
    );
  }
}