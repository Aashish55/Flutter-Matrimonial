import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthenticationUninitialized extends AuthenticationState {}

class AuthenticationAuthenticated extends AuthenticationState {}

class AuthenticationAuthenticate extends AuthenticationState {}

class AuthenticationUnauthenticated extends AuthenticationState {}

class SignUpFinished extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}

class AuthenticationSignUp extends AuthenticationState {}

class AuthenticationLogin extends AuthenticationState {}
