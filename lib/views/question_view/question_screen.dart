import 'package:dabieflutter/common/common_answer_title.dart';
import 'package:dabieflutter/common/common_top_text_widget.dart';
import 'package:dabieflutter/controllers/question_screen/question_screen_controller.dart';
import 'package:dabieflutter/views/question_view/widgets/center_character_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common/common_button.dart';
import '../../common/background.dart';

class QuestionScreen extends StatelessWidget {
  final QuestionScreenController controller = QuestionScreenController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   icon: SvgPicture.asset('assets/icon/back_icon.svg', color: Colors.black),
          //   onPressed: () => Navigator.of(context).pop(),
          // ),
          backgroundColor: Color(0xFFFBD0AE),
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            Background(),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: -90,
              child: CommonTopTextWidget(text: '다비의 해답노트'),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: -90,
              child: CommonAnswerTitle(text: '어떤 고민이든 말해다비~', fontSize: 36),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: -90,
              child: CenterCharacterImage(controller: controller,),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 25,
              child: CommonButton(
                buttonText: '해답 들으러 가기',
                onPressed: () => controller.onButtonClicked(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}