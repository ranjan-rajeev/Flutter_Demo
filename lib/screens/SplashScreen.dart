import 'dart:async';

import 'package:exam_preparation/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Builder(
          builder: (context) => new _SplashContent(),
        ),
        routes: <String, WidgetBuilder>{
          '/main': (BuildContext context) => new HomeScreen()
        });
  }
}

class _SplashContent extends StatefulWidget {
  @override
  _SplashContentState createState() => new _SplashContentState();
}

class _SplashContentState extends State<_SplashContent>  {

  startTimeout() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, handleTimeout);
  }

  void handleTimeout() {
    //Navigator.push(context, );
    Navigator.pushReplacementNamed(context, "/main");
  }

  @override
  void initState() {
    super.initState();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Splash",
      home: Scaffold(
        body: Center(
            child: Text(
          "Welcome to Flutter ",
          style: TextStyle(
            fontSize: 20.0,
          ),
        )),
      ),
    );
  }
}
