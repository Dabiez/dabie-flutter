import 'package:flutter/material.dart';

class CommonTopTextWidget extends StatelessWidget {
  final String text;
  const CommonTopTextWidget({Key? key, required this.text}) : super(key: key);

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
          child: Text(text),
        ),
      ),
    );
  }
}
