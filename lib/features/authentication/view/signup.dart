import 'package:coffeeapp/core/utils/constants/strings.dart';
import 'package:coffeeapp/features/authentication/view/widgets/appbar.dart';
import 'package:coffeeapp/features/authentication/view/widgets/signup_form.dart';
import 'package:coffeeapp/features/authentication/viewmodel/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LoginSignupAppBar(title: Strings.loginRegister),
      body: BlocProvider<SignupCubit>(
        create: (context) => SignupCubit(),
        child: const SignupForm(),
      ),
    );
  }
}
