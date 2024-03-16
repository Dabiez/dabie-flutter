import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BalloonLabel extends StatelessWidget {
  final String text;

  BalloonLabel({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 280,
      margin: EdgeInsets.only(left: 15, top: 160),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            'assets/result_screen/result_mark.svg',
            width: 300,
            height: 240,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            constraints: BoxConstraints(
              maxWidth: 250,
              maxHeight: 250,
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF4C3220),
                fontFamily: 'omyu-pretty',
                fontSize: 20,
              ),
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
          ),
        ],
      ),
    );
  }
}