import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchProducts extends StatefulWidget {
  FocusNode myFocusNode ;
  SearchProducts({@required this.myFocusNode});
  @override
  _SearchProductsState createState() => _SearchProductsState();
}

class _SearchProductsState extends State<SearchProducts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(15.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: new BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width * 0.8,
            child: new TextField(
              focusNode: widget.myFocusNode,
              decoration: new InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20.0),
                  hintText: "Search Products",
                  border: InputBorder.none),
            ),
          ),
          Container(
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  new BoxShadow(
                      color: Colors.blueGrey.shade50,
                      offset: new Offset(-4.0, -4.0),
                      blurRadius: 7.0),
                  new BoxShadow(
                      color: Colors.blueGrey.shade500,
                      offset: new Offset(1.0, 1.0),
                      blurRadius: 2.0)
                ]),
            child: new IconButton(
              onPressed: () {},
              icon: new Icon(
                Icons.filter_list,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
