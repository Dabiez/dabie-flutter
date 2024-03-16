import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuestionLabel extends StatefulWidget {
  final String label;
  QuestionLabel({Key? key, required this.label}) : super(key: key);

  @override
  QuestionLabelState createState() => QuestionLabelState();
}

class QuestionLabelState extends State<QuestionLabel> {
  String label = "";

  void updateLabel(String newLabel) {
    setState(() {
      label = newLabel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/result_screen/qmark.svg',
            width: 36,
            height: 36,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Stack(
              children: <Widget>[
                Text(
                  widget.label,
                  style: TextStyle(
                    fontFamily: 'omyu-pretty',
                    fontSize: 24.0,
                    fontWeight: FontWeight.normal,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  widget.label,
                  style: TextStyle(
                    fontFamily: 'omyu-pretty',
                    fontSize: 24.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}