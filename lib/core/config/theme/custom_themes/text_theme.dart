// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextTheme {
  AppTextTheme._();

  //Customizable Light Text Theme
  static TextTheme customTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0.sp,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18.0.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0.sp,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0.sp,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white.withOpacity(0.5),
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0.sp,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white.withOpacity(0.5),
    ),
  );
}
