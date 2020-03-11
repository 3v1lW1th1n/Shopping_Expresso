import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInforamtion extends StatefulWidget {
  @override
  _UserInforamtionState createState() => _UserInforamtionState();
}

class _UserInforamtionState extends State<UserInforamtion> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: new SafeArea(
        child: new ListView(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                  color: Colors.red,
                  borderRadius: new BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0))),
              child: new ClipRRect(
                borderRadius: new BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
                child: new Image(
                    fit: BoxFit.cover,
                    image: new AssetImage('assets/images/abhishekProfile.JPG')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: new Container(
                height: ScreenUtil().setHeight(120.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          "Abhishek Rai",
                          style: new TextStyle(
                              fontSize: ScreenUtil().setSp(45.0),
                              fontWeight: FontWeight.w700),
                        ),
                        new Text(
                          "iamabhishek229313@gmail.com",
                          style: new TextStyle(
                              color: Colors.blueGrey.shade400,
                              fontSize: ScreenUtil().setSp(20.0),
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    new Container(
                      padding: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                      width: ScreenUtil().setWidth(200.0),
                      height: ScreenUtil().setHeight(75.0),
                      decoration: new BoxDecoration(
                          color: Colors.blueGrey.shade100,
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Icon(
                            Icons.verified_user,
                            color: Colors.indigo,
                          ),
                          new Text(
                            "Verified",
                            style: new TextStyle(
                                fontSize: ScreenUtil().setSp(20.0),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            new Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: new Divider(
                height: 1.0,
              ),
            ),
            new Container(
              height: ScreenUtil().setHeight(150.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Container(
                    width: ScreenUtil().setWidth(139.0),
                    margin: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(20.0),
                        color: Theme.of(context).primaryColor,
                        border:
                            new Border.all(width: 2, color: Colors.blueGrey)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          "Add",
                          style: new TextStyle(color: Colors.white),
                        ),
                        new Text(
                          "Money",
                          style: new TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  new Container(
                    width: ScreenUtil().setWidth(139.0),
                    margin: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(20.0),
                        color: Theme.of(context).primaryColor,
                        border:
                            new Border.all(width: 2, color: Colors.blueGrey)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          "UPI",
                          style: new TextStyle(color: Colors.white),
                        ),
                        new Text(
                          "Transfer",
                          style: new TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  new Container(
                    width: ScreenUtil().setWidth(139.0),
                    margin: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(20.0),
                        color: Theme.of(context).primaryColor,
                        border:
                            new Border.all(width: 2, color: Colors.blueGrey)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          "Check",
                          style: new TextStyle(color: Colors.white),
                        ),
                        new Text(
                          "Balance",
                          style: new TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  new Container(
                    width: ScreenUtil().setWidth(139.0),
                    margin: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(20.0),
                        color: Theme.of(context).primaryColor,
                        border:
                            new Border.all(width: 2, color: Colors.blueGrey)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          "Vouchers",
                          style: new TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            new Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: new Divider(
                height: 1.0,
              ),
            ),
            new Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: new Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    new Icon(
                      Icons.credit_card,
                      color: Colors.black,
                    ),
                    new SizedBox(width: 8.0),
                    new Text(
                      "Card Details",
                      style: new TextStyle(
                        fontSize: ScreenUtil().setSp(39.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new Container(
              margin: EdgeInsets.all(ScreenUtil().setWidth(40.0)),
              height: ScreenUtil().setHeight(315),
              decoration: new BoxDecoration(
                  border: new Border.all(),
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15.0)),
              child: new Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(10.0),
                        vertical: ScreenUtil().setWidth(10.0)),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Image(
                          width: ScreenUtil().setWidth(60.0),
                          height: ScreenUtil().setWidth(60.0),
                          image: AssetImage('assets/images/cardlogo.png'),
                          fit: BoxFit.contain,
                        ),
                        new Icon(
                          Icons.network_cell,
                          color: Colors.black,
                          size: ScreenUtil().setWidth(60.0),
                        )
                      ],
                    ),
                  ),
                  new SizedBox(
                    height: ScreenUtil().setHeight(10.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.all(ScreenUtil().setWidth(10.0)),
                    child: new Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text('7200 1538 XXXX XXXX',
                              style: new TextStyle(
                                fontSize: ScreenUtil().setSp(40.0),
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                          new SizedBox(
                            height: ScreenUtil().setHeight(25.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text(
                                "Master Card",
                                style: new TextStyle(
                                  color: Colors.blueGrey.shade300,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              new Container(
                                margin: EdgeInsets.only(
                                    right: ScreenUtil().setWidth(5.0)),
                                padding:
                                    EdgeInsets.all(ScreenUtil().setWidth(5.0)),
                                decoration: new BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius:
                                        new BorderRadius.circular(5.0)),
                                child: new Text(
                                  "386",
                                  style: new TextStyle(
                                      fontSize: ScreenUtil().setSp(40.0),
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                          new SizedBox(
                            height: ScreenUtil().setWidth(25.0),
                          ),
                          new Text(
                            'VALID THRU',
                            style: new TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.blueGrey.shade500,
                            ),
                          ),
                          new SizedBox(
                            height: ScreenUtil().setHeight(5.0),
                          ),
                          new Text(
                            '11/22',
                            style: new TextStyle(
                                fontSize: 25.0,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Divider(
              height: 1.0,
            ),
            new Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 255, 255, 0.0),
                    Color.fromRGBO(255, 255, 255, 1.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
              padding: EdgeInsets.symmetric(vertical : ScreenUtil().setHeight(10.0)),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      new Text(
                        "Hosted on Github with 💚 by Abhishek",
                        style: new TextStyle(
                            fontSize: ScreenUtil().setSp(30.0),
                            color: Colors.black87,
                            fontWeight: FontWeight.w600),
                      ),
                      new Text(
                        "github.com/iamabhishek229313",
                        style: new TextStyle(
                            fontSize: ScreenUtil().setSp(30.0),
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Its a beautiful Experience with this app. Lastly added the Profile Page