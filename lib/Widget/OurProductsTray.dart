import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurProductsTray extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
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
      ],
    );
  }
}
