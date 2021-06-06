

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder/bloc/signup/bloc.dart';
import 'package:tinder/repositories/userRepository.dart';
import 'package:tinder/ui/constants.dart';
import 'package:tinder/ui/widgets/SignUpForm.dart';




class SignUp extends StatelessWidget {

  UserRepository _userRepository;
  SignUp({@required UserRepository userRepository}):assert(userRepository != null) ,
        _userRepository = userRepository;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
        backgroundColor: main_color,
        elevation: 0,
      ),


      body: BlocProvider<SignUpBloc>(
        create: (context) => SignUpBloc(userRepository: _userRepository) ,
        child:  SignUpForm(
          userRepository: _userRepository,
        ),
      ),
    );
  }
}
