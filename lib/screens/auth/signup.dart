import 'package:cinemax/core/colors/colors.dart';
import 'package:cinemax/screens/auth/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
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
              splashRadius: 20.sp,
              onPressed: () {context.pop();},
              icon: Icon(
                Icons.arrow_back_ios,
                size: 24.sp,
              ),
            ),
          ),
          title: Text(
            'Sign Up',
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
                const HeadingTitle(text: "Let's get started"),
                SizedBox(height: 8.h),
                const Subtitle(text: 'The latest movies and series'),
                const Subtitle(text: 'are here'),
                SizedBox(height: 64.h),
                const CustomTextField(label: 'Full Name'),
                SizedBox(height: 24.h),
                const CustomTextField(label: 'Email Address'),
                SizedBox(height: 24.h),
                const CustomPasswordField(),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: Theme(
                        data: ThemeData(
                          unselectedWidgetColor: grey,
                        ),
                        child: Checkbox(
                          activeColor:blueAccent,
                          value: isChecked,
                          onChanged: (value) {
                            setState(
                              () {
                                isChecked = value!;
                              },
                            );
                          },
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: white),
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            Text(
                              'I agree to the ',
                              style: GoogleFonts.montserrat(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: grey,
                              ),
                            ),
                            Text(
                              'Terms and Services',
                              style: GoogleFonts.montserrat(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: blueAccent,
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          children: [
                            Text(
                              'and ',
                              style: GoogleFonts.montserrat(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: grey,
                              ),
                            ),
                            Text(
                              'Privacy Policy',
                              style: GoogleFonts.montserrat(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: blueAccent,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 40.h),
                CustomButton(text: 'Sign Up', onTap: (){},),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
