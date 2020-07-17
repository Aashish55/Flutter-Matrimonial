import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:gathabandhan/drawer.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'favouritesPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget recentProfiles() {
    return Container(
        width: 150.0,
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Material(
          child: InkWell(
            onTap: () {
              print('pressed');
            },
            child: Container(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                "assets/girl.jpg",
                fit: BoxFit.fill,
              ),
            )),
          ),
        ));
  }

  List<Widget> recentMatches = [];
  @override
  void initState() {
    setState(() {
      for (var i = 0; i < 5; i++) {
        recentMatches.add(recentProfiles());
      }
    });
    super.initState();
  }

  int _focusedIndex = -1;
  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  Widget _buildListItem(BuildContext context, int index) {
    if (index == recentMatches.length)
      return Center(
        child: CircularProgressIndicator(),
      );

    //horizontal
    return Container(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 150,
            width: 150,
            child: recentMatches[index],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.chat, color: Colors.white), onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: null),
            Container(
              height: 40.0,
              width: 40.0,
              margin: EdgeInsets.only(right: 10, top: 8, bottom: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 1),
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/boy.jpg"),
                ),
              ),
            ),
          ],
          backgroundColor: Color(0xffd23838),
        ),
        drawer: Container(
            width: 200, child: Drawer(elevation: 1, child: DrawerPage())),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 10.0, left: 15.0, right: 15.0, bottom: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width / 2.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: MediaQuery.of(context).size.width,
                            spreadRadius: 20,
                          )
                        ],
                      ),
                      child: Carousel(
                        boxFit: BoxFit.fill,
                        autoplay: true,
                        autoplayDuration: const Duration(seconds: 5),
                        animationDuration: Duration(milliseconds: 1000),
                        dotVerticalPadding: 0.0,
                        showIndicator: false,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Recent Matches",
                              style: new TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                height: 0.6,
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                "assets/banner.png",
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.contain,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 60.0,
                          height: 25.0,
                          child: FlatButton(
                            padding: EdgeInsets.all(0),
                            color: Color(0xffd23838),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()),
                              );
                            },
                            child: Text(
                              "View All",
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
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
                      height: 150,
                      child: ScrollSnapList(
                        onItemFocus: _onItemFocus,
                        itemSize: 150,
                        itemBuilder: _buildListItem,
                        itemCount: recentMatches.length,
                        dynamicItemSize: true,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Recent Messages",
                              style: new TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                height: 0.6,
                              ),
                            ),
                            Container(
                              child: Image.asset("assets/banner.png"),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 60.0,
                          height: 25.0,
                          child: FlatButton(
                            padding: EdgeInsets.all(0),
                            color: Color(0xffd23838),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()),
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
                      height: 50.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          recentMessages(),
                          recentMessages(),
                          recentMessages(),
                          recentMessages(),
                          recentMessages(),
                          recentMessages(),
                          recentMessages(),
                          recentMessages(),
                          recentMessages(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Complete Your Profile",
                              style: new TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                height: 0.6,
                              ),
                            ),
                            Container(
                              child: Image.asset("assets/banner.png"),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                image: DecorationImage(
                                    image: AssetImage("assets/boy.jpg")),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0x29000000),
                                      blurRadius: 8)
                                ],
                              ),
                            ),
                            Text(
                              'Prashanna Nepal',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w600,
                                height: 1.8,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            SvgPicture.string(
                              _shapeSVG_bba3f83b71f64d70a746fb2e63ad0f1e,
                              allowDrawingOutsideViewBox: true,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 60),
                              child: Text(
                                'Your Profile is only 50 % completed',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 6,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w900,
                                  height: 1.8333333333333333,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30, left: 50),
                              child: Text(
                                'Complete your Profile and get\nthe chance to match more',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                  height: 1.2,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 75, left: 150),
                              child: Container(
                                width: 62.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19.0),
                                  color: const Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                        color: const Color(0x29000000),
                                        offset: Offset(-5, 3),
                                        blurRadius: 10)
                                  ],
                                ),
                                child: Center(
                                    child: Text(
                                  'Complete Now',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 8,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w300,
                                    height: 1,
                                  ),
                                )),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

Widget recentMessages() {
  return Stack(children: <Widget>[
    Container(
      width: 50.0,
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Material(
        //color: Color(0xffd23838),
        child: InkWell(
          onTap: () {
            print('pressed');
          },
          child: Container(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(
              "assets/girl.jpg",
              fit: BoxFit.cover,
            ),
          )),
        ),
      ),
    ),
    Positioned(
      bottom: 5.0,
      right: 5.0,
      child: Container(
          width: 15.0,
          height: 15.0,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffd23838),
          ),
          child: Center(
            child: Text(
              "2",
              style: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 12.0),
            ),
          )),
    ),
  ]);
}

const String _shapeSVG_bba3f83b71f64d70a746fb2e63ad0f1e =
    '<svg viewBox="135.0 617.6 260.2 99.4" ><path transform="translate(135.0, 609.0)" d="M 44.164306640625 8.5992431640625 L 260.164306640625 8.5992431640625 L 223 108 L 0 108 L 44.164306640625 8.5992431640625 Z" fill="#ff2424" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _shapeSVG_e68c5dc7f116488ab6fc051b47cb291b =
    '<svg viewBox="289.5 14.8 22.7 22.7" ><g transform=""><path transform="translate(286.5, 11.8)" d="M 5.269999027252197 3 L 23.42999076843262 3 C 24.67848968505859 3 25.68864059448242 4.021499633789063 25.68864059448242 5.269999027252197 L 25.69998931884766 25.69998931884766 L 21.15999221801758 21.15999221801758 L 5.269999027252197 21.15999221801758 C 4.021499633789063 21.15999221801758 3 20.13849258422852 3 18.88999366760254 L 3 5.269999027252197 C 3 4.021499633789063 4.021499633789063 3 5.269999027252197 3 Z M 21.15999221801758 10.94499683380127 L 7.539997577667236 10.94499683380127 L 7.539997577667236 13.21499538421631 L 21.15999221801758 13.21499538421631 L 21.15999221801758 10.94499683380127 Z M 12.07999610900879 16.61999320983887 L 21.15999221801758 16.61999320983887 L 21.15999221801758 14.34999465942383 L 12.07999610900879 14.34999465942383 L 12.07999610900879 16.61999320983887 Z M 7.539997577667236 9.80999755859375 L 21.15999221801758 9.80999755859375 L 21.15999221801758 7.539997577667236 L 7.539997577667236 7.539997577667236 L 7.539997577667236 9.80999755859375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></g></svg>';
