import 'dart:async';

import 'package:bmf_shopping/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Expanded(
                  flex: 2,
                  child: new Container(
                    color: Theme.of(context).backgroundColor,
                  ))
            ],
          ),
          new Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  width: 120.0,
                  height: 120.0,
                  child: new Image(
                      image: new AssetImage('assets/images/icon_shopping.png')),
                ),
                new Text(
                  "Shopping Expresso",
                  style: new TextStyle(
                      fontSize: 22.0, fontWeight: FontWeight.w600),
                ),
                new SizedBox(height : 20.0),
                new CircularProgressIndicator()
              ],
            ),
          ),
          new Positioned(
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1,
            bottom: 10.0,
            child: new Center(
              child: new Text(
                "Hosted on Github with ❤ by Abhishek",
                style: new TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
