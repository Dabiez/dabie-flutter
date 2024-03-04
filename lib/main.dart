import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'views/start_view/start_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyALUMYrFjgrZ3LcZ2hEfcYTsKKZ1yAdd0E", // 여기에 API 키 붙여넣기
      appId: "1:861627637650:android:7d1fdf4e7b72cc62b3ab4b", // 여기에 앱 ID 붙여넣기
      messagingSenderId: "861627637650", // 여기에 메시징SenderId 붙여넣기
      projectId: "dabiez-97e9b", // 프로젝트 붙여넣기 여기에 ID가 있습니다
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