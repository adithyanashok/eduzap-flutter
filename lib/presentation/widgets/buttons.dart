import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final BoxBorder? border;
  final double? fontSize;
  final VoidCallback? onTap;
  const CustomPrimaryButton({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    this.border,
    this.fontSize,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
            border: border,
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.plusJakartaSans(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String text;
  final String imageName;
  final double imgWidth;
  const SocialButton({
    super.key,
    required this.text,
    required this.imageName,
    required this.imgWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: grey50,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/$imageName',
                fit: BoxFit.cover,
                width: imgWidth,
              ),
              const SizedBox(width: 20),
              CustomText(
                text: text,
                fontSize: 18,
                color: grey900,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MiniButton extends StatelessWidget {
  final String text;
  final Color? buttonColor;
  const MiniButton({
    super.key,
    required this.text,
    this.buttonColor = primaryBlue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: CustomText(
          text: text,
          fontSize: 12,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
