import 'package:coffeeapp/app.dart';
import 'package:coffeeapp/core/data/repositories/auth_repository.dart';
import 'package:coffeeapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await GetStorage.init();
  final authRepository = AuthRepository();
  runApp(
    MultiBlocProvider(
      providers: [
        // BlocProvider<LoginCubit>(
        //   create: (context) => LoginCubit(authRepository),
        // ),
      ],
      child: const MyApp(),
    ),
  );
}
