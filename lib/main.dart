import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder/bloc/blocDelegate.dart';
import 'package:tinder/repositories/userRepository.dart';
import 'package:tinder/ui/pages/home.dart';
import 'package:tinder/ui/pages/splash.dart';

import 'bloc/authentication/authentication/bolc.dart';

// Future<void> main() async {
//
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   BlocSupervisor.delegate = SimpleBlocDelegate();
//   runApp(Home());
// }


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final UserRepository _userRepository = UserRepository();

  BlocSupervisor.delegate = SimpleBlocDelegate();

  runApp(BlocProvider(
      create: (context) => AuthenticationBloc(userRepository: _userRepository)
        ..add(AppStarted()),
      child: Home()));
}