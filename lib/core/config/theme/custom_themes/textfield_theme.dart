import 'package:coffeeapp/core/config/colors.dart';
import 'package:flutter/material.dart';

class AppTextFieldTheme {
  //Light Theme
  static InputDecorationTheme lightTextFieldTheme = InputDecorationTheme(
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
    floatingLabelBehavior: FloatingLabelBehavior.never,
  );

  //Dark Theme
  static InputDecorationTheme darkTextFieldTheme = InputDecorationTheme(
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
    floatingLabelBehavior: FloatingLabelBehavior.never,
  );
}
