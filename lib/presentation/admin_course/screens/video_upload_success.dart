import 'package:flutter/material.dart';

class VideoUploadSuccess extends StatelessWidget {
  const VideoUploadSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.check_circle_outline_outlined,
          color: Colors.green,
          size: 100,
        ),
      ),
    );
  }
}
