import 'package:coffeeapp/core/config/colors.dart';
import 'package:coffeeapp/core/config/strings.dart';
import 'package:coffeeapp/features/authentication/view/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          Strings.resetPassword,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.apply(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24).r,
        child: Column(
          children: [
            Image.asset(Strings.forgetPasswordImage, height: 150.h),
            Text(
              Strings.resetPasswordTitle,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.apply(color: Colors.black),
            ),
            Text(
              Strings.resetPasswordDescription,
              style: Theme.of(
                context,
              ).textTheme.labelLarge!.apply(color: Colors.black),
            ),
            SizedBox(height: 16.h),
            Form(
              child: TextFormField(
                cursorColor: AppColors.scaffoldBackgroundColorDark,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    borderSide: const BorderSide(color: Colors.black),
                  ),

                  labelText: Strings.email,
                  prefixIcon: const Icon(Iconsax.sms),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SuccessScreen(),
                    ),
                  );
                },
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
