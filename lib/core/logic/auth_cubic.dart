import 'package:coffeeapp/core/logic/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

class AuthCubit extends Cubit<AuthCubicState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthCubit() : super(AuthInitial());

  User? get authUser => _auth.currentUser;

  void checkAuthStatus() {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        emit(AuthAuthenticated(user: user));
      } else {
        emit(AuthUnauthenticated());
      }
    } else {
      final deviceStorage = GetStorage();
      deviceStorage.writeIfNull('FIRSTTIME', true);
      emit(AuthUnauthenticated());
    }
  }
}
