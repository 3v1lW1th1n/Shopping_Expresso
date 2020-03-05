import 'package:bmf_shopping/Models/Explore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreGrid extends StatefulWidget {
  @override
  _ExploreGridState createState() => _ExploreGridState();
}

class _ExploreGridState extends State<ExploreGrid> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(15.0)),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.4,
          child: GridView.count(
            shrinkWrap: false,
            primary: true,
            childAspectRatio:
                (ScreenUtil().setWidth(300) / ScreenUtil().setHeight(400)),
            crossAxisCount: 2,
            children: List.generate(4, (index) {
              return Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(8.0),
                height: ScreenUtil().setHeight(420),
                width: ScreenUtil().setWidth(320),
                decoration: new BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: new Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    new Positioned(
                      top: ScreenUtil().setHeight(50.0),
                      child: new Container(
                        height: ScreenUtil().setHeight(200.0),
                        width: ScreenUtil().setWidth(160.0),
                        decoration: new BoxDecoration(
                            color: Colors.blueGrey.shade50,
                            borderRadius: new BorderRadius.circular(100.0)),
                      ),
                    ),
                    new Container(
                      height: ScreenUtil().setHeight(325),
                      child: new Image(
                          width: ScreenUtil().setWidth(300),
                          fit: BoxFit.contain,
                          image: new AssetImage(expPro[index].imageURL)),
                    ),
                    new Positioned(
                      bottom: ScreenUtil().setHeight(2.0),
                      child: new Container(
                        padding:
                            EdgeInsets.only(left: ScreenUtil().setWidth(10.0)),
                        height: ScreenUtil().setHeight(110.0),
                        width: ScreenUtil().setWidth(295.0),
                        decoration: new BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Text(expPro[index].title,
                                    style: new TextStyle(
                                        fontSize: ScreenUtil().setSp(30.0),
                                        fontWeight: FontWeight.w500)),
                                expPro[index].verfied
                                    ? new Icon(
                                        Icons.verified_user,
                                        color: Colors.amber.shade600,
                                        size: 25.0,
                                      )
                                    : SizedBox(
                                        width: 1.0,
                                      ),
                              ],
                            ),
                            new Text(
                              expPro[index].avail,
                              style: new TextStyle(
                                fontSize: ScreenUtil().setSp(20.0),
                                fontWeight: FontWeight.w400,
                                color: expPro[index].avail == "Availiable"
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                new Text(
                                  'Starting just at  \$',
                                  style: new TextStyle(
                                      fontSize: ScreenUtil().setSp(20.0),
                                      fontWeight: FontWeight.w700),
                                ),
                                new Text(
                                  '${expPro[index].price}',
                                  style: new TextStyle(
                                      fontSize: ScreenUtil().setSp(35.0),
                                      fontWeight: FontWeight.w800,
                                      color: Theme.of(context).primaryColor),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ));
  }
}
