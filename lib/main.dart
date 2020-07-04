import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gathabandhan/authentication/authentication.dart';
import 'package:gathabandhan/bloc_delegate.dart';
import 'package:gathabandhan/landingPage.dart';
import 'package:gathabandhan/login_bloc/login.dart';
import 'package:gathabandhan/login_bloc/signup_page.dart';
import 'package:gathabandhan/searchPeoplePage.dart';
import 'package:gathabandhan/user_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final UserRepository userRepository = UserRepository();
  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(userRepository: userRepository)
          ..add(AppStarted());
      },
      child: App(userRepository: userRepository),
    ),
  );
}

class App extends StatefulWidget {
  final UserRepository userRepository;

  App({Key key, @required this.userRepository}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _App();
  }
}

class _App extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GathaBandhan',
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationUninitialized) {
            return LoginPage(userRepository: widget.userRepository);
          }
          if (state is AuthenticationAuthenticated) {
            return SearchPeoplePage();
          }
          if (state is AuthenticationAuthenticate) {
            return SearchPeoplePage();
          }
          if (state is AuthenticationSignUp) {
            return SignUpPage(userRepository: widget.userRepository);
          }
          if (state is AuthenticationUnauthenticated) {
            return LoginPage(userRepository: widget.userRepository);
          }
          if (state is AuthenticationLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return LandingPage();
        },
      ),
    );
  }
}
