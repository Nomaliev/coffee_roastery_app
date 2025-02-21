import 'package:coffeeapp/core/config/colors.dart';
import 'package:coffeeapp/core/config/strings.dart';
import 'package:coffeeapp/features/authentication/view/widgets/appbar.dart';
import 'package:coffeeapp/features/authentication/viewmodel/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LoginSignupAppBar(title: Strings.loginRegister),
      body: BlocProvider<LoginCubit>(
        create: (context) => LoginCubit(),
        child: Container(
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
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: AppColors.scaffoldBackgroundColorDark,
                        ),

                        cursorColor: AppColors.scaffoldBackgroundColorDark,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          prefixIcon: const Icon(Iconsax.password_check),
                          suffixIcon: GestureDetector(
                            onTap:
                                () => context.read<LoginCubit>().showPassword(),
                            child: const Icon(Iconsax.eye),
                          ),
                          labelText: Strings.password,
                        ),
                      ),
                      TextFormField(
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: AppColors.scaffoldBackgroundColorDark,
                        ),

                        cursorColor: AppColors.scaffoldBackgroundColorDark,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          prefixIcon: const Icon(Iconsax.password_check),
                          suffixIcon: GestureDetector(
                            onTap:
                                () => context.read<LoginCubit>().showPassword(),
                            child: const Icon(Iconsax.eye),
                          ),
                          labelText: Strings.confirmPassword,
                        ),
                      ),
                    ],
                  ),
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
        ),
      ),
    );
  }
}
