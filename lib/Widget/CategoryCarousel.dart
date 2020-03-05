import 'package:bmf_shopping/Models/Categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCarousel extends StatefulWidget {
  @override
  _CategoryCarouselState createState() => _CategoryCarouselState();
}

class _CategoryCarouselState extends State<CategoryCarousel> {
  int _currentCategory = 0 ;

  @override
  Widget build(BuildContext context) {
    return new Container(
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
            child: new Container(
              margin: EdgeInsets.all(6.0),
              width: ScreenUtil().setWidth(250.0),
              height: ScreenUtil().setHeight(75.0),
              decoration: new BoxDecoration(
                  border: Border.all(
                      width: 2,
                      color: _currentCategory == index
                          ? Theme.of(context).primaryColor
                          : Colors.white),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          );
        },
      ),
    );
  }
}
