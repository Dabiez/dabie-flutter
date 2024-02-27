import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import '../../views/question_view/question_screen.dart';

class ResultScreenController {
  final _buttonClicked = PublishSubject<void>();

  Stream<void> get buttonClicked => _buttonClicked.stream;

  void onButtonClicked(BuildContext context) {
    _buttonClicked.sink.add(null);

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuestionScreen()));
  }

  void dispose() {
    _buttonClicked.close();
  }
}