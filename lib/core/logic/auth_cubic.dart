import 'package:coffeeapp/core/data/repositories/auth_repository.dart';
import 'package:coffeeapp/core/logic/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthCubitState> {
  final AuthRepository _authRepository;

  AuthCubit(this._authRepository) : super(AuthInitial());
}
