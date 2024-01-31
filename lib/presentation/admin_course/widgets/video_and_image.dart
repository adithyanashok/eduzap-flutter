import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoAndImageRow extends StatelessWidget {
  const VideoAndImageRow({
    super.key,
    required this.videoPlayerController,
    required this.imageFile,
  });

  final VideoPlayerController videoPlayerController;
  final File imageFile;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              width: 170,
              height: 170,
              child: VideoPlayer(videoPlayerController),
            ),
            const Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Icon(
                Icons.play_circle_fill,
                size: 40,
                color: Colors.white,
              ),
            )
          ],
        ),
        SizedBox(
          width: 170,
          height: 170,
          child: Image.file(
            imageFile,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
