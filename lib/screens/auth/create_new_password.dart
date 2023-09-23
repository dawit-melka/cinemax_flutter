import 'package:cinemax/core/colors/colors.dart';
import 'package:cinemax/screens/auth/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryDark,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            splashRadius: 24.sp,
            icon: Icon(
              Icons.arrow_back_ios,
              size: 24.sp,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 40.h),
                const HeadingTitle(text: 'Create New Password'),
                SizedBox(height: 8.h),
                Text(
                  'Enter your new password',
                  style: GoogleFonts.montserrat(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: grey,
                  ),
                ),
                SizedBox(height: 48.h),
                const CustomPasswordField(label: 'New Password'),
                SizedBox(height: 24.h),
                const CustomPasswordField(label: 'Confirm Password'),
                SizedBox(height: 40.h),
                CustomButton(
                  text: 'Reset',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
