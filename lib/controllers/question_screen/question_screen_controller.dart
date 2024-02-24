import 'package:rxdart/rxdart.dart';

class QuestionScreenController {
  final _buttonClicked = PublishSubject<void>();

  Stream<void> get buttonClicked => _buttonClicked.stream;

  void onButtonClicked() {
    _buttonClicked.sink.add(null);
  }

  void dispose() {
    _buttonClicked.close();
  }
}