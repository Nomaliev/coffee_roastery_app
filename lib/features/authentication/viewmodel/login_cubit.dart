// class LoginCubit extends Cubit<LoginState> {
//   final AuthenticationRepository _authenticationRepository;

//   LoginCubit(this._authenticationRepository) : super(LoginState());

//   void emailChanged(String value) {
//     emit(state.copyWith(email: value));
//   }

//   void passwordChanged(String value) {
//     emit(state.copyWith(password: value));
//   }

//   void loginWithCredentials() async {
//     emit(state.copyWith(status: FormzStatus.submissionInProgress));
//     try {
//       await _authenticationRepository.loginWithCredentials(
//         email: state.email,
//         password: state.password,
//       );
//       emit(state.copyWith(status: FormzStatus.submissionSuccess));
//     } on Exception {
//       emit(state.copyWith(status: FormzStatus.submissionFailure));
//     }
//   }

// }
import 'package:coffeeapp/features/authentication/viewmodel/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit() : super(const LoginCubitState());

  void showPassword() {
    emit(LoginCubitState(showPassword: !state.showPassword));
  }
}
