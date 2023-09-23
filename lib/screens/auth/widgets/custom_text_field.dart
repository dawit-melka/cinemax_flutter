import 'package:cinemax/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.label,
    super.key,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.montserrat(
          color: whiteGrey,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: grey),
          borderRadius: BorderRadius.circular(24),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: blueAccent),
          borderRadius: BorderRadius.circular(24),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: grey),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      style: GoogleFonts.montserrat(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: grey,
      ),
    );
  }
}