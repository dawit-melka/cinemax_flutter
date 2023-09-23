import 'package:cinemax/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    this.label = 'Password',
    super.key,
  });
  final String label;
  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool passwordNotVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: passwordNotVisible,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: GoogleFonts.montserrat(
          color: whiteGrey,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: grey),
          borderRadius: BorderRadius.circular(24),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: grey),
          borderRadius: BorderRadius.circular(24),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: blueAccent),
          borderRadius: BorderRadius.circular(24),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            passwordNotVisible ? Icons.visibility_off : Icons.visibility,
            color: grey,
          ),
          onPressed: () {
            setState(() {
              passwordNotVisible = !passwordNotVisible;
            });
          },
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
