import 'package:cinemax/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  const Description({
    required this.title,
    required this.description,
    super.key,
  });
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: white,
          ),
        ),
        SizedBox(height: 14.h),
        Text(
          description,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            color: grey,
            fontSize: 14.5.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
