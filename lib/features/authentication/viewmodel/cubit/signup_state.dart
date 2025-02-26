import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupCubitState extends Equatable {
  final bool isLoading;
  final bool isSuccess;
  final bool isFailure;
  final bool showPassword;
  final bool showConfirmPassword;
  final User? user;

  const SignupCubitState({
    this.user,

    this.showConfirmPassword = false,
    this.showPassword = false,
    this.isLoading = false,
    this.isSuccess = false,
    this.isFailure = false,
  });

  @override
  List<Object?> get props => [
    isLoading,
    isSuccess,
    isFailure,
    showPassword,
    showConfirmPassword,
  ];
}
