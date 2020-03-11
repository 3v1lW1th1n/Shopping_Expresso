import 'package:bmf_shopping/Models/CartProduct.dart';
import 'package:bmf_shopping/Models/Sneakers.dart';
import 'package:bmf_shopping/Widget/CustomizedAppBar.dart';
import 'package:bmf_shopping/Widget/ShoppingCartTray.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';

class Cart extends StatefulWidget {
  GlobalKey<ScaffoldState> scaffoldKey ;
  Cart({@required this.scaffoldKey});
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

  bool _deleteMode = true;
  String _cashToPay = "Love";
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: new Padding(
      padding: EdgeInsets.all(ScreenUtil().setWidth(15)),
      child: Column(
        children: <Widget>[
          new CustomizedAppBar(scaffoldKey: widget.scaffoldKey,),
          new SizedBox(height: ScreenUtil().setHeight(10.0)),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(15.0),
                ),
                child: new Text("Shopping",
                    style: new TextStyle(
                        fontSize: ScreenUtil().setSp(50),
                        fontWeight: FontWeight.w200)),
              ),
              new SizedBox(height: ScreenUtil().setHeight(9.0)),
              Padding(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(15.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text("Cart",
                        style: new TextStyle(
                            fontSize: ScreenUtil().setSp(50),
                            fontWeight: FontWeight.w500)),
                    new IconButton(
                        icon: new Icon(
                          _deleteMode ? Icons.delete_outline : Icons.save,
                          color:
                              _deleteMode ? Colors.red.shade700 : Colors.green,
                          size: 35.0,
                        ),
                        onPressed: () {
                          setState(() {
                            if (_deleteMode == false)
                              _deleteMode = true;
                            else
                              _deleteMode = false;
                          });
                        })
                  ],
                ),
              ),
            ],
          ),
          new SizedBox(
            height: ScreenUtil().setHeight(20.0),
          ),
          new FutureBuilder(
            future: Hive.openBox('cartProduct'),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else {
                  final cart = Hive.box('cartProducts');
                  print(cart);
                  _cashToPay = _totalExpenses(cart);
                  return new Column(
                    children: <Widget>[
                      new Container(
                        height: MediaQuery.of(context).size.height * 0.52,
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Expanded(
                              child: Container(
                                child: cart.length > 0
                                    ? new ListView.builder(
                                        itemCount: cart.length,
                                        itemBuilder: (context, index) {
                                          final product =
                                              cart.getAt(index) as Sneakers;
                                          print(product.quantity);
                                          return Container(
                                            margin: EdgeInsets.only(
                                                bottom:
                                                    ScreenUtil().setWidth(10.0),
                                                left:
                                                    ScreenUtil().setWidth(10.0),
                                                right: ScreenUtil()
                                                    .setWidth(10.0)),
                                            height: new ScreenUtil()
                                                .setHeight(175.0),
                                            child: new Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                new Stack(
                                                  children: <Widget>[
                                                    new Container(
                                                      width: ScreenUtil()
                                                          .setWidth(240.0),
                                                    ),
                                                    new Positioned(
                                                      top: ScreenUtil()
                                                          .setHeight(15.0),
                                                      left: ScreenUtil()
                                                          .setWidth(15.0),
                                                      child: new Container(
                                                          width: ScreenUtil()
                                                              .setWidth(195),
                                                          height: ScreenUtil()
                                                              .setHeight(150),
                                                          decoration: new BoxDecoration(
                                                              color: Colors
                                                                  .blueGrey
                                                                  .shade50,
                                                              borderRadius:
                                                                  new BorderRadius
                                                                          .circular(
                                                                      20.0))),
                                                    ),
                                                    new Image(
                                                        width: ScreenUtil()
                                                            .setWidth(300),
                                                        height: ScreenUtil()
                                                            .setHeight(300),
                                                        fit: BoxFit.contain,
                                                        image: new AssetImage(
                                                            product.imageURL))
                                                  ],
                                                ),
                                                new Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    new Text(
                                                      product.name
                                                          .toUpperCase(),
                                                      style: new TextStyle(
                                                          fontSize: ScreenUtil()
                                                              .setSp(30.0),
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    new Text(
                                                      '\$${product.price}',
                                                      style: new TextStyle(
                                                          fontSize: ScreenUtil()
                                                              .setSp(40.0),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Theme.of(
                                                                  context)
                                                              .primaryColor),
                                                    ),
                                                  ],
                                                ),
                                                new SizedBox(
                                                    width: ScreenUtil()
                                                        .setWidth(30.0)),
                                                new GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      if (_deleteMode) {
                                                        // product.quantity++;
                                                        int quan =
                                                            product.quantity;
                                                        quan++;
                                                        cart.putAt(
                                                            index,
                                                            Sneakers(
                                                                name: product
                                                                    .name,
                                                                condition: product
                                                                    .condition,
                                                                price: product
                                                                    .price,
                                                                imageURL: product
                                                                    .imageURL,
                                                                avail: product
                                                                    .avail,
                                                                liked: product
                                                                    .liked,
                                                                quantity:
                                                                    quan));
                                                      } else {
                                                        if (product.quantity >
                                                            1) {
                                                          int quan =
                                                              product.quantity;
                                                          quan--;
                                                          cart.putAt(
                                                              index,
                                                              Sneakers(
                                                                  name: product
                                                                      .name,
                                                                  condition: product
                                                                      .condition,
                                                                  price: product
                                                                      .price,
                                                                  imageURL: product
                                                                      .imageURL,
                                                                  avail: product
                                                                      .avail,
                                                                  liked: product
                                                                      .liked,
                                                                  quantity:
                                                                      quan));
                                                        } else {
                                                          cart.deleteAt(index);
                                                          Scaffold.of(context)
                                                              .showSnackBar(
                                                                  new SnackBar(
                                                            content: new Text(
                                                              "Product removed",
                                                              style: new TextStyle(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .primaryColor),
                                                            ),
                                                          ));
                                                        }
                                                      }
                                                    });
                                                  },
                                                  child: new Container(
                                                    width: ScreenUtil()
                                                        .setWidth(80.0),
                                                    height: ScreenUtil()
                                                        .setHeight(70.0),
                                                    decoration: new BoxDecoration(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(10.0),
                                                        color: _deleteMode ==
                                                                false
                                                            ? Colors.transparent
                                                            : Colors.blueGrey
                                                                .shade300,
                                                        border: new Border.all(
                                                            color: _deleteMode ==
                                                                    false
                                                                ? Colors.red
                                                                : Colors
                                                                    .transparent)),
                                                    child: new Center(
                                                      child: new Text(
                                                          'x${product.quantity}',
                                                          style: new TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      )
                                    : new FittedBox(
                                        child: Column(
                                          children: <Widget>[
                                            new Text(
                                              "No Items",
                                              style: new TextStyle(
                                                  color: Colors.black26,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            new Text(
                                              "Hosted on Github with 💚 by Abhishek",
                                              style: new TextStyle(
                                                  fontSize: 2.0,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
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
                              '${cart.length} items',
                              style: new TextStyle(
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.2,
                                color: Colors.blueGrey.shade500
                              ),
                            ),
                            new Text("\$${_cashToPay}",
                                style: new TextStyle(
                                    fontSize: ScreenUtil().setSp(50.0),
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(20.0),
                            right: ScreenUtil().setWidth(20.0)),
                        child: new Container(
                          height: ScreenUtil().setHeight(65.0),
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
                  );
                }
              } else {
                return new Center(
                  child: new CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
    ));
  }

  String _totalExpenses(Box<dynamic> cart) {
    double sum = 0;
    for (int i = 0; i < cart.length; i++) {
      final product = cart.getAt(i) as Sneakers;
      sum = sum + product.price * product.quantity;
    }
    return sum.toString();
  }
}
