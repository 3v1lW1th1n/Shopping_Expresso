import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomizedAppBar extends StatefulWidget {
  GlobalKey<ScaffoldState> scaffoldKey ;
  CustomizedAppBar({@required this.scaffoldKey});
  @override
  _CustomizedAppBarState createState() => _CustomizedAppBarState();
}

class _CustomizedAppBarState extends State<CustomizedAppBar> {
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(
              left: ScreenUtil().setWidth(7.0),
              top: ScreenUtil().setWidth(7.0)),
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.circular(10.0),
              boxShadow: [
                new BoxShadow(
                    color: Colors.blueGrey.shade100,
                    offset: new Offset(-3.0, -3.0),
                    blurRadius: 2.0),
                new BoxShadow(
                    color: Colors.blueGrey.shade100,
                    offset: new Offset(4.0, 4.0),
                    blurRadius: 5.0)
              ]),
          child: new IconButton(
            onPressed: () {
              widget.scaffoldKey.currentState.openDrawer();
            },
            icon: new Icon(Icons.menu),
          ),
        ),
        new ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: new Image(
              width: ScreenUtil().setWidth(65),
              height: ScreenUtil().setHeight(65),
              image: AssetImage("assets/images/abhishekProfile.JPG")),
        )
      ],
    );
  }
}
