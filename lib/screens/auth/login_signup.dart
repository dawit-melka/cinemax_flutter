import 'package:cinemax/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSignUp extends StatelessWidget {
  const LoginSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDark,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100.h),
              Image(
                image: AssetImage('assets/images/cn.png'),
                height: 88.h,
                width: 88.w,
              ),
              SizedBox(height: 24.h),
              Text(
                'CINEMAX',
                style: GoogleFonts.montserrat(
                  color: white,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Enter your registered',
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: grey,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Phone Number to Sign Up',
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 64.h),
              InkWell(
                radius: 32.r,
                onTap: () {
                  context.push('/onboarding');
                },
                child: Container(
                  height: 56.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.r),
                    color: blueAccent,
                  ),
                  child: Center(
                    child: Text(
                      'Sign UP',
                      style: GoogleFonts.montserrat(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 34.h),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      ' Login',
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: blueAccent,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w),
                child: Row(
                  children: [
                    const Expanded(
                        child: Divider(
                      color: grey,
                    )),
                    Expanded(
                      flex: 2,
                      child: Text(
                        ' Or Sign up with ',
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Expanded(
                        child: Divider(
                      color: grey,
                    )),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 20.w),
                  Container(
                    height: 69.h,
                    width: 69.w,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: white,
                    ),
                    child: Image(
                      image: const AssetImage('assets/images/google.png'),
                      height: 24.sp,
                      width: 24.sp,
                    ),
                  ),
                  Container(
                    height: 69.h,
                    width: 69.w,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: softDark,
                    ),
                    child: Image(
                      image: const AssetImage('assets/images/apple.png'),
                      height: 24.sp,
                      width: 24.sp,
                    ),
                  ),
                  Container(
                    height: 69.h,
                    width: 69.w,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: facebookColor,
                    ),
                    child: Image(
                      image: const AssetImage('assets/images/facebook.png'),
                      height: 24.sp,
                      width: 24.sp,
                    ),
                  ),
                  SizedBox(width: 20.w),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
