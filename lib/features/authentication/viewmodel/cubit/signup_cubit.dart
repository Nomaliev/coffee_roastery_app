import 'package:coffeeapp/features/authentication/viewmodel/cubit/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupCubitState> {
  SignupCubit() : super(const SignupCubitState());

  void showPassword() {
    emit(SignupCubitState(showPassword: !state.showPassword));
  }

  void showConfirmPassword() {
    emit(SignupCubitState(showConfirmPassword: !state.showConfirmPassword));
  }
}
