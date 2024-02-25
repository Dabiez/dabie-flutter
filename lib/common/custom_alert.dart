import 'package:flutter/material.dart';

class CustomAlert extends StatelessWidget {
  final String message;

  const CustomAlert({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                message,
                style: TextStyle(
                  fontFamily: 'omyu-pretty',
                  fontSize: 24,
                  color: Color(0xFF4C3220),
                ),
              ),
              SizedBox(height: 50),
              Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                  color: Color(0xFF4C3220),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    '확인',
                    style: TextStyle(
                      fontFamily: 'omyu-pretty',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

void showCustomDialog(BuildContext context, String message) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlert(message: message);
    },
  );
}