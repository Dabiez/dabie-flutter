import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  CommonButton({
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      child: ElevatedButton(
        child: Text(
          buttonText,
          style: TextStyle(
            fontFamily: 'omyu-pretty',
            fontSize: 24,
            color: Colors.white
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFF4C3220)),
          minimumSize: MaterialStateProperty.all(Size(30, 65))
        ),
        onPressed: onPressed,
      ),
    );
  }
}