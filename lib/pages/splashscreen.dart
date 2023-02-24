import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pr1/pages/HomePage.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
        (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder:(BuildContext context){
            return HomePage();
          }
        ));
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset("assets/medium.png"),
      ),
    );
  }
}