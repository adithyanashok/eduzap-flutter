import 'dart:io';

import 'package:video_compress/video_compress.dart';

class Media {
  static Future<File?> compressVideo(String videoPath) async {
    final compressedVideo = await VideoCompress.compressVideo(
      videoPath,
      quality: VideoQuality.MediumQuality,
    );
    // Return the compressed video
    return compressedVideo!.file;
  }
}
