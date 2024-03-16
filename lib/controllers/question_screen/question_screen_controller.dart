import 'package:dabieflutter/common/custom_alert.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:dabieflutter/views/loading_view/loading_screen.dart';
import 'package:dabieflutter/views/result_view/result_screen.dart';

class QuestionScreenController {
  final _buttonClicked = PublishSubject<void>();
  final _userInput = BehaviorSubject<String>.seeded("");
  VoidCallback? updateQuestionLabel;

  Stream<String> get userInput => _userInput.stream;

  String getUserInputValue() {
    return _userInput.value!;
  }

  void updateUserInput(String input) {
    _userInput.sink.add(input);
    print("updateUserInput called with input: $input");
    updateQuestionLabel?.call();
  }

  Stream<void> get buttonClicked => _buttonClicked.stream;

  void onButtonClicked(BuildContext context) {
    _buttonClicked.sink.add(null);

    if (_userInput.value!.trim().isEmpty) {
      showCustomDialog(context, "아무것도 적지 않았다비~");
    }
    else {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoadingScreen()));
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pop();
        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultScreen()));
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultScreen(userInput: _userInput.value!)));

      });
    }
  }

  void dispose() {
    _buttonClicked.close();
    _userInput.close();
  }
}
