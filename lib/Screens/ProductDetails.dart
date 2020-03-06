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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).backgroundColor,
      body: new SafeArea(
        child: new Stack(
          children: <Widget>[
            new Hero(
              tag: widget.product.name,
              child: new Container(
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
                          widget.product.liked = !widget.product.liked;
                        });
                      },
                      icon: widget.product.liked == true
                          ? new Icon(
                              FontAwesomeIcons.solidHeart,
                              color: Colors.red,
                            )
                          : new Icon(FontAwesomeIcons.heart),
                    ),
                  ),
                ],
              ),
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
                        margin: EdgeInsets.all(ScreenUtil().setWidth(10.0)),
                        width: ScreenUtil().setWidth(150.0),
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(10.0),
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
                              image: new AssetImage(views[index].imageURL)),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
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
