import 'package:coffeeapp/core/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:coffeeapp/core/utils/exceptions/firebase_exceptions.dart';
import 'package:coffeeapp/core/utils/exceptions/platform_exceptions.dart';
import 'package:coffeeapp/features/authentication/view/signup.dart';
import 'package:coffeeapp/features/authentication/view/success_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get authUser => _auth.currentUser;

  void checkAuthStatus(BuildContext context) {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SuccessScreen()),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SignupScreen()),
        );
      }
    } else {
      final deviceStorage = GetStorage();
      deviceStorage.writeIfNull('FIRSTTIME', true);
    }
  }

  Future<UserCredential> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final user = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user;
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    } finally {}
  }
}
