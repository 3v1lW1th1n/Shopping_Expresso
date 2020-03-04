import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1335, allowFontScaling: true);

    return ListView(
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
        Padding(
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(15.0)),
          child: new Text("Products",
              style: new TextStyle(
                  fontSize: ScreenUtil().setSp(50),
                  fontWeight: FontWeight.w500)),
        ),
        new SizedBox(height: ScreenUtil().setHeight(20.0)),
        Padding(
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(15.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
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
                    borderRadius: BorderRadius.circular(10)),
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
        )
      ],
    );
  }
}
