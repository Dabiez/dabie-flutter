import 'package:flutter/material.dart';

class CommonAnswerTitle extends StatelessWidget {
  final String text;
  final double fontSize;

  const CommonAnswerTitle({
    Key? key,
    required this.text,
    this.fontSize = 52.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 120.0),
        child: Stack(
          children: <Widget>[
            TextOutline(
              text: text,
              fontSize: fontSize,
              outlineColor: Colors.white,
              fillColor: Colors.black,
              strokeWidth: 5,
            ),
            TextFill(
              text: text,
              fontSize: fontSize,
              color: Colors.black
            ),
          ],
        ),
      ),
    );
  }
}

class TextOutline extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color outlineColor;
  final Color fillColor;
  final double strokeWidth;

  const TextOutline({
    required this.text,
    required this.fontSize,
    required this.outlineColor,
    required this.fillColor,
    required this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      textAlign: TextAlign.center,
      style:TextStyle(
        fontFamily: 'omyu-pretty',
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth
          ..color = outlineColor,
      ),
      child: Text(text),
    );
  }
}

class TextFill extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  const TextFill({
    required this.text,
    required this.fontSize,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'omyu-pretty',
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
      ),
      child: Text(text),
    );
  }
}