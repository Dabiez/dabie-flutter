import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.brown,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          print('시작 버튼!!');
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