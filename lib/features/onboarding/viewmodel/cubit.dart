import 'package:coffeeapp/features/onboarding/view/onboarding.dart';
import 'package:coffeeapp/features/onboarding/viewmodel/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<OnboardingCubitState> {
  OnboardingCubit() : super(OnboardingCubitState());

  void setPage(int index) {
    emit(OnboardingCubitState(currentIndex: index));
  }

  void skip(PageController pageController) {
    pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void nextPage(PageController pageController, BuildContext context) {
    pageController.page != 2
        ? pageController.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        )
        : Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => OnboardingScreen()),
        );
  }
}
