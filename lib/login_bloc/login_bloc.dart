import 'dart:async';

import 'package:gathabandhan/user_repository.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'package:gathabandhan/authentication/authentication.dart';
import 'package:gathabandhan/login_bloc/login.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({
    @required this.userRepository,
    @required this.authenticationBloc,
  })  : assert(userRepository != null),
        assert(authenticationBloc != null);

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();
      String tokenId;
      try {
        tokenId = await userRepository.getToken(idToken: event.token);
        if (tokenId != null) {
          authenticationBloc.add(LoggedIn(token: tokenId));
          yield LoginInitial();
        }
      } catch (error) {
        print(error);
        yield LoginFailure(error: error.toString());
      }
    }

    if (event is ErrorButton) {
      yield SignUpInitial();
    }
    if (event is FirstEvent) {
      yield SignUpLoading();
    }
    if (event is SignUpButtonPressed) {
      yield SignUpLoading();
      try {
        await userRepository.signUp(
          email: event.email,
          password: event.password,
        );

        authenticationBloc.add(SignedUp());
      } catch (error) {
        yield SignUpFailure(error: error.toString());
      }
    }
  }
}
