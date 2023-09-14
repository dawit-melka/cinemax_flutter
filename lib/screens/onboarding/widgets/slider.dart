import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/colors/colors.dart';

class SliderAndButton extends StatelessWidget {
  const SliderAndButton({
    required PageController pageController,
    required List<Widget> pages,
    required int currentPage,
    super.key,
  })  : _pageController = pageController,
        _pages = pages,
        _currentPage = currentPage;

  final PageController _pageController;
  final List<Widget> _pages;
  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SmoothPageIndicator(
          controller: _pageController,
          count: _pages.length,
          effect: ExpandingDotsEffect(
            expansionFactor: 3.w,
            spacing: 12.w,
            radius: 10.r,
            dotWidth: 10.w,
            dotHeight: 10.h,
            dotColor: blueSecondary,
            activeDotColor: blueAccent,
          ),
        ),
        InkWell(
          onTap: () {
            if (_currentPage < _pages.length - 1) {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } else {
              context.go('/loginsignup');
            }
          },
          child: Container(
            height: 80.h,
            width: 80.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Icon.png'),
                fit: BoxFit.contain,
              ),
            ),
            child: const Icon(
              Icons.arrow_forward_ios,
              color: dark,
            ),
          ),
        ),
      ],
    );
  }
}
