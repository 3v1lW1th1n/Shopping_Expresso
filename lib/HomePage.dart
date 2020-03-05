import 'package:bmf_shopping/Widget/CategoryCarousel.dart';
import 'package:bmf_shopping/Widget/CustomizedAppBar.dart';
import 'package:bmf_shopping/Widget/ExploreGrid.dart';
import 'package:bmf_shopping/Widget/ExploreTray.dart';
import 'package:bmf_shopping/Widget/OurProductsTray.dart';
import 'package:bmf_shopping/Widget/SearchProducts.dart';
import 'package:bmf_shopping/Widget/SneakersCarousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              CustomizedAppBar(),
              new SizedBox(height: ScreenUtil().setHeight(10.0)),
              OurProductsTray(),
              new SizedBox(height: ScreenUtil().setHeight(30.0)),
              SearchProducts(),
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
      ),
    );
  }
}
