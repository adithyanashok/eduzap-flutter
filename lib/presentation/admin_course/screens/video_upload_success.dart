import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class VideoUploadSuccess extends StatelessWidget {
  const VideoUploadSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Center(
          child: Icon(
            Icons.check_circle_outline_outlined,
            color: Colors.green,
            size: 100,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const CustomText(
            text: "Home",
            fontSize: 15,
            color: grey900,
          ),
        )
      ],
    );
  }
}
