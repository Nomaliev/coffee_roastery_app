import 'package:coffeeapp/core/utils/constants/colors.dart';
import 'package:coffeeapp/core/utils/constants/strings.dart';
import 'package:coffeeapp/features/authentication/viewmodel/cubit/signup_cubit.dart';
import 'package:coffeeapp/features/authentication/viewmodel/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

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
            BlocBuilder<SignupCubit, SignupCubitState>(
              builder: (context, state) {
                return Form(
                  child: Column(
                    spacing: 16.h,
                    children: [
                      TextFormField(
                        cursorColor: AppColors.scaffoldBackgroundColorDark,
                        decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: Strings.signupNameAndSurname,
                          prefixIcon: Icon(Iconsax.user),
                        ),
                      ),
                      TextFormField(
                        cursorColor: AppColors.scaffoldBackgroundColorDark,
                        decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: Strings.email,
                          prefixIcon: Icon(Iconsax.sms),
                        ),
                      ),

                      TextFormField(
                        obscureText: !state.showPassword,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: AppColors.scaffoldBackgroundColorDark,
                        ),

                        cursorColor: AppColors.scaffoldBackgroundColorDark,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          prefixIcon: const Icon(Iconsax.password_check),
                          suffixIcon: GestureDetector(
                            onTap:
                                () =>
                                    context.read<SignupCubit>().showPassword(),
                            child: Icon(
                              state.showPassword
                                  ? Iconsax.eye
                                  : Iconsax.eye_slash,
                            ),
                          ),
                          labelText: Strings.password,
                        ),
                      ),
                      TextFormField(
                        obscureText: !state.showConfirmPassword,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: AppColors.scaffoldBackgroundColorDark,
                        ),

                        cursorColor: AppColors.scaffoldBackgroundColorDark,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          prefixIcon: const Icon(Iconsax.password_check),
                          suffixIcon: GestureDetector(
                            onTap:
                                () =>
                                    context
                                        .read<SignupCubit>()
                                        .showConfirmPassword(),
                            child: Icon(
                              state.showConfirmPassword
                                  ? Iconsax.eye
                                  : Iconsax.eye_slash,
                            ),
                          ),
                          labelText: Strings.confirmPassword,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 32.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  Strings.loginRegister,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  Strings.alreadyHaveAccount,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall!.apply(color: Colors.grey),
                ),
                SizedBox(width: 4.w),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    Strings.loginButton,
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
