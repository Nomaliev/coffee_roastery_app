import 'package:coffeeapp/app.dart';
import 'package:coffeeapp/core/data/repositories/auth_repository.dart';
import 'package:coffeeapp/core/logic/auth_cubic.dart';
import 'package:coffeeapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  final authRepository = AuthRepository();
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(create: (context) => AuthCubit(authRepository)),
      ],
      child: const MyApp(),
    ),
  );
}
