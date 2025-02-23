import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthCubicState extends Equatable {
  const AuthCubicState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthCubicState {}

class AuthLoading extends AuthCubicState {}

class AuthSuccess extends AuthCubicState {
  final String message;

  const AuthSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AuthFailure extends AuthCubicState {
  final String message;

  const AuthFailure({required this.message});

  @override
  List<Object> get props => [message];
}

class AuthAuthenticated extends AuthCubicState {
  final User user;

  const AuthAuthenticated({required this.user});

  @override
  List<Object> get props => [user];
}

class AuthUnauthenticated extends AuthCubicState {}
