import 'package:flutter/material.dart';

class ProfileDetailsForm extends StatefulWidget {
  ProfileDetailsForm({Key key}) : super(key: key);

  @override
  _ProfileDetailsFormState createState() => _ProfileDetailsFormState();
}

class _ProfileDetailsFormState extends State<ProfileDetailsForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffeaf0),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              label('Age'),
              inputField('e.g: 24'),
              label('Date of Birth'),
              inputField('15-May-1995'),
              label('Marital Status'),
              inputField('Never Married'),
              label('Height'),
              inputField('e.g: 5\'11\" '),
            ],
          ),
        ),
      ),
    );
  }
}

Widget label(String labelText) {
  return Column(children: <Widget>[
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 5.0,
        ),
        Text(
          labelText,
          style: new TextStyle(
            color: Colors.black54,
            fontSize: 15.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    ),
    SizedBox(
      height: 5.0,
    ),
  ]);
}

Widget inputField(String text) {
  return Column(
    children:<Widget>[
      TextField(
    controller: null,
    autofocus: false,
    style: new TextStyle(fontSize: 16.0, color: Colors.black),
    decoration: new InputDecoration(
      filled: true,
      fillColor: Color(0xffffffff),
      hintText: '${text}',
      hintStyle: new TextStyle(
        color: Colors.black45,
      ),
      contentPadding: const EdgeInsets.only(left: 8.0, bottom: 2.0, top: 2.0),
      focusedBorder: OutlineInputBorder(
        borderSide: new BorderSide(color: Colors.white),
        borderRadius: new BorderRadius.circular(12.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: new BorderSide(color: Colors.redAccent.withAlpha(100)),
        borderRadius: new BorderRadius.circular(12.0),
      ),
    ),
  ),
  SizedBox(
    height:20.0
  ),
    ]
  );
}
