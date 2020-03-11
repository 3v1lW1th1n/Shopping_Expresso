import 'package:bmf_shopping/Screens/Cart.dart';
import 'package:bmf_shopping/Screens/Home.dart';
import 'package:bmf_shopping/Screens/UserInformation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _currentDrawer = 0;
  FocusNode myFocusNode;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
        scaffoldKey: _scaffoldKey,
      ),
      new Cart(
        scaffoldKey: _scaffoldKey,
      ),
      new UserInforamtion()
    ];
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).backgroundColor,
      body: Screens[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _currentIndex >= 1 ? _currentIndex + 1 : _currentIndex,
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
              icon: new Icon(FontAwesomeIcons.user),
              title: new SizedBox.shrink())
        ],
        onTap: (index) {
          setState(() {
            print(index);
            if (index <= 1) {
              if (index == 1) FocusScope.of(context).requestFocus(myFocusNode);
              _currentIndex = 0;
            } else
              _currentIndex = index - 1;
          });
        },
      ),
      drawer: new Drawer(
          child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Abhishek Rai"),
            accountEmail: new Text("iamabhishek229313@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('assets/images/abhishekProfile.JPG'),
            ),
          ),
          new ListTile(
            title: new Text("Home"),
            trailing: new Icon(
              Icons.home,
              size: 28.0,
            ),
            selected: _currentDrawer == 0,
            onTap: () {
              setState(() {
                _currentIndex = 0;
                _currentDrawer = 0;
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: new Text("Your cart"),
            trailing: new Icon(Icons.shopping_cart, size: 20.0),
            selected: _currentDrawer == 1,
            onTap: () {
              setState(() {
                _currentIndex = 1;
                _currentDrawer = 1;
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: new Text("Your Orders"),
            trailing: new Icon(Icons.assignment_ind, size: 20.0),
            selected: _currentDrawer == 2,
            onTap: () {
              setState(() {
                _currentDrawer = 2;
              });
              Navigator.pop(context);

              final snkBar = new SnackBar(
                  content: new Text(
                "Hey Dev ! You can add this feature 😄",
                style: new TextStyle(color: Colors.white),
              ));
              _scaffoldKey.currentState.showSnackBar(snkBar);
            },
          ),
          new ListTile(
            title: new Text("Prime Memebership"),
            trailing: new Icon(Icons.verified_user, size: 20.0),
            selected: _currentDrawer == 3,
            onTap: () {
              setState(() {
                _currentDrawer = 3;
              });
              Navigator.pop(context);

              final snkBar = new SnackBar(
                  content: new Text(
                "Hey Dev ! You can add this feature 😄",
                style: new TextStyle(color: Colors.white),
              ));
              _scaffoldKey.currentState.showSnackBar(snkBar);
            },
          ),
          new ListTile(
            title: new Text("View Invoices"),
            trailing: new Icon(Icons.line_style, size: 20.0),
            selected: _currentDrawer == 4,
            onTap: () {
              setState(() {
                _currentDrawer = 4;
              });
              Navigator.pop(context);

              final snkBar = new SnackBar(
                  content: new Text(
                "Hey Dev ! You can add this feature 😄",
                style: new TextStyle(color: Colors.white),
              ));
              _scaffoldKey.currentState.showSnackBar(snkBar);
            },
          ),
          new Divider(),
          new ListTile(
            title: new Text("Settings"),
            trailing: new Icon(Icons.settings),
            selected: _currentDrawer == 5,
            onTap: () {
              setState(() {
                _currentDrawer = 5;
              });
              Navigator.pop(context);

              final snkBar = new SnackBar(
                  content: new Text(
                "Hey Dev ! You can add this feature 😄",
                style: new TextStyle(color: Colors.white),
              ));
              _scaffoldKey.currentState.showSnackBar(snkBar);
            },
          ),
          new ListTile(
            title: new Text("Logout"),
            trailing: new Icon(Icons.alternate_email),
            selected: _currentDrawer == 6,
            onTap: () {
              setState(() {
                _currentDrawer = 6;
              });
              Navigator.pop(context);
              final snkBar = new SnackBar(
                  content: new Text(
                "Hey Dev ! You can add this feature 😄",
                style: new TextStyle(color: Colors.white),
              ));
              _scaffoldKey.currentState.showSnackBar(snkBar);
            },
          ),
          new Divider(),
          new ListTile(
            title: new Text("Credits"),
            trailing: new Icon(Icons.credit_card),
            selected: _currentDrawer == 7,
            onTap: () {
              setState(() {
                _currentDrawer = 7;
                _currentIndex = 2;
              });
              Navigator.pop(context);
            },
          ),
        ],
      )),
    );
  }

  @override
  void dispose() {
    super.dispose();
    myFocusNode.dispose();
  }
}
