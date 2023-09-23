import 'package:cinemax/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingTitle extends StatelessWidget {
  const HeadingTitle({
    required this.text,
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: white),
    );
  }
}