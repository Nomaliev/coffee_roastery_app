import 'package:coffeeapp/core/config/strings.dart';
import 'package:coffeeapp/features/onboarding/viewmodel/cubit.dart';
import 'package:coffeeapp/features/onboarding/viewmodel/state.dart';
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
        backgroundColor: const Color(0xFFD2D2D2),
        appBar: AppBar(
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
            padding: const EdgeInsets.all(8.0).r,
            child: Column(
              children: [
                BlocBuilder<OnboardingCubit, OnboardingCubitState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        GestureDetector(
                          onTap:
                              () => context.read<OnboardingCubit>().skip(
                                _pageController,
                              ),
                          child: Text('Keç'),
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(
                  height: 400.h,
                  child: BlocBuilder<OnboardingCubit, OnboardingCubitState>(
                    builder: (context, state) {
                      return PageView(
                        controller: _pageController,
                        onPageChanged:
                            (value) =>
                                context.read<OnboardingCubit>().setPage(value),
                        children: [
                          OnboardingPage(
                            image: 'assets/images/onboarding1.jpg',
                            title: Strings.onboardingTitle1,
                            description: Strings.onboardingDescription1,
                          ),
                          OnboardingPage(
                            image: 'assets/images/Coffee.jpg',
                            title: Strings.onboardingTitle2,
                            description: Strings.onboardingDescription2,
                          ),
                          OnboardingPage(
                            image: 'assets/images/onboarding3.png',
                            title: Strings.onboardingTitle3,
                            description: Strings.onboardingDescription3,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                BlocBuilder<OnboardingCubit, OnboardingCubitState>(
                  builder: (context, state) {
                    return state.currentIndex != 2
                        ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(),
                            BlocBuilder<OnboardingCubit, OnboardingCubitState>(
                              builder: (context, state) {
                                return OutlinedButton(
                                  onPressed:
                                      () => context
                                          .read<OnboardingCubit>()
                                          .nextPage(_pageController, context),
                                  child: Text('Sonrakı >'),
                                );
                              },
                            ),
                          ],
                        )
                        : SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Keçid et'),
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

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });
  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16).r,
      child: Column(
        spacing: 16.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          Text(title, style: Theme.of(context).textTheme.headlineLarge),
          Text(description),
        ],
      ),
    );
  }
}
