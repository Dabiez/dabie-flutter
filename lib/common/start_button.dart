import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const StartButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.brown,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          textStyle: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
          elevation: 4.0,
        ),
      child: Text(text),
    );
  }
}