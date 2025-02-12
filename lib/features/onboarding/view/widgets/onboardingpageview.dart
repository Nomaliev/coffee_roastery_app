import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
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
    return Column(
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
    );
  }
}
