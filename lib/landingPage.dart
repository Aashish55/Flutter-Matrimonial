import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:gathabandhan/authentication/authentication.dart';
import 'package:gathabandhan/login_bloc/login.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class LandingPage extends StatefulWidget {
  final bool loginPressed;
  final bool signUpPressed;
  final LoginBloc loginBloc;
  final AuthenticationBloc authenticationBloc;

  LandingPage(
      {Key key,
      this.loginPressed,
      this.signUpPressed,
      this.authenticationBloc,
      this.loginBloc})
      : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool loginPress = false;
  bool signUpPress = false;
  LoginBloc get _loginBloc => widget.loginBloc;
  AuthenticationBloc get _authenticationBloc => widget.authenticationBloc;
  GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(debugLabel: '_LandingPageState');
  GlobalKey<FormState> _signUpFormKey =
      GlobalKey<FormState>(debugLabel: '_LandingPageState');
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _confirmController = new TextEditingController();
  OverlayEntry overlayEntry;
  @override
  void initState() {
    setState(() {
      loginPress = widget.loginPressed;
      signUpPress = widget.signUpPressed;
    });

    super.initState();
  }

  showOverlay(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(
        builder: (context) => Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.transparent,
              boxShadow: [
                BoxShadow(color: const Color(0x29000000), blurRadius: 100)
              ],
            ),
            child: Center(
              child: RefreshProgressIndicator(),
            )));

    overlayState.insert(overlayEntry);
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  String pwdValidator(String value) {
    if (value.length < 6) {
      return 'Password must be longer than 6 characters';
    } else {
      return null;
    }
  }

  String confirmValidator(String value) {
    if (value.compareTo(_passwordController.text) < 0) {
      return 'Password doesnot match.';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    double circleWidth = -(MediaQuery.of(context).size.width);
    if (loginPress) {
      _onWidgetDidBuild(() {
        loginForm();
      });
    }
    if (signUpPress) {
      _onWidgetDidBuild(() {
        _settingModalBottomSheetForSignup();
      });
    }

    return BlocBuilder<LoginBloc, LoginState>(
        bloc: _loginBloc,
        builder: (
          BuildContext context,
          LoginState state,
        ) {
          if (state is LoginFailure) {
            _onWidgetDidBuild(() {
              overlayEntry.remove();
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('An Error Occurred!'),
                    content: Text("${state.error}"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('Okay'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          _loginBloc.add(ErrorButton());
                        },
                      )
                    ],
                  );
                },
              );
            });
          }
          if (state is SignUpFailure) {
            _onWidgetDidBuild(() {
              overlayEntry.remove();
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('An Error Occurred!'),
                    content: Text("${state.error}"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('Okay'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          _loginBloc.add(ErrorButton());
                        },
                      )
                    ],
                  );
                },
              );
            });
          }
          return Scaffold(
              body: Stack(children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: true,
                autoplayDuration: const Duration(seconds: 3),
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 6.0,
                dotIncreasedColor: Colors.redAccent,
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 190.0,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                images: [
                  AssetImage(
                    'assets/love1.jpg',
                  ),
                  AssetImage('assets/love2.jpg'),
                  AssetImage('assets/love3.jpg'),
                ],
              ),
            ),
            Positioned(
              bottom: circleWidth / 2,
              child: Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(255, 77, 77, 0.6),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      color: Colors.redAccent,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        _settingModalBottomSheetForSignup();
                      },
                      child: Text(
                        "Signup",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {
                        loginForm();
                      },
                      child: Text(
                        "Login",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Read our Terms & Conditions",
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]));
        });
  }

  Future<Null> _emailLogin() async {
    String errorMessage;

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);

      _auth
          .currentUser()
          .then((value) => value.getIdToken().then((token) async {
                _loginBloc.add(LoginButtonPressed(token: token.token));
              }));
    } catch (error) {
      switch (error.code) {
        case "ERROR_INVALID_EMAIL":
          errorMessage = "Your email address appears to be malformed.";
          break;
        case "ERROR_WRONG_PASSWORD":
          errorMessage = "Your password is wrong.";
          break;
        case "ERROR_USER_NOT_FOUND":
          errorMessage = "User with this email doesn't exist.";
          break;
        case "ERROR_USER_DISABLED":
          errorMessage = "User with this email has been disabled.";
          break;
        case "ERROR_TOO_MANY_REQUESTS":
          errorMessage = "Too many requests. Try again later.";
          break;
        case "ERROR_OPERATION_NOT_ALLOWED":
          errorMessage = "Signing in with Email and Password is not enabled.";
          break;
        default:
          errorMessage = "An undefined Error happened.";
      }
    }

    if (errorMessage != null) {
      overlayEntry.remove();
      _showMessage(errorMessage);
    }
  }

  void _showMessage(String message) {
    _onWidgetDidBuild(() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('An Error Occurred!'),
            content: Text(message),
            actions: <Widget>[
              FlatButton(
                child: Text('Okay'),
                onPressed: () {
                  Navigator.of(context).pop();
                  _loginBloc.add(ErrorButton());
                },
              )
            ],
          );
        },
      );
    });
  }

  void _onWidgetDidBuild(Function callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }

  void loginForm() {
    showBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (_) {
          return SingleChildScrollView(
              child: ClipPath(
            clipper: OvalTopBorderClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
              color: Colors.redAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: new TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 34.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Email",
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          TextFormField(
                            controller: _emailController,
                            validator: emailValidator,
                            style: new TextStyle(
                                fontSize: 16.0, color: Colors.white),
                            decoration: new InputDecoration(
                              filled: true,
                              fillColor: Color(0xffde7474),
                              hintText: 'johndoe@mail.com',
                              hintStyle: new TextStyle(
                                color: Colors.white,
                              ),
                              contentPadding: const EdgeInsets.only(
                                  left: 8.0, bottom: 2.0, top: 2.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.white),
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Color(0xffde7474)),
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Password",
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            validator: pwdValidator,
                            style: new TextStyle(
                                fontSize: 16.0, color: Colors.white),
                            decoration: new InputDecoration(
                              filled: true,
                              fillColor: Color(0xffde7474),
                              hintText: '***********',
                              hintStyle: new TextStyle(
                                color: Colors.white,
                              ),
                              contentPadding: const EdgeInsets.only(
                                  left: 8.0, bottom: 2.0, top: 2.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.white),
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Color(0xffde7474)),
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 40.0,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: FlatButton(
                                    padding: EdgeInsets.all(0),
                                    color: Colors.white,
                                    splashColor: Colors.redAccent,
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(15.0),
                                    ),
                                    onPressed: () {
                                      if (!_formKey.currentState.validate()) {
                                        return;
                                      }
                                      showOverlay(context);
                                      _formKey.currentState.save();

                                      _emailLogin();
                                      Navigator.pop(context, true);
                                    },
                                    child: Text(
                                      "Login",
                                      style: new TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ]),
                        ],
                      )),
                  SizedBox(height: 30.0),
                  SizedBox(
                    height: 30.0,
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      color: Colors.redAccent,
                      splashColor: Colors.white,
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  SizedBox(
                    height: 30.0,
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      color: Colors.redAccent,
                      splashColor: Colors.white,
                      onPressed: () {
                        _authenticationBloc.add(SignUp());
                        Navigator.pop(context, true);
                      },
                      child: Text(
                        "Don't have an Account?",
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ));
        });
  }

  void _settingModalBottomSheetForSignup() {
    showBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return SingleChildScrollView(
              child: ClipPath(
            clipper: OvalTopBorderClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.70,
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
              color: Colors.redAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "SignUp",
                        style: new TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 34.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Form(
                      key: _signUpFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          TextFormField(
                            controller: _emailController,
                            validator: emailValidator,
                            autofocus: false,
                            style: new TextStyle(
                                fontSize: 16.0, color: Colors.white),
                            decoration: new InputDecoration(
                              filled: true,
                              fillColor: Color(0xffde7474),
                              hintText: 'johndoe@mail.com',
                              hintStyle: new TextStyle(
                                color: Colors.white,
                              ),
                              contentPadding: const EdgeInsets.only(
                                  left: 8.0, bottom: 2.0, top: 2.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.white),
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Color(0xffde7474)),
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Password",
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            autofocus: false,
                            obscureText: true,
                            validator: pwdValidator,
                            style: new TextStyle(
                                fontSize: 16.0, color: Colors.white),
                            decoration: new InputDecoration(
                              filled: true,
                              fillColor: Color(0xffde7474),
                              hintText: '***********',
                              hintStyle: new TextStyle(
                                color: Colors.white,
                              ),
                              contentPadding: const EdgeInsets.only(
                                  left: 8.0, bottom: 2.0, top: 2.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.white),
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Color(0xffde7474)),
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Confirm Password",
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          TextFormField(
                            controller: _confirmController,
                            validator: confirmValidator,
                            obscureText: true,
                            autofocus: false,
                            style: new TextStyle(
                                fontSize: 16.0, color: Colors.white),
                            decoration: new InputDecoration(
                              filled: true,
                              fillColor: Color(0xffde7474),
                              hintText: '***********',
                              hintStyle: new TextStyle(
                                color: Colors.white,
                              ),
                              contentPadding: const EdgeInsets.only(
                                  left: 8.0, bottom: 2.0, top: 2.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.white),
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Color(0xffde7474)),
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 40.0,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: FlatButton(
                                    padding: EdgeInsets.all(0),
                                    color: Colors.white,
                                    splashColor: Colors.redAccent,
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(15.0),
                                    ),
                                    onPressed: _onSignUpButtonPressed,
                                    child: Text(
                                      "Sign Up",
                                      style: new TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ]),
                        ],
                      )),
                  SizedBox(height: 10.0),
                  SizedBox(
                    height: 20.0,
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      color: Colors.redAccent,
                      splashColor: Colors.white,
                      onPressed: () {
                        _authenticationBloc.add(Login());
                        Navigator.pop(context, true);
                      },
                      child: Text(
                        "Already have an Account?",
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ));
        });
  }

  _onSignUpButtonPressed() {
    if (!_signUpFormKey.currentState.validate()) {
      return;
    }
    showOverlay(context);
    _loginBloc.add(SignUpButtonPressed(
        email: _emailController.text, password: _passwordController.text));
    overlayEntry.remove();
    Navigator.pop(context, true);
  }
}
