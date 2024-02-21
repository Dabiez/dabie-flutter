import 'package:dabieflutter/common/common_answer_title.dart';
import 'package:dabieflutter/common/common_top_text_widget.dart';
import 'package:flutter/material.dart';
import '../result_view/widgets/background.dart';

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Background(),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 10,
              child: CommonTopTextWidget(text: '다비의 해답노트'),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 10,
              child: CommonAnswerTitle(text: '어떤 고민이든 말해다비~', fontSize: 36),
            ),
          ]
        )
      )
    );
  }
}