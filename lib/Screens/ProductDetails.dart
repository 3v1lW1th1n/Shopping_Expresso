import 'package:bmf_shopping/Models/ShoeView.dart';
import 'package:bmf_shopping/Models/Sneakers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetails extends StatefulWidget {
  Sneakers product;
  ProductDetails({@required this.product});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _selectedView = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> sizes = ["US 6", "US 7", "US 8", "US 9", "US 10"];
  List col = [
    Colors.pink.shade300,
    Colors.purple.shade200,
    Colors.black26,
    Colors.amberAccent,
    Colors.cyan
  ];
  int _colSelected = 0;
  int _selectedSize = 0;

  String _buildStars(int n) {
    String stars = '';
    for (int i = 0; i < n; i++) stars = stars + '⭐';
    return stars;
  }

  bool _barOpened = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: new GestureDetector(
        onVerticalDragUpdate: (DragUpdateDetails details) {
          if (details.delta.dy < -10) {
            setState(() {
              _barOpened = true;
            });
          } else if (details.delta.dy > 10) {
            setState(() {
              _barOpened = false;
            });
          }
        },
        child: new SafeArea(
          child: new Stack(
            children: <Widget>[
              new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              new Hero(
                tag: widget.product.name,
                child: new Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0)),
                    color: Colors.white,
                  ),
                  child: new Stack(
                    children: <Widget>[
                      new Positioned(
                        top: MediaQuery.of(context).size.width * 0.25,
                        child: new Center(
                          child: new Container(
                            width: MediaQuery.of(context).size.width,
                            child: new FittedBox(
                              fit: BoxFit.contain,
                              child: new Text(
                                "BMF",
                                style: new TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.grey.shade200),
                              ),
                            ),
                          ),
                        ),
                      ),
                      new ClipRRect(
                        child: new Image(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width,
                            image: new AssetImage(widget.product.imageURL)),
                      ),
                      new Positioned(
                        bottom: ScreenUtil().setHeight(30.0),
                        left: MediaQuery.of(context).size.width * 0.05,
                        child: new Container(
                          height: ScreenUtil().setHeight(90.0),
                          width: MediaQuery.of(context).size.width,
                          child: new ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: views.length,
                            itemBuilder: (context, index) {
                              return new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedView = index;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(
                                      ScreenUtil().setWidth(10.0)),
                                  width: ScreenUtil().setWidth(150.0),
                                  decoration: new BoxDecoration(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                    border: new Border.all(
                                        color: _selectedView == index
                                            ? Theme.of(context).primaryColor
                                            : Colors.blueGrey,
                                        width: 3),
                                  ),
                                  child: new ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: new Image(
                                        fit: BoxFit.fitWidth,
                                        image: new AssetImage(
                                            views[index].imageURL)),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              new Padding(
                padding: EdgeInsets.all(ScreenUtil().setWidth(15.0)),
                child: new Row(
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
                          Navigator.pop(context);
                        },
                        icon: new Icon(Icons.arrow_back),
                      ),
                    ),
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
                          setState(() {
                            if (widget.product.liked == 0) {
                              widget.product.liked = 1;
                            } else {
                              widget.product.liked = 0;
                            }
                          });
                        },
                        icon: widget.product.liked == true
                            ? new Icon(
                                FontAwesomeIcons.solidHeart,
                                color: Colors.pink,
                              )
                            : new Icon(FontAwesomeIcons.heart),
                      ),
                    ),
                  ],
                ),
              ),
              //Do the Sit there .
              new AnimatedPositioned(
                duration: new Duration(milliseconds: 500),
                curve: Curves.easeInCubic,
                bottom: _barOpened
                    ? 0.0
                    : -MediaQuery.of(context).size.height * 0.28,
                child: new Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(ScreenUtil().setWidth(3.0)),
                  decoration: new BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0)),
                  ),
                  child: new Column(
                    children: <Widget>[
                      new Icon(
                        _barOpened
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                        size: 40.0,
                      ),
                      new Padding(
                        padding: EdgeInsets.all(ScreenUtil().setWidth(15.0)),
                        child: new Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  widget.product.name,
                                  style: new TextStyle(
                                      fontSize: ScreenUtil().setSp(40.0),
                                      fontWeight: FontWeight.w600),
                                ),
                                new Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    new Text(
                                      '\$${widget.product.price}',
                                      style: new TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: ScreenUtil().setSp(60.0),
                                          color: Colors.black87),
                                    ),
                                    new SizedBox(
                                        height: ScreenUtil().setHeight(10.0)),
                                    new Text(
                                      _buildStars(5),
                                      style: new TextStyle(
                                          fontSize: ScreenUtil().setSp(25.0)),
                                    )
                                  ],
                                )
                              ],
                            ),
                            new Align(
                              alignment: Alignment.topLeft,
                              child: new Text(
                                "Availiable Sizes",
                                style: new TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: ScreenUtil().setSp(32.0)),
                              ),
                            ),
                            new SizedBox(
                              height: ScreenUtil().setHeight(15.0),
                            ),
                            new Container(
                              height: ScreenUtil().setHeight(75.0),
                              child: new ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: sizes.length,
                                itemBuilder: (context, index) {
                                  return new GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedSize = index;
                                      });
                                    },
                                    child: new Container(
                                      width: ScreenUtil().setWidth(150.0),
                                      height: ScreenUtil().setHeight(30.0),
                                      margin: EdgeInsets.only(
                                          left: ScreenUtil().setWidth(10.0)),
                                      decoration: new BoxDecoration(
                                          color: _selectedSize == index
                                              ? Theme.of(context).primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              new BorderRadius.circular(10.0),
                                          border: new Border.all(
                                            width: 2.0,
                                            color: _selectedSize == index
                                                ? Theme.of(context).primaryColor
                                                : Colors.grey,
                                          )),
                                      child: new Center(
                                        child: new Text(
                                          sizes[index],
                                          style: new TextStyle(
                                            fontSize: ScreenUtil().setSp(25.0),
                                            color: _selectedSize == index
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            new SizedBox(height: ScreenUtil().setHeight(17.0)),
                            new Align(
                              alignment: Alignment.topLeft,
                              child: new Text(
                                "Color",
                                style: new TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: ScreenUtil().setSp(28.0)),
                              ),
                            ),
                            new SizedBox(height: ScreenUtil().setHeight(10.0)),
                            new Container(
                              height: ScreenUtil().setHeight(30.0),
                              child: new ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: col.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: ScreenUtil().setHeight(30.0),
                                    width: ScreenUtil().setWidth(30.0),
                                    margin: EdgeInsets.only(
                                        left: ScreenUtil().setWidth(10.0)),
                                    child: ChoiceChip(
                                      selected: _colSelected == index,
                                      label: new SizedBox.shrink(),
                                      backgroundColor: col[index],
                                      onSelected: (bool _value) {
                                        setState(() {
                                          _colSelected = _value ? index : null;
                                        });
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                            new SizedBox(height: ScreenUtil().setHeight(17.0)),
                            new Align(
                              alignment: Alignment.topLeft,
                              child: new Text(
                                "Details",
                                style: new TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: ScreenUtil().setSp(30.0)),
                              ),
                            ),
                            new SizedBox(height: ScreenUtil().setHeight(20.0)),
                            new Text(
                              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.\n Eget mi proin sed libero enim sed faucibus. Morbi tristique senectus et netus. Dolor sit amet consectetur adipiscing elit ut aliquam purus sit.Id velit ut tortorpretium viverra.",
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              new Positioned(
                bottom: 0.0,
                child: new Container(
                  width: MediaQuery.of(context).size.width,
                  height: ScreenUtil().setHeight(100.0),
                  decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.0),
                            Color.fromRGBO(255, 255, 255, 0.3),
                            Color.fromRGBO(255, 255, 255, 1.0),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 0.5, 1.0])),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => _buildSnackBar(context),
        child: new Icon(FontAwesomeIcons.cartPlus),
      ),
    );
  }

  _buildSnackBar(BuildContext context) {
    final snkBar = new SnackBar(
        content: new Text(
      "Added to Cart !",
      style: new TextStyle(color: Colors.redAccent),
    ));
    _scaffoldKey.currentState.showSnackBar(snkBar);
  }
}
