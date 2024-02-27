import 'package:dabieflutter/controllers/result_screen/result_screen_controller.dart';
import 'package:dabieflutter/views/result_view/widgets/background_result.dart';
import 'package:dabieflutter/views/result_view/widgets/balloon_label.dart';
import 'package:dabieflutter/views/result_view/widgets/sns_buttons.dart';
import 'package:flutter/material.dart';

import '../../common/common_button.dart';

class ResultScreen extends StatelessWidget {
  final ResultScreenController controller = ResultScreenController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            BackgroundResult(),
            BalloonLabel(text: "Hello, DabiezHello"),
            Positioned(
              left: 0,
              right: 0,
              bottom: 130,
              child: SnsButtons(),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 25,
              child: CommonButton(
                buttonText: '다시 해답 들으러 가기',
                onPressed: () => controller.onButtonClicked(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}