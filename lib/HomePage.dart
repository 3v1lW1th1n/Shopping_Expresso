import 'package:bmf_shopping/Models/Explore.dart';
import 'package:bmf_shopping/Models/Sneakers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Models/Categories.dart';
import 'Screens/ProductDetails.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentCategory = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1335, allowFontScaling: true);

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: new SafeArea(
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setWidth(15)),
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new IconButton(
                    onPressed: () {},
                    icon: new Icon(Icons.menu),
                  ),
                  new ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: new Image(
                        width: ScreenUtil().setWidth(65),
                        height: ScreenUtil().setHeight(65),
                        image: AssetImage("assets/images/abhishekProfile.JPG")),
                  )
                ],
              ),
              new SizedBox(height: ScreenUtil().setHeight(10.0)),
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(15.0),
                ),
                child: new Text("Our",
                    style: new TextStyle(
                        fontSize: ScreenUtil().setSp(50),
                        fontWeight: FontWeight.w200)),
              ),
              new SizedBox(height: ScreenUtil().setHeight(9.0)),
              Padding(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(15.0)),
                child: new Text("Products",
                    style: new TextStyle(
                        fontSize: ScreenUtil().setSp(50),
                        fontWeight: FontWeight.w500)),
              ),
              new SizedBox(height: ScreenUtil().setHeight(30.0)),
              Padding(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(15.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Container(
                      decoration: new BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: new BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: new TextField(
                        decoration: new InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20.0),
                            hintText: "Search Products",
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            new BoxShadow(
                                color: Colors.blueGrey.shade50,
                                offset: new Offset(-4.0, -4.0),
                                blurRadius: 7.0),
                            new BoxShadow(
                                color: Colors.blueGrey.shade500,
                                offset: new Offset(1.0, 1.0),
                                blurRadius: 2.0)
                          ]),
                      child: new IconButton(
                        onPressed: () {},
                        icon: new Icon(
                          Icons.filter_list,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new SizedBox(height: ScreenUtil().setHeight(40.0)),
              new Container(
                color: Theme.of(context).backgroundColor,
                height: ScreenUtil().setHeight(100.0),
                child: new ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cat.length,
                  itemBuilder: (context, index) {
                    return new GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentCategory = index;
                        });
                      },
                      child: Stack(
                        children: <Widget>[
                          new Container(
                            decoration: new BoxDecoration(
                                color: _currentCategory == index
                                    ? Colors.deepOrange
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10.0)),
                            margin: EdgeInsets.all(6.0),
                            width: ScreenUtil().setWidth(250.0) + 5.0,
                          ),
                          new Positioned(
                            top: 1.0,
                            left: 2.1,
                            child: new Container(
                              margin: EdgeInsets.all(6.0),
                              width: ScreenUtil().setWidth(250.0),
                              height: ScreenUtil().setHeight(75.0),
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  new Image(
                                      width: ScreenUtil().setWidth(60.0),
                                      height: ScreenUtil().setHeight(50.0),
                                      fit: BoxFit.contain,
                                      image: AssetImage(cat[index].imageURL)),
                                  new Text(cat[index].categoryName,
                                      style: new TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: ScreenUtil().setSp(22.0)))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              new SizedBox(height: ScreenUtil().setHeight(30.0)),
              new Container(
                height: ScreenUtil().setHeight(420),
                child: new ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sneakers.length,
                  itemBuilder: (context, index) {
                    return new Container(
                      margin: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                      decoration: new BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                          borderRadius: new BorderRadius.circular(20.0)),
                      width: ScreenUtil().setWidth(290.0),
                      child: new Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          new Positioned(
                            bottom: 0.0,
                            child: new Container(
                              width: ScreenUtil().setWidth(300),
                              height: ScreenUtil().setHeight(150.0),
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Text(
                                    sneakers[index].name,
                                    maxLines: 1,
                                    style: new TextStyle(
                                        fontSize: ScreenUtil().setSp(30.0),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  new SizedBox(
                                    height: new ScreenUtil().setHeight(10.0),
                                  ),
                                  new Text(
                                    sneakers[index].condition,
                                    overflow: TextOverflow.ellipsis,
                                    style: new TextStyle(
                                        fontSize: ScreenUtil().setSp(20.0),
                                        color: sneakers[index].avail == true
                                            ? Colors.green
                                            : Colors.red.shade700,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  new SizedBox(
                                    height: ScreenUtil().setHeight(10.0),
                                  ),
                                  new Text(
                                    '\$ ${sneakers[index].price}',
                                    style: new TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: ScreenUtil().setSp(50.0),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          new Positioned(
                            top: 30.0,
                            child: new ClipRRect(
                              borderRadius: new BorderRadius.circular(100.0),
                              child: new Container(
                                width: ScreenUtil().setWidth(160),
                                height: ScreenUtil().setHeight(150),
                                color: Colors.blueGrey.shade50,
                              ),
                            ),
                          ),
                          new Positioned(
                            top: ScreenUtil().setHeight(25.0),
                            child: new ClipRRect(
                              child: new Image(
                                  width: ScreenUtil().setWidth(240),
                                  height: ScreenUtil().setHeight(240),
                                  fit: BoxFit.cover,
                                  image: AssetImage(sneakers[index].imageURL)),
                            ),
                          ),
                          new Positioned(
                              left: ScreenUtil().setWidth(15.0),
                              child: new IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (sneakers[index].liked == false)
                                        sneakers[index].liked = true;
                                      else
                                        sneakers[index].liked = false;
                                    });
                                  },
                                  icon: sneakers[index].liked == false
                                      ? new Icon(
                                          FontAwesomeIcons.heart,
                                        )
                                      : new Icon(
                                          FontAwesomeIcons.solidHeart,
                                          color: Colors.red.shade700,
                                        )))
                        ],
                      ),
                    );
                  },
                ),
              ),
              new SizedBox(height: ScreenUtil().setHeight(30.0)),
              new Padding(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(15.0)),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      "Explore",
                      style: new TextStyle(
                          fontSize: ScreenUtil().setSp(40.0),
                          fontWeight: FontWeight.w500),
                    ),
                    new Text(
                      "New Festive Season",
                      style: new TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: ScreenUtil().setSp(25.0),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              new SizedBox(height: ScreenUtil().setHeight(30.0)),
              new Padding(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(15.0)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: GridView.count(
                      shrinkWrap: false,
                      primary: true,
                      childAspectRatio: (ScreenUtil().setWidth(300) /
                          ScreenUtil().setHeight(400)),
                      crossAxisCount: 2,
                      children: List.generate(4, (index) {
                        return Container(
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.all(8.0),
                          height: ScreenUtil().setHeight(420),
                          width: ScreenUtil().setWidth(320),
                          decoration: new BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: ScreenUtil().setHeight(325),
                                child: new Image(
                                    width: ScreenUtil().setWidth(300),
                                    fit: BoxFit.contain,
                                    image:
                                        new AssetImage(expPro[index].imageURL)),
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
