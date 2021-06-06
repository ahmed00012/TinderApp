import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder/bloc/authentication/authentication/authentication_bloc.dart';
import 'package:tinder/bloc/authentication/authentication/authentication_event.dart';
import 'package:tinder/bloc/authentication/authentication/authentication_state.dart';
import 'package:tinder/repositories/userRepository.dart';
import 'package:tinder/ui/pages/SignUp.dart';
import 'package:tinder/ui/pages/profile.dart';
import 'package:tinder/ui/pages/splash.dart';
import 'package:tinder/ui/widgets/Tabs.dart';

import 'login.dart';

class Home extends StatelessWidget {
  final UserRepository _userRepository = UserRepository() ;

  // Home({@required UserRepository userRepository})
  //     : assert(userRepository != null),
  //       _userRepository = userRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is Uninitialized) {
            return Splash();
          }
          if (state is Authenticated) {
            return Tabs(
              userId: state.userId,
            );
          }
          if (state is AuthenticatedButNotSet) {
            print(state.userId);
            return Profile(
              userRepository: _userRepository,
              userId: state.userId,
            );
          }
          if (state is Unauthenticated) {
            return Login(
              userRepository: _userRepository,
            );
          } else
            return Container();
        },
      ),
    );
  }
}