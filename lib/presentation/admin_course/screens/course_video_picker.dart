import 'package:eduzap/presentation/admin_course/screens/upload_course.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/core/snack_bar.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CourseVideoPickerScreen extends StatelessWidget {
  const CourseVideoPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    XFile? pickedVideo;

    XFile? pickedImage;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomText(
          text: "Upload Video",
          fontSize: 22,
          color: grey900,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 350,
                height: 120,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        UploadOptionButton(
                          iconData: Icons.video_camera_back_rounded,
                          text: 'Video',
                          onTap: () async {
                            final video = await ImagePicker()
                                .pickVideo(source: ImageSource.gallery);
                            if (video != null) {
                              pickedVideo = video;
                            }
                          },
                        ),
                        UploadOptionButton(
                          iconData: Icons.image,
                          text: 'Cover',
                          onTap: () async {
                            final image = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (image != null) {
                              pickedImage = image;
                            }
                          },
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (pickedImage != null && pickedVideo != null) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => UploadCourse(
                                videoPath: pickedVideo?.path,
                                imagePath: pickedImage?.path,
                              ),
                            ),
                          );
                        } else {
                          showSnackBar(
                            context,
                            "You should pick video & image to continue",
                          );
                        }
                      },
                      child: const CustomText(
                        text: "Next",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: primaryBlue,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Future<void> pickCoverImage(ImageSource source) async {
  //   pickedImage = await ImagePicker().pickImage(source: source);
  // }
}

class UploadOptionButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final VoidCallback onTap;
  const UploadOptionButton({
    super.key,
    required this.text,
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        onTap();
      },
      icon: Icon(
        iconData,
        size: 30,
      ),
      label: CustomText(
        text: text,
        fontSize: 19,
        color: primaryBlue,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
