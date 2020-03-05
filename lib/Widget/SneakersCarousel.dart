import 'package:bmf_shopping/Models/Sneakers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SneakersCarousel extends StatefulWidget {
  @override
  _SneakersCarouselState createState() => _SneakersCarouselState();
}

class _SneakersCarouselState extends State<SneakersCarousel> {
  @override
  Widget build(BuildContext context) {
    return new Container(
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
    );
  }
}
