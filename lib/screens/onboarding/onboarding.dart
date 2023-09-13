import 'package:cinemax/core/colors/colors.dart';
import 'package:cinemax/screens/onboarding/widgets/description.dart';
import 'package:cinemax/screens/onboarding/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<Widget> _pages = [
    const Description(
      title: 'The biggest international and local film streaming',
      description:
          'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient.',
    ),
    const Description(
      title: 'Offers ad-free viewing of high quality',
      description:
          'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient.',
    ),
    const Description(
      title: 'Our service brings together your favorite series',
      description:
          'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient.',
    )
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDark,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/movies$_currentPage.png',
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            const Spacer(),
            SizedBox(
              height: 339.h,
              width: 315.55.w,
              child: ClipRRect(
                child: Image.asset('assets/images/girl$_currentPage.png'),
              ),
            ),
            SizedBox(height: 50.h),
            Container(
              padding: const EdgeInsets.all(32),
              height: 341.h,
              width: 327.w,
              decoration: BoxDecoration(
                color: dark,
                borderRadius: BorderRadius.circular(32.r),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: _pages.length,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      itemBuilder: (context, index) => _pages[index],
                    ),
                  ),
                  //     SizedBox(height: 40.h),
                  SliderAndButton(
                    pageController: _pageController,
                    pages: _pages,
                    currentPage: _currentPage,
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}

