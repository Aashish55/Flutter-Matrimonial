import 'package:flutter/material.dart';
import 'searchPeoplePage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Your Favourites",
                  style: new TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    
                    fontSize: 34.0,
                  ),
                ),
                SizedBox(
                  height: 26.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[profileSlice("assets/girl.jpg","Sakshi Tanwar",22,"5'5" ), profileSlice("assets/boy.jpg","Raghav Karki",24,"6'2")],
                ),
                SizedBox(
                  height: 14.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[profileSlice("assets/girl2.jpg","Rekha Thapa",24,"5'8" ), profileSlice("assets/girl4.jpg","Sunheri Acharya",23,"5'7")],
                ),
              ],
            ),
          ),
        ));
  }

  Widget profileSlice(String image, String name, int age, String height) {
    return Column(
      children: <Widget>[
        Container(
            width: (MediaQuery.of(context).size.width - 52.0) / 2,
            height: (MediaQuery.of(context).size.width - 52.0) * 0.60,
            child: FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                debugPrint("pressed");
              },
              child: Container(
                  width: ((MediaQuery.of(context).size.width - 52.0) / 2) - 3,
                  height:
                      ((MediaQuery.of(context).size.width - 52.0) * 0.60) - 3,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black54, blurRadius: 10.0),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "$image",
                      fit: BoxFit.cover,
                    ),
                  )),
            )),
        SizedBox(
          height: 8.0,
        ),
        Text(
          "$name",
          style: new TextStyle(
            color: Colors.black87,
            fontSize: 22.0,
            fontWeight: FontWeight.w800,
            fontFamily: "Cursive",
          ),
        ),
        Text("$age Years $height feets",textAlign: TextAlign.center,
        style: new TextStyle(color:Colors.black26,
        fontSize: 12.0,
        ),),
        Container(
          width:(MediaQuery.of(context).size.width - 52.0) / 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.all(0),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.redAccent)),
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SearchPeoplePage()),
  );
                },
                child: Text(
                  "Message ",
                  style: new TextStyle(
                    color: Colors.redAccent,
                    fontSize: 14.0,
                    
                  ),
                ),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.delete_forever,size: 26.0,color: Colors.redAccent,),
              ),
              
              
            ],
          ),
        ),
      ],
    );
  }
}
