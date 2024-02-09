import 'package:flutter/material.dart';

class TopTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 90.0),
        child: DefaultTextStyle(
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'omyu-pretty',
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.normal,
          ),
          child: Text('여러분의 고민을 들어준다비~'),
        ),
      ),
    );
  }
}