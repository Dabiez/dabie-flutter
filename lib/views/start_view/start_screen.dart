import 'package:dabieflutter/common/common_answer_title.dart';
import 'package:flutter/material.dart';
import 'package:dabieflutter/views/start_view/widgets/background_svg_image.dart';
import 'package:dabieflutter/views/start_view/widgets/center_character_animation.dart';
import 'package:dabieflutter/views/start_view/widgets/start_button.dart';

import '../../common/common_top_text_widget.dart';
import '../../controllers/start_screen/start_screen_controller.dart';
import '../question_view/question_screen.dart';

class StartScreen extends StatelessWidget {
  final StartScreenController controller = StartScreenController();

  @override
  Widget build(BuildContext context) {
    controller.buttonClicked.listen((_) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => QuestionScreen()),
      );
    });

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            BackgroundSvgImage(),
            CommonTopTextWidget(text: '여러분의 고민을 들어준다비~'),
            CommonAnswerTitle(text: '다비의 해답노드', fontSize: 52.0,),
            CenterCharacterAnimation(),
            Positioned(
              left: 0,
              right: 0,
              bottom: 25,
              child: StartButton(controller: controller),
            )
          ],
        ),
      ),
    );
  }
}