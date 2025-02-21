import 'package:coffeeapp/core/utils/constants/strings.dart';
import 'package:coffeeapp/features/onboarding/view/widgets/onboardingpageview.dart';
import 'package:flutter/widgets.dart';

class OnboardingPageModel {
  final String title;
  final String description;
  final String imagePath;

  OnboardingPageModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  static List<Widget> pages() {
    return [
      const OnboardingPageView(
        title: Strings.onboardingTitle1,
        description: Strings.onboardingDescription1,
        image: Strings.onboardingImage1,
      ),
      const OnboardingPageView(
        title: Strings.onboardingTitle2,
        description: Strings.onboardingDescription2,
        image: Strings.onboardingImage2,
      ),
      const OnboardingPageView(
        title: Strings.onboardingTitle3,
        description: Strings.onboardingDescription3,
        image: Strings.onboardingImage3,
      ),
    ];
  }
}
