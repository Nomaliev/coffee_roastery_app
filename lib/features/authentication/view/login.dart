import 'package:coffeeapp/core/config/colors.dart';
import 'package:coffeeapp/core/config/strings.dart';
import 'package:coffeeapp/features/authentication/viewmodel/login_cubit.dart';
import 'package:coffeeapp/features/authentication/viewmodel/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LoginSignupAppBar(
        title: Strings.loginTitle,
        subTitle: Strings.loginDescription,
      ),
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
                    children: [
                      TextFormField(
                        cursorColor: AppColors.scaffoldBackgroundColorDark,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Iconsax.sms),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      BlocBuilder<LoginCubit, LoginCubitState>(
                        builder: (context, state) {
                          return TextFormField(
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.apply(
                              color: AppColors.scaffoldBackgroundColorDark,
                            ),
                            obscureText: !state.showPassword,
                            cursorColor: AppColors.scaffoldBackgroundColorDark,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Iconsax.password_check),
                              suffixIcon: GestureDetector(
                                onTap:
                                    () =>
                                        context
                                            .read<LoginCubit>()
                                            .showPassword(),
                                child: Icon(
                                  state.showPassword
                                      ? Iconsax.eye
                                      : Iconsax.eye_slash,
                                ),
                              ),
                              labelText: 'Şifrə',
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
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Hesabınız yoxdur ?',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall!.apply(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Qeydiyyatdan Keç',
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

class LoginSignupAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoginSignupAppBar({super.key, required this.title, this.subTitle});
  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 150.h,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineLarge),
          if (subTitle != null)
            Text(subTitle!, style: Theme.of(context).textTheme.headlineMedium),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(150.h);
}
