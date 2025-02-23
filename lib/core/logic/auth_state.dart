import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthCubitState extends Equatable {
  const AuthCubitState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthCubitState {}

class AuthLoading extends AuthCubitState {
  final bool isLoading;

  const AuthLoading({required this.isLoading});

  @override
  List<Object> get props => [isLoading];
}

class AuthSuccess extends AuthCubitState {
  final String message;

  const AuthSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AuthFailure extends AuthCubitState {
  final String message;

  const AuthFailure({required this.message});

  @override
  List<Object> get props => [message];
}

class AuthAuthenticated extends AuthCubitState {
  final User user;

  const AuthAuthenticated({required this.user});

  @override
  List<Object> get props => [user];
}

class AuthUnauthenticated extends AuthCubitState {}
