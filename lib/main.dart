import 'package:flutter/material.dart';
import 'package:gathabandhan/landingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GathaBandhan',
      home: LandingPage(),
    );
  }
}
