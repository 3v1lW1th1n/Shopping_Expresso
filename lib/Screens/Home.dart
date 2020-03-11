import 'package:bmf_shopping/Widget/CategoryCarousel.dart';
import 'package:bmf_shopping/Widget/CustomizedAppBar.dart';
import 'package:bmf_shopping/Widget/ExploreGrid.dart';
import 'package:bmf_shopping/Widget/ExploreTray.dart';
import 'package:bmf_shopping/Widget/OurProductsTray.dart';
import 'package:bmf_shopping/Widget/SearchProducts.dart';
import 'package:bmf_shopping/Widget/SneakersCarousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  FocusNode myFocusNode ;
  GlobalKey<ScaffoldState> scaffoldKey ;
  Home({@required this.myFocusNode,@required this.scaffoldKey});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(15)),
        child: new ListView(
          shrinkWrap: true,
          children: <Widget>[
            CustomizedAppBar(scaffoldKey: widget.scaffoldKey,),
            new SizedBox(height: ScreenUtil().setHeight(10.0)),
            OurProductsTray(),
            new SizedBox(height: ScreenUtil().setHeight(30.0)),
            SearchProducts(myFocusNode: widget.myFocusNode,),
            new SizedBox(height: ScreenUtil().setHeight(40.0)),
            CategoryCarousel(),
            new SizedBox(height: ScreenUtil().setHeight(30.0)),
            SneakersCarousel(),
            new SizedBox(height: ScreenUtil().setHeight(30.0)),
            ExploreTray(),
            new SizedBox(height: ScreenUtil().setHeight(30.0)),
            ExploreGrid()
          ],
        ),
      ),
    );
  }
}
