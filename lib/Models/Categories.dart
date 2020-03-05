import 'package:flutter/material.dart';

class Categories {
  String categoryName ;
  String imageURL ;

  Categories({@required this.categoryName ,@required this.imageURL});
}

List<Categories> cat = [
  new Categories(categoryName: "Sneakers"
  , imageURL: "assets/images/show_1.png" ),
  new Categories(categoryName: "Watches"
  , imageURL: "assets/images/watch.png"),
  new Categories(categoryName: "Jackets", imageURL: 'assets/images/jacket.png'),
  new Categories(categoryName: "Smartphones", imageURL: 'assets/images/smartphones.png'),
  new Categories(categoryName: "LED TV's", imageURL: 'assets/images/ledtv.png')
] ;