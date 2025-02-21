import 'package:coffeeapp/core/utils/constants/colors.dart';
import 'package:coffeeapp/core/utils/constants/strings.dart';
import 'package:coffeeapp/features/authentication/view/forget_password.dart';
import 'package:coffeeapp/features/authentication/view/signup.dart';
import 'package:coffeeapp/features/authentication/viewmodel/login_cubit.dart';
import 'package:coffeeapp/features/authentication/viewmodel/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      labelText: Strings.email,
                      prefixIcon: Icon(Iconsax.sms),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  BlocBuilder<LoginCubit, LoginCubitState>(
                    builder: (context, state) {
                      return TextFormField(
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: AppColors.scaffoldBackgroundColorDark,
                        ),
                        obscureText: !state.showPassword,
                        cursorColor: AppColors.scaffoldBackgroundColorDark,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Iconsax.password_check),
                          suffixIcon: GestureDetector(
                            onTap:
                                () => context.read<LoginCubit>().showPassword(),
                            child: Icon(
                              state.showPassword
                                  ? Iconsax.eye
                                  : Iconsax.eye_slash,
                            ),
                          ),
                          labelText: Strings.password,
                        ),
                      );
                    },
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
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetPasswordScreen(),
                        ),
                      ),
                  child: Text(
                    Strings.loginForgetPassword,
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
                child: const Text(Strings.loginButton),
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  Strings.loginNoAccount,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall!.apply(color: Colors.grey),
                ),
                GestureDetector(
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      ),
                  child: Text(
                    Strings.loginRegister,
                    style: Theme.of(context).textTheme.titleLarge!.apply(
                      color: AppColors.scaffoldBackgroundColorDark,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
