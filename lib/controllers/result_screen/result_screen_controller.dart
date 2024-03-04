import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import '../../views/question_view/question_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';

import 'dart:ui' as ui;
import 'dart:typed_data';
import 'dart:io';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class ResultScreenController {
  final _buttonClicked = PublishSubject<void>();

  Stream<void> get buttonClicked => _buttonClicked.stream;

  void onButtonClicked(BuildContext context) {
    _buttonClicked.sink.add(null);

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuestionScreen()));
  }

  void dispose() {
    _buttonClicked.close();
  }
  
  Future<String> getRandomAnswerText() async {
    final collection = FirebaseFirestore.instance.collection('answers');
    final querySnapshot = await collection.get();
    final allDocs = querySnapshot.docs;
    if (allDocs.isEmpty) return "No answers available.";

    final randomDoc = allDocs[Random().nextInt(allDocs.length)];
    return randomDoc.get('text') ?? "No text available.";
  }

  // Future<void> saveScreenshot(GlobalKey key) async {
  //   RenderRepaintBoundary? boundary = key.currentContext?.findRenderObject() as RenderRepaintBoundary?;
  //   if (boundary != null) {
  //     ui.Image image = await boundary.toImage(pixelRatio: 3.0);
  //     ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  //     if (byteData != null) {
  //       Uint8List pngBytes = byteData.buffer.asUint8List();
  //
  //       if (await Permission.storage.request().isGranted) {
  //         final directory = await getTemporaryDirectory();
  //         final imagePath = await File('${directory.path}/screenshot.png').create();
  //         await imagePath.writeAsBytes(pngBytes);
  //
  //         final result = await ImageGallerySaver.saveFile(imagePath.path);
  //         print("Save result: $result");
  //       }
  //     }
  //   }
  // }
  Future<void> saveScreenshot(GlobalKey key) async {
    try {
      RenderRepaintBoundary? boundary = key.currentContext?.findRenderObject() as RenderRepaintBoundary?;
      if (boundary != null) {
        ui.Image image = await boundary.toImage(pixelRatio: 3.0);
        ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
        if (byteData != null) {
          Uint8List pngBytes = byteData.buffer.asUint8List();

          // 저장 권한 요청
          var status = await Permission.storage.status;
          if (!status.isGranted) {
            await Permission.storage.request();
          }

          // Android 10 이상을 위한 권한 재확인
          if (Platform.isAndroid && await Permission.storage.isPermanentlyDenied) {
            openAppSettings();
          }

          // 파일 저장
          final directory = (await getApplicationDocumentsDirectory()).path; // 변경: getTemporaryDirectory() -> getApplicationDocumentsDirectory()
          String fileName = 'screenshot_${DateTime.now().millisecondsSinceEpoch}.png';
          final path = '$directory/$fileName';
          final file = File(path);
          await file.writeAsBytes(pngBytes);

          // 갤러리에 저장 (선택적)
          final result = await ImageGallerySaver.saveFile(path);
          print("Save result: $result");
        }
      }
    } catch (e) {
      print("Error saving screenshot: $e");
    }
  }
}