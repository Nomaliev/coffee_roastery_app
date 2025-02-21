import 'package:coffeeapp/core/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

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
        child: Padding(
          padding: EdgeInsets.only(top: 70.h, right: 24.w, left: 24.w),
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      cursorColor: AppColors.scaffoldBackgroundColorDark,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Iconsax.sms),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    TextFormField(
                      cursorColor: AppColors.scaffoldBackgroundColorDark,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Iconsax.password_check),
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: const Icon(Iconsax.eye),
                        ),
                        labelText: 'Şifrə',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Şifrənizi unutmusunuz ?',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.apply(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Daxil ol'),
                ),
              ),
              Row(
                children: [
                  Text('Hesabınız yoxdur ?'),
                  GestureDetector(
                    onTap: () {},
                    child: Text('Qeydiyyatdan Keç'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
