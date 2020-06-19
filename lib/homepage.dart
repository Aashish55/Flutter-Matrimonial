import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'favouritesPage.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.width / 2.2,
                width: MediaQuery.of(context).size.width,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  autoplay: true,
                  autoplayDuration: const Duration(seconds: 5),
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 1000),
                  //dotSize: 6.0,
                  //dotIncreasedColor: Colors.redAccent,
                  //dotBgColor: Colors.transparent,
                  //dotPosition: DotPosition.bottomCenter,
                  dotVerticalPadding: 0.0,
                  showIndicator: false,
                  // indicatorBgPadding: 0.0,
                  images: [
                    AssetImage('assets/loveQuote1.jpg'),
                    AssetImage('assets/loveQuote2.jpg'),
                    AssetImage('assets/loveQuote3.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Your Recent Match",
                    style: new TextStyle(
                      color: Colors.black87,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 60.0,
                    height: 25.0,
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      color: Colors.redAccent,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );
                      },
                      child: Text(
                        "View All",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    recentProfiles(),
                    recentProfiles(),
                    recentProfiles(),
                    Container(
                      width: 100.0,
                      margin: EdgeInsets.all(5.0),
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 100.0,
                      margin: EdgeInsets.all(5.0),
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Your Recent Messages",
                    style: new TextStyle(
                      color: Colors.black87,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 60.0,
                    height: 25.0,
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      color: Colors.redAccent,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );
                      },
                      child: Text(
                        "View All",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height:10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget recentProfiles() {
    return Container(
      width: 100.0,
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: FlatButton(
        padding: EdgeInsets.all(0),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(20.0),
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => MyHomePage()),
          // );
        },
        child: Image.asset(
          'assets/girl.jpg',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
