import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Your Profile",
                    style: new TextStyle(
                      color: Colors.black87,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: 160.0,
                    height: 160.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 10.0),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        "assets/girl.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 115.0,
                    left: 115.0,
                    child: Container(
                      width: 35.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Colors.redAccent,
                      ),
                      child: Icon(Icons.camera_alt, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Sakshi Tanwar",
                        style: new TextStyle(
                          color: Colors.black87,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w700,
                        ),
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
                    child: FlatButton(
                        splashColor: Colors.white,
                        color: Colors.redAccent,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => OthersProfile()),
                          // );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "Edit your Profile ",
                              style: new TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      SizedBox(
                        child: FlatButton(
                            splashColor: Colors.white,
                            color: Colors.redAccent,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => OthersProfile()),
                              // );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 18.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Customize ",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )),
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
                        BoxShadow(color: Colors.black54, blurRadius: 10.0),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                        BoxShadow(color: Colors.black54, blurRadius: 10.0),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                        BoxShadow(color: Colors.black54, blurRadius: 10.0),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                        BoxShadow(color: Colors.black54, blurRadius: 10.0),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "LifeStyle Information",
                        style: new TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20.0,
                      )
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
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "LifeStyle Information",
                        style: new TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20.0,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6.0),
              SizedBox(
                height: 60.0,
                // width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  color: Colors.redAccent,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "LifeStyle Information",
                        style: new TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20.0,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
