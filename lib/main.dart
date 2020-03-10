import 'package:bmf_shopping/Models/Sneakers.dart';
import 'package:bmf_shopping/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'HomePage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(SneakersAdapter());
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

  @override
  void dispose(){
    Hive.close();
    super.dispose();
  }
}
