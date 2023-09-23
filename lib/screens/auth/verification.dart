import 'package:cinemax/core/colors/colors.dart';
import 'package:cinemax/screens/auth/widgets/custom_button.dart';
import 'package:cinemax/screens/auth/widgets/heading_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDark,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
          splashRadius: 20.r,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 40.h),
          const HeadingTitle(text: 'Verify Your Account'),
          SizedBox(height: 16.h),
          Text(
            'We have just sent you 4 digit code via your ',
            style: GoogleFonts.montserrat(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: grey,
            ),
          ),
          Wrap(children: [
            Text(
              'email ',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: grey,
              ),
            ),
            Text(
              'example@gmail.com',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
              ),
            ),
          ]),
          SizedBox(height: 32.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.sp),
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              textStyle: GoogleFonts.poppins(
                fontSize: 28.sp,
                fontWeight: FontWeight.w600,
                color: white,
              ),
              enableActiveFill: true,
              pinTheme: PinTheme(
                fieldHeight: 64.h,
                fieldWidth: 64.w,
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(12.r),
                activeColor: blueAccent,
                selectedColor: blueAccent,
                inactiveColor: Colors.transparent,
                disabledColor: Colors.transparent,
                activeFillColor: primarySoftDark,
                inactiveFillColor: primarySoftDark,
                selectedFillColor: primarySoftDark,
              ),
            ),
          ),
          SizedBox(height: 64.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: CustomButton(
                text: 'Continue',
                onTap: () {
                  context.push('/new-password');
                }),
          ),
          SizedBox(height: 42.h),
          Wrap(
            children: [
              Text(
                "Didn't receive code? ",
                style: GoogleFonts.montserrat(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: grey,
                ),
              ),
              Text(
                'Resend',
                style: GoogleFonts.montserrat(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: blueAccent,
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
