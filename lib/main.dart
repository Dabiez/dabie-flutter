import 'package:flutter/material.dart';
import 'views/start_view/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: StartScreen(), // StartScreen을 앱의 시작 화면으로 설정
    );
  }
}