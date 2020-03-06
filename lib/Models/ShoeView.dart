import 'package:flutter/material.dart';

class ShowView {
  String imageURL;
  ShowView({@required this.imageURL});
}

List<ShowView> views = [
  new ShowView(imageURL: 'assets/images/show_view.png'),
  new ShowView(imageURL: 'assets/images/show_view1.png'),
  new ShowView(imageURL: 'assets/images/shoe_view2.jpg'),
  new ShowView(imageURL: 'assets/images/shoe_view3.jpg'),
];
