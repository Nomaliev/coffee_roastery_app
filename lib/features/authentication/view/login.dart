import 'package:coffeeapp/core/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150.h,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Xoş Gəlmisiniz !',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              'Zəhmət olmasa daxil olun',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.r),
            topRight: Radius.circular(50.r),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70.h, right: 24.w, left: 24.w),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      cursorColor: AppColors.scaffoldBackgroundColorDark,
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                    TextFormField(
                      cursorColor: AppColors.scaffoldBackgroundColorDark,
                      decoration: InputDecoration(
                        labelText: 'Şifrə',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
