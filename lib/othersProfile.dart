import 'package:flutter/material.dart';

class OthersProfile extends StatefulWidget {
  OthersProfile({Key key}) : super(key: key);

  @override
  _OthersProfileState createState() => _OthersProfileState();
}

class _OthersProfileState extends State<OthersProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assets/girl2.jpg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 1.6,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(150.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "Sakshi Tanwar",
                                    style: new TextStyle(
                                      color: Colors.black87,
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                    width: 100.0,
                                    child: Container(
                                      color: Color(0xffb33939),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    "26 Years | 6'2 feets",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: Colors.black26,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.home,
                                color: Colors.redAccent,
                                size: 25.0,
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Icon(
                                Icons.email,
                                color: Colors.redAccent,
                                size: 25.0,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Kathmandu, Nepal",
                                style: new TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 14.0,
                              ),
                              Text(
                                "sakshitanwar@gmail.com",
                                style: new TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                color: Colors.redAccent,
                                size: 25.0,
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Icon(
                                Icons.folder_special,
                                color: Colors.redAccent,
                                size: 25.0,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Female, Hinduism",
                                style: new TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 14.0,
                              ),
                              Text(
                                "Bank Manager, Accounting",
                                style: new TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "I love the way the birds sing and animals entertain. I am a 26 year old women in search for the perfect man to make my life more prosperous.I love the way the birds sing and animals entertain. I am a 26 year old women in search for the perfect man to make my life more prosperous.I love the way the birds sing and animals entertain. I am a 26 year old women in search for the perfect man to make my life more prosperous.I love the way the birds sing and animals entertain. I am a 26 year old women in search for the perfect man to make my life more prosperous.",
                          style: new TextStyle(
                            color: Colors.black54,
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: FlatButton(
                              splashColor: Colors.white,
                              color: Colors.redAccent,
                              // padding: EdgeInsets.all(0),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0),
                                // side: BorderSide(color: Colors.redAccent)
                              ),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => OthersProfile()),
                                // );
                              },
                              child: Text(
                                "Add to Favourites ",
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: FlatButton(
                              splashColor: Colors.redAccent,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20.0),
                                  side: BorderSide(color: Colors.redAccent)),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => OthersProfile()),
                                // );
                              },
                              child: Text(
                                "Contact Sakshi ",
                                style: new TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "More Photos",
                                    style: new TextStyle(
                                      color: Colors.black87,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                    width: 100.0,
                                    child: Container(
                                      color: Color(0xffb33939),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 2.4,
                            height: MediaQuery.of(context).size.width / 2.4,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54, blurRadius: 10.0),
                              ],
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
                          Container(
                            width: MediaQuery.of(context).size.width / 2.4,
                            height: MediaQuery.of(context).size.width / 2.4,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54, blurRadius: 10.0),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                "assets/girl3.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 2.4,
                            height: MediaQuery.of(context).size.width / 2.4,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54, blurRadius: 10.0),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                "assets/girl2.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.4,
                            height: MediaQuery.of(context).size.width / 2.4,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54, blurRadius: 10.0),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                "assets/girl4.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      SizedBox(
                        height: 60.0,
                        // width: MediaQuery.of(context).size.width,
                        child: FlatButton(
                          color: Colors.redAccent,
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("LifeStyle Information",
                              style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                              ),
                              Icon(Icons.arrow_forward_ios,color:Colors.white,size: 20.0,)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      SizedBox(
                        height: 60.0,
                        // width: MediaQuery.of(context).size.width,
                        child: FlatButton(
                          color: Colors.redAccent,
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("LifeStyle Information",
                              style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                              ),
                              Icon(Icons.arrow_forward_ios,color:Colors.white,size: 20.0,)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height:6.0),
                      SizedBox(
                        height: 60.0,
                        // width: MediaQuery.of(context).size.width,
                        child: FlatButton(
                          color: Colors.redAccent,
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("LifeStyle Information",
                              style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                              ),
                              Icon(Icons.arrow_forward_ios,color:Colors.white,size: 20.0,)
                            ],
                          ),
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
