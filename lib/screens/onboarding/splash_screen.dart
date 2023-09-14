import 'dart:async';

import 'package:cinemax/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      context.go('/onboarding');
     });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDark,
      body: Center(
        child: SizedBox(
          height: 138.h,
          width: 138.w,
          child: const Image(
            image: AssetImage('assets/images/cinemax.png'),
          ),
        ),
      ),
    );
  }
}
