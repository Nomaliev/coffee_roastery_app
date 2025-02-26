import 'package:coffeeapp/core/utils/constants/strings.dart';
import 'package:coffeeapp/features/authentication/view/widgets/appbar.dart';
import 'package:coffeeapp/features/authentication/view/widgets/login_form.dart';
import 'package:coffeeapp/features/authentication/viewmodel/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        child: const LoginForm(),
      ),
    );
  }
}
