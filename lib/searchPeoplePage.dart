import 'package:flutter/material.dart';
import 'package:gathabandhan/othersProfile.dart';
import 'othersProfile.dart';
import 'profile.dart';

class SearchPeoplePage extends StatefulWidget {
  SearchPeoplePage({Key key}) : super(key: key);

  @override
  _SearchPeoplePageState createState() => _SearchPeoplePageState();
}

class _SearchPeoplePageState extends State<SearchPeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Color(0xffdfe4ea),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 5.0,
              margin: EdgeInsets.all(8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                height: 270.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Sakshi Tanwar",
                            style: new TextStyle(
                              color: Colors.black87,
                              fontSize: 28.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: "Cursive",
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            width: 160.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              // boxShadow: [
                              //   BoxShadow(
                              //       color: Colors.black54, blurRadius: 10.0),
                              // ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                "assets/girl.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "26 Years | 6'2 feets",
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                    color: Colors.black26,
                                    fontSize: 12.0,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.bookmark,
                                    size: 26.0,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   height: 5.0,
                            // ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "Hinduism",
                                  style: new TextStyle(
                                    color: Colors.black45,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "Kathmandu",
                                  style: new TextStyle(
                                    color: Colors.black38,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "Bank Manager",
                                  style: new TextStyle(
                                    color: Colors.black45,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "Accounting",
                                  style: new TextStyle(
                                    color: Colors.black38,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "I love the way the birds sing and animals entertain. I am a 26 year old women in search for the perfect man to make my life more prosperous.",
                              style: new TextStyle(
                                color: Colors.black38,
                                fontSize: 12.0,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 5.5,
                                  height: 25.0,
                                  child: new FlatButton(
                                    padding: EdgeInsets.all(0),
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0),
                                        side: BorderSide(
                                            color: Colors.redAccent)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OthersProfile()),
                                      );
                                    },
                                    child: Text(
                                      "Visit Profile ",
                                      style: new TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 5.5,
                                  height: 25.0,
                                  child: new FlatButton(
                                    padding: EdgeInsets.all(0),
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0),
                                        side: BorderSide(
                                            color: Colors.redAccent)),
                                    color: Colors.redAccent,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Profile()));
                                      //                 Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => SearchPeoplePage()),
                                      // );
                                    },
                                    child: Text(
                                      "Show More ",
                                      style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 35.0,
                                  width: 35.0,
                                  child: FlatButton(
                                      padding: EdgeInsets.all(0),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0),
                                      ),
                                      onPressed: () {
                                        //                 Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => SearchPeoplePage()),
                                        // );
                                      },
                                      child:
                                          Image.asset("assets/facebook.png")),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                SizedBox(
                                  height: 30.0,
                                  width: 30.0,
                                  child: FlatButton(
                                      padding: EdgeInsets.all(0),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0),
                                      ),
                                      onPressed: () {
                                        //                 Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => SearchPeoplePage()),
                                        // );
                                      },
                                      child:
                                          Image.asset("assets/instagram.png")),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                SizedBox(
                                  height: 35.0,
                                  width: 35.0,
                                  child: FlatButton(
                                      padding: EdgeInsets.all(0),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0),
                                      ),
                                      onPressed: () {
                                        //                 Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => SearchPeoplePage()),
                                        // );
                                      },
                                      child: Image.asset("assets/twitter.png")),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
