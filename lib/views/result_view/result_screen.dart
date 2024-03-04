import 'package:dabieflutter/controllers/result_screen/result_screen_controller.dart';
import 'package:dabieflutter/views/result_view/widgets/background_result.dart';
import 'package:dabieflutter/views/result_view/widgets/balloon_label.dart';
import 'package:dabieflutter/views/result_view/widgets/save_button.dart';
import 'package:dabieflutter/views/result_view/widgets/share_button.dart';
import 'package:flutter/material.dart';

import '../../common/common_button.dart';

class ResultScreen extends StatelessWidget {
  final ResultScreenController controller = ResultScreenController();
  final GlobalKey _repaintBoundaryKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RepaintBoundary(
          key: _repaintBoundaryKey,
          child: Stack(
            children: <Widget>[
              BackgroundResult(),
              // BalloonLabel(text: "Hello, DabiezHello"),
              FutureBuilder<String>(
                future: controller.getRandomAnswerText(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  }
                  else if (snapshot.hasError) {
                    print('Error: ${snapshot.error}');
                    return Text('Error: ${snapshot.error}');
                  }
                  else {
                    return BalloonLabel(text: snapshot.data ?? "나도 모르겠다비~");
                  }
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 130),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SaveButton(
                        onPressed: () {
                          print('Save button pressed');
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            controller.saveScreenshot(_repaintBoundaryKey);
                          });
                        },
                      ),
                      ShareButton(
                        onPressed: () {
                          print('Share button pressed');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 25,
                child: CommonButton(
                  buttonText: '다시 해답 들으러 가기',
                  onPressed: () => controller.onButtonClicked(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}