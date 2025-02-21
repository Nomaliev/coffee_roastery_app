import 'package:coffeeapp/core/config/colors.dart';
import 'package:flutter/material.dart';

class AppTextFieldTheme {
  //Light Theme
  static InputDecorationTheme lightTextFieldTheme = const InputDecorationTheme(
    labelStyle: TextStyle(color: Colors.grey),
    errorMaxLines: 3,
    prefixIconColor: AppColors.scaffoldBackgroundColorDark,
    suffixIconColor: AppColors.scaffoldBackgroundColorDark,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.scaffoldBackgroundColorDark),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.scaffoldBackgroundColorDark),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.scaffoldBackgroundColorDark),
    ),
  );

  //Dark Theme
  static InputDecorationTheme darkTextFieldTheme = const InputDecorationTheme(
    floatingLabelStyle: TextStyle(color: Colors.grey),
    contentPadding: EdgeInsets.zero,
    errorMaxLines: 2,
    prefixIconColor: AppColors.scaffoldBackgroundColorDark,
    suffixIconColor: AppColors.scaffoldBackgroundColorDark,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.scaffoldBackgroundColorDark),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.scaffoldBackgroundColorDark),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.scaffoldBackgroundColorDark),
    ),
  );
}
