import 'package:bmf_shopping/Screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1335, allowFontScaling: true);
    final List<Widget> Screens = [
      new Home(
        myFocusNode: myFocusNode,
      ),
      
      
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Screens[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: new Icon(FontAwesomeIcons.home),
              title: new SizedBox.shrink()),
          new BottomNavigationBarItem(
              icon: new Icon(FontAwesomeIcons.search),
              title: new SizedBox.shrink()),
          new BottomNavigationBarItem(
              icon: new Icon(FontAwesomeIcons.cartArrowDown),
              title: new SizedBox.shrink()),
          new BottomNavigationBarItem(
              icon: new Icon(FontAwesomeIcons.heart),
              title: new SizedBox.shrink())
        ],
        onTap: (index) {
          setState(() {
            if (index == 1) {
              FocusScope.of(context).requestFocus(myFocusNode);
              _currentIndex =0 ;
            }else
              _currentIndex = index;
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    myFocusNode.dispose();
  }
}
