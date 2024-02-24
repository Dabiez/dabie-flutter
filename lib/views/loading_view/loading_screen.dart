import 'package:dabieflutter/views/loading_view/widgets/center_loading_indicator.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            CenterLoadingIndicator(),
          ],
        ),
      ),
    );
  }
}