import 'package:coffeeapp/core/utils/constants/colors.dart';
import 'package:coffeeapp/core/config/theme/custom_themes/appbar_theme.dart';
import 'package:coffeeapp/core/config/theme/custom_themes/elevated_button_theme.dart';
import 'package:coffeeapp/core/config/theme/custom_themes/text_theme.dart';
import 'package:coffeeapp/core/config/theme/custom_themes/textfield_theme.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData customTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: AppTextTheme.customTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColorDark,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    inputDecorationTheme: AppTextFieldTheme.lightTextFieldTheme,
  );

  // static ThemeData darkTheme = ThemeData(
  //   useMaterial3: true,
  //   brightness: Brightness.dark,
  //   textTheme: AppTextTheme.customTextTheme,
  //   elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
  //   scaffoldBackgroundColor: AppColors.scaffoldBackgroundColorDark,
  //   appBarTheme: AppAppBarTheme.darkAppBarTheme,
  //   inputDecorationTheme: AppTextFieldTheme.darkTextFieldTheme,
  // );
}
