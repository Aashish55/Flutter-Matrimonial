import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFailure extends LoginState {
  final String error;

  LoginFailure({@required this.error});
}

class SignUpInitial extends LoginState {}

class SignUpLoading extends LoginState {}

class SignUpFailure extends LoginState {
  final String error;

  SignUpFailure({@required this.error});
}
