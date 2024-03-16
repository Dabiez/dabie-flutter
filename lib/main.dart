import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'views/start_view/start_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyALUMYrFjgrZ3LcZ2hEfcYTsKKZ1yAdd0E",
      appId: "1:861627637650:android:7d1fdf4e7b72cc62b3ab4b",
      messagingSenderId: "861627637650",
      projectId: "dabiez-97e9b",
    ),
  );
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