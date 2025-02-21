import 'package:coffeeapp/features/onboarding/viewmodel/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPages extends StatelessWidget {
  const OnboardingPages({
    super.key,
    required PageController pageController,
    required this.pages,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450.h,
      child: PageView(
        controller: _pageController,
        onPageChanged:
            (value) => context.read<OnboardingCubit>().setPage(value),
        children: pages,
      ),
    );
  }
}
