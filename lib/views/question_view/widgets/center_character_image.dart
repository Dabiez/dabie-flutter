import 'package:dabieflutter/controllers/question_screen/question_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CenterCharacterImage extends StatefulWidget {
  final QuestionScreenController controller;

  CenterCharacterImage({Key? key, required this.controller}) : super(key: key);

  @override
  _CenterCharacterImageState createState() => _CenterCharacterImageState();
}

class _CenterCharacterImageState extends State<CenterCharacterImage> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus != _isFocused) {
        setState(() {
          _isFocused = _focusNode.hasFocus;
        });
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/question_screen/question_main_image.svg',
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: SizedBox(
                width: 200,
                height: 220,
                child: TextField(
                  focusNode: _focusNode,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(
                      fontFamily: 'omyu-pretty',
                      fontSize: 24,
                      color: Color(0xFF4C3220)
                  ),
                  onChanged: (value) {
                    widget.controller.updateUserInput(value);
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: _isFocused ? '' : '고민을 적어주세요!',
                    hintStyle: TextStyle(
                      fontFamily: 'omyu-pretty',
                      fontSize: 24,
                      color: Color(0xFFCBB8AC),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}