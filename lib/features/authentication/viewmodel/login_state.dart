import 'package:equatable/equatable.dart';

class LoginCubitState extends Equatable {
  final bool isLoading;
  final bool isSuccess;
  final bool isFailure;
  final bool showPassword;

  const LoginCubitState({
    this.showPassword = false,
    this.isLoading = false,
    this.isSuccess = false,
    this.isFailure = false,
  });

  @override
  List<Object?> get props => [isLoading, isSuccess, isFailure, showPassword];
}
