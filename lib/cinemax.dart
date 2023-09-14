import 'package:cinemax/screens/auth/login_signup.dart';
import 'package:cinemax/screens/onboarding/onboarding.dart';
import 'package:cinemax/screens/onboarding/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Cinemax extends StatelessWidget {
  const Cinemax({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      navigatorKey: GlobalKey<NavigatorState>(),
      routes: [
        GoRoute(path: '/',
          builder: (context, state) => Splash(),
        ),
        GoRoute(
          path: '/onboarding',
          builder: (context, state) => const Onboarding(),
        ),
        GoRoute(
          path: '/loginsignup',
          builder: (context, state) => const LoginSignUp(),
        )
      ],
    );
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        );
      },
    );
  }
}
