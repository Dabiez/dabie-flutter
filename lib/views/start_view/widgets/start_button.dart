import 'package:dabieflutter/controllers/start_screen/start_screen_controller.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final StartScreenController controller;
  StartButton({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF4C3220),
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          controller.onButtonClicked();
          print("시작하기 버튼 클릭");
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '시작하기',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontFamily: 'omyu-pretty',
                  fontWeight: FontWeight.normal
                )
              ),
            Text(
              '현재까지 2명이 참가했어요!',
              style: TextStyle(
                color: Color(0xFFDEB79C),
                fontSize: 16.0,
                fontFamily: 'omyu-pretty',
              )
            )
          ]
        )
      )
    );
  }
}