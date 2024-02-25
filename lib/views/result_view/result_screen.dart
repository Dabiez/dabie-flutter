import 'package:flutter/material.dart';
import '../result_view/widgets/background.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Background()
          ],
        ),
      ),
    );
  }
}