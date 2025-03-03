import 'package:coffeeapp/core/utils/constants/colors.dart';
import 'package:coffeeapp/features/authentication/view/login.dart';
import 'package:coffeeapp/features/onboarding/model/onboarding_page_model.dart';
import 'package:coffeeapp/features/onboarding/view/widgets/onboardingpages.dart';
import 'package:coffeeapp/features/onboarding/viewmodel/onboarding_cubit.dart';
import 'package:coffeeapp/features/onboarding/viewmodel/onboarding_state.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocProvider<OnboardingCubit>(
      create: (context) => OnboardingCubit(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 10.h,

          centerTitle: true,
          title: BlocBuilder<OnboardingCubit, OnboardingCubitState>(
            builder: (context, state) {
              return DotsIndicator(
                position: context.read<OnboardingCubit>().state.currentIndex,
                dotsCount: 3,
                decorator: DotsDecorator(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  activeSize: Size(width / 4, 8.0),
                  size: Size(width / 4, 8.0),
                  activeColor: Colors.brown,
                ),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0).r,
            child: Column(
              children: [
                BlocBuilder<OnboardingCubit, OnboardingCubitState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        state.currentIndex != 2
                            ? SizedBox(
                              height: 35.h,
                              child: GestureDetector(
                                onTap:
                                    () => context.read<OnboardingCubit>().skip(
                                      _pageController,
                                    ),
                                child: Text(
                                  'Keç',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                            )
                            : SizedBox(height: 35.h),
                      ],
                    );
                  },
                ),
                SizedBox(height: 20.h),
                BlocBuilder<OnboardingCubit, OnboardingCubitState>(
                  builder: (context, state) {
                    return OnboardingPages(
                      pageController: _pageController,
                      pages: OnboardingPageModel.pages(),
                    );
                  },
                ),
                BlocBuilder<OnboardingCubit, OnboardingCubitState>(
                  builder: (context, state) {
                    return state.currentIndex != 2
                        ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            BlocBuilder<OnboardingCubit, OnboardingCubitState>(
                              builder: (context, state) {
                                return OutlinedButton(
                                  onPressed:
                                      () => context
                                          .read<OnboardingCubit>()
                                          .nextPage(_pageController, context),
                                  child: Text(
                                    'Sonrakı >',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                        : SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed:
                                () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                ),
                            child: Text(
                              'Keçid et',
                              style: Theme.of(
                                context,
                              ).textTheme.titleLarge!.apply(
                                color: AppColors.scaffoldBackgroundColorDark,
                              ),
                            ),
                          ),
                        );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
