import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double circleWidth = -(MediaQuery.of(context).size.width);

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
                  _settingModalBottomSheetForSignup(context);
                  //               Navigator.push(
                  // context,
                  // MaterialPageRoute(builder: (context) => SearchPeoplePage()),
                  //);
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
                  //               Navigator.push(
                  // context,
                  // MaterialPageRoute(builder: (context) => SearchPeoplePage()),
                  //);
                  _settingModalBottomSheetForLogin(context);
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
      )
    ]));
  }
}

void _settingModalBottomSheetForLogin(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.75,
          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          color: Colors.redAccent,
          child: SingleChildScrollView(
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
                TextField(
                  controller: null,
                  autofocus: false,
                  style: new TextStyle(fontSize: 16.0, color: Colors.white),
                  decoration: new InputDecoration(
                    filled: true,
                    fillColor: Color(0xffde7474),
                    hintText: 'johndoe@mail.com',
                    hintStyle: new TextStyle(
                      color: Colors.white,
                    ),
                    contentPadding:
                        const EdgeInsets.only(left: 8.0, bottom: 2.0, top: 2.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Color(0xffde7474)),
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
                TextField(
                  controller: null,
                  autofocus: false,
                  style: new TextStyle(fontSize: 16.0, color: Colors.white),
                  decoration: new InputDecoration(
                    filled: true,
                    fillColor: Color(0xffde7474),
                    hintText: '***********',
                    hintStyle: new TextStyle(
                      color: Colors.white,
                    ),
                    contentPadding:
                        const EdgeInsets.only(left: 8.0, bottom: 2.0, top: 2.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Color(0xffde7474)),
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
                            borderRadius: new BorderRadius.circular(15.0),
                          ),
                          onPressed: () {
                            //               Navigator.push(
                            // context,
                            // MaterialPageRoute(builder: (context) => SearchPeoplePage()),
                            //);
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
                SizedBox(height: 30.0),
                SizedBox(
                  height: 30.0,
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    color: Colors.redAccent,
                    splashColor: Colors.white,
                    onPressed: () {
                      //               Navigator.push(
                      // context,
                      // MaterialPageRoute(builder: (context) => SearchPeoplePage()),
                      //);
                    },
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
                      //               Navigator.push(
                      // context,
                      // MaterialPageRoute(builder: (context) => SearchPeoplePage()),
                      //);
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
        );
      });
}

void _settingModalBottomSheetForSignup(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.75,
          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          color: Colors.redAccent,
          child: SingleChildScrollView(
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
                Text(
                  "Name",
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextField(
                  controller: null,
                  autofocus: false,
                  style: new TextStyle(fontSize: 16.0, color: Colors.white),
                  decoration: new InputDecoration(
                    filled: true,
                    fillColor: Color(0xffde7474),
                    hintText: 'John Doe',
                    hintStyle: new TextStyle(
                      color: Colors.white,
                    ),
                    contentPadding:
                        const EdgeInsets.only(left: 8.0, bottom: 2.0, top: 2.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Color(0xffde7474)),
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
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
                TextField(
                  controller: null,
                  autofocus: false,
                  style: new TextStyle(fontSize: 16.0, color: Colors.white),
                  decoration: new InputDecoration(
                    filled: true,
                    fillColor: Color(0xffde7474),
                    hintText: 'johndoe@mail.com',
                    hintStyle: new TextStyle(
                      color: Colors.white,
                    ),
                    contentPadding:
                        const EdgeInsets.only(left: 8.0, bottom: 2.0, top: 2.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Color(0xffde7474)),
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
                TextField(
                  controller: null,
                  autofocus: false,
                  style: new TextStyle(fontSize: 16.0, color: Colors.white),
                  decoration: new InputDecoration(
                    filled: true,
                    fillColor: Color(0xffde7474),
                    hintText: '***********',
                    hintStyle: new TextStyle(
                      color: Colors.white,
                    ),
                    contentPadding:
                        const EdgeInsets.only(left: 8.0, bottom: 2.0, top: 2.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Color(0xffde7474)),
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                Text(
                  "Date of Birth",
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextField(
                  controller: null,
                  autofocus: false,
                  style: new TextStyle(fontSize: 16.0, color: Colors.white),
                  decoration: new InputDecoration(
                    filled: true,
                    fillColor: Color(0xffde7474),
                    hintText: '09/09/1989',
                    hintStyle: new TextStyle(
                      color: Colors.white,
                    ),
                    contentPadding:
                        const EdgeInsets.only(left: 8.0, bottom: 2.0, top: 2.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Color(0xffde7474)),
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                  ),
                ),
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
                TextField(
                  controller: null,
                  autofocus: false,
                  style: new TextStyle(fontSize: 16.0, color: Colors.white),
                  decoration: new InputDecoration(
                    filled: true,
                    fillColor: Color(0xffde7474),
                    hintText: 'johndoe@mail.com',
                    hintStyle: new TextStyle(
                      color: Colors.white,
                    ),
                    contentPadding:
                        const EdgeInsets.only(left: 8.0, bottom: 2.0, top: 2.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Color(0xffde7474)),
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
                            borderRadius: new BorderRadius.circular(15.0),
                          ),
                          onPressed: () {
                            //               Navigator.push(
                            // context,
                            // MaterialPageRoute(builder: (context) => SearchPeoplePage()),
                            //);
                          },
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
                SizedBox(height: 10.0),
                SizedBox(
                  height: 20.0,
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    color: Colors.redAccent,
                    splashColor: Colors.white,
                    onPressed: () {
                      //               Navigator.push(
                      // context,
                      // MaterialPageRoute(builder: (context) => SearchPeoplePage()),
                      //);
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
        );
      });
}
