import 'package:eduzap/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final int? maxLength;
  final int? maxLines;
  final Function(String value)? onChanged;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.maxLength,
    this.maxLines,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: TextFormField(
        controller: controller,
        maxLength: maxLength,
        maxLines: maxLines,
        decoration: InputDecoration(
          helperText: "Required*",
          hintText: hintText,
          hintStyle: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            wordSpacing: 2,
            letterSpacing: 1.3,
          ),
          suffix: suffixIcon,
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: grey100,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: grey100,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: grey100,
            ),
          ),
        ),
        onChanged: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}

class CustomFilledFormField extends StatelessWidget {
  final Widget? suffixIcon;
  final String hintText;
  final int? maxLines;
  final int? maxLength;
  final Function(String value) onFieldSubmitted;
  const CustomFilledFormField({
    super.key,
    this.suffixIcon,
    required this.hintText,
    this.maxLines,
    this.maxLength,
    required this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        maxLines: maxLines,
        maxLength: maxLength,
        decoration: InputDecoration(
          filled: true,
          fillColor: lightPink,
          hintText: hintText,
          hintStyle: GoogleFonts.plusJakartaSans(
            letterSpacing: 1,
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: grey400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          suffixIcon: suffixIcon,
        ),
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.go,
        onFieldSubmitted: (value) {
          onFieldSubmitted(value);
        },
      ),
    );
  }
}
