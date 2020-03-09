import 'package:bmf_shopping/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Expresso',
      theme: ThemeData(
        backgroundColor: Colors.deepOrange.shade50,
        primarySwatch: Colors.deepOrange,
      ),
      home: SplashScreen()
    );
  }
}
