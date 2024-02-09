import 'package:flutter/material.dart';
import 'package:dabieflutter/views/start_view/widgets/background_svg_image.dart';
import 'package:dabieflutter/views/start_view/widgets/center_character_animation.dart';
import 'package:dabieflutter/views/start_view/widgets/dabi_answer_title.dart';
import 'package:dabieflutter/views/start_view/widgets/top_text_widget.dart';

import 'package:dabieflutter/views/start_view/widgets/start_button.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            BackgroundSvgImage(),
            TopTextWidget(),
            DabiAnswerNoteTitle(),
            CenterCharacterAnimation(),
            Positioned(
              left: 0,
              right: 0,
              bottom: 25,
              child: StartButton(),
            )
          ],
        ),
      ),
    );
  }
}