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
        bottom: circleWidth/2,
        child: Container(
          height:MediaQuery.of(context).size.width,
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
