import 'package:coffeeapp/core/config/colors.dart';
import 'package:coffeeapp/core/config/strings.dart';
import 'package:coffeeapp/features/authentication/view/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24).r,
        child: Column(
          children: [
            Icon(
              Icons.done,
              size: 200.h,
              color: AppColors.scaffoldBackgroundColorDark,
            ),
            Text(
              Strings.successTitle,
              style: Theme.of(
                context,
              ).textTheme.headlineLarge!.apply(color: Colors.black),
            ),
            Text(
              Strings.successDescription,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.apply(color: Colors.black),
            ),
            SizedBox(height: 200.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed:
                    () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    ),
                child: Text(
                  Strings.sendLink,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
