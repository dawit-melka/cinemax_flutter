import 'package:cinemax/core/colors/colors.dart';
import 'package:cinemax/screens/auth/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryDark,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 24.sp),
            child: IconButton(
              splashRadius: 24.sp,
              onPressed: () {
                context.pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 24.sp,
              ),
            ),
          ),
          title: Text(
            'Login',
            style: GoogleFonts.montserrat(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 40.h),
                const HeadingTitle(text: 'Hi, Tiffany'),
                SizedBox(height: 8.h),
                const Subtitle(text: 'Welcome back! Please enter'),
                const Subtitle(text: 'your detail'),
                SizedBox(height: 64.h),
                const CustomTextField(label: 'Email Address'),
                SizedBox(height: 24.h),
                const CustomPasswordField(),
                SizedBox(height: 8.h),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      context.push('/reset-password');
                    },
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.montserrat(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: blueAccent,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                CustomButton(
                  text: 'Login',
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
