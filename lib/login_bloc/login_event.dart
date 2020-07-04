import 'dart:io';

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginButtonPressed extends LoginEvent {
  final String token;
  LoginButtonPressed({
    @required this.token,
  });
}

class ErrorButton extends LoginEvent {}

class FirstEvent extends LoginEvent {}

class SignUpButtonPressed extends LoginEvent {
  final String password;
  final String email;
  SignUpButtonPressed({
    @required this.email,
    @required this.password,
  });
}

class GoogleSignInPressed extends LoginEvent {
  final String token;

  GoogleSignInPressed({this.token});
}

class FacebookSignInPressed extends LoginEvent {
  final String token;

  FacebookSignInPressed({this.token});
}
