import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final int? maxlines;
  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.color,
    this.fontWeight,
    this.textAlign,
    this.letterSpacing,
    this.maxlines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxlines,
      style: GoogleFonts.plusJakartaSans(
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
