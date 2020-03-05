import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreTray extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
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
    );
  }
}
