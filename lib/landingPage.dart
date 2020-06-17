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
          dotVerticalPadding: 150.0,
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
        bottom: -170.0,       
        child:Container(
          height: 250.0,
          width: 250.0,
        decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:Color.fromRGBO(255, 255, 255, 0.5),
                        ),
      ),
        )
    ]));
  }
}
