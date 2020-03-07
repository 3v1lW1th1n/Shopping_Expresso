import 'package:bmf_shopping/Models/CartProduct.dart';
import 'package:bmf_shopping/Models/Sneakers.dart';
import 'package:bmf_shopping/Widget/CustomizedAppBar.dart';
import 'package:bmf_shopping/Widget/ShoppingCartTray.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Cart> {
  List<CartProduct> list = [
    CartProduct(cartProduct: sneakers[0], quantity: 1),
    CartProduct(cartProduct: sneakers[1], quantity: 2),
    CartProduct(cartProduct: sneakers[2], quantity: 3),
    CartProduct(cartProduct: sneakers[3], quantity: 1),
    CartProduct(cartProduct: sneakers[4], quantity: 1)
  ];

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: new Padding(
      padding: EdgeInsets.all(ScreenUtil().setWidth(15)),
      child: new Column(
        children: <Widget>[
          new Container(
            height: MediaQuery.of(context).size.height * 0.70,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new CustomizedAppBar(),
                new SizedBox(height: ScreenUtil().setHeight(10.0)),
                new ShoppingCartTray(),
                new SizedBox(
                  height: ScreenUtil().setHeight(20.0),
                ),
                new Expanded(
                  child: Container(
                    child: new ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                              bottom: ScreenUtil().setWidth(10.0),
                              left: ScreenUtil().setWidth(10.0),
                              right: ScreenUtil().setWidth(10.0)),
                          height: new ScreenUtil().setHeight(175.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Stack(
                                children: <Widget>[
                                  new Container(
                                    width: ScreenUtil().setWidth(240.0),
                                  ),
                                  new Positioned(
                                    top: ScreenUtil().setHeight(15.0),
                                    left: ScreenUtil().setWidth(15.0),
                                    child: new Container(
                                        width: ScreenUtil().setWidth(195),
                                        height: ScreenUtil().setHeight(150),
                                        decoration: new BoxDecoration(
                                            color: Colors.blueGrey.shade50,
                                            borderRadius:
                                                new BorderRadius.circular(
                                                    20.0))),
                                  ),
                                  new Image(
                                      width: ScreenUtil().setWidth(300),
                                      height: ScreenUtil().setHeight(300),
                                      fit: BoxFit.contain,
                                      image: new AssetImage(
                                          list[index].cartProduct.imageURL))
                                ],
                              ),
                              new Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new Text(
                                    list[index].cartProduct.name.toUpperCase(),
                                    style: new TextStyle(
                                        fontSize: ScreenUtil().setSp(30.0),
                                        fontWeight: FontWeight.w700),
                                  ),
                                  new Text(
                                    '\$${list[index].cartProduct.price}',
                                    style: new TextStyle(
                                        fontSize: ScreenUtil().setSp(40.0),
                                        fontWeight: FontWeight.w500,
                                        color: Theme.of(context).primaryColor),
                                  ),
                                ],
                              ),
                              new SizedBox(width: ScreenUtil().setWidth(30.0)),
                              new Container(
                                width: ScreenUtil().setWidth(80.0),
                                height: ScreenUtil().setHeight(70.0),
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  color: Colors.blueGrey.shade300,
                                ),
                                child: new Center(
                                  child: new Text('x${list[index].quantity}',
                                      style: new TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700)),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          new Padding(
            padding: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
            child: new Divider(
              color: Colors.black,
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(20.0),
                right: ScreenUtil().setWidth(20.0)),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "items",
                ),
                new Text("\$650.0", style: new TextStyle(
                  fontSize: ScreenUtil().setSp(50.0),
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(20.0),
                right: ScreenUtil().setWidth(20.0)),
            child: new Container(
              height: ScreenUtil().setHeight(75.0),
              margin: EdgeInsets.only(
                  top: ScreenUtil().setWidth(30.0),
                  bottom: ScreenUtil().setWidth(30.0)),
              child: new RaisedButton(
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Theme.of(context).primaryColor,
                child: new Center(
                  child: new Text(
                    "Next",
                    style: new TextStyle(
                        letterSpacing: 1.5,
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(25.0),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
