import 'package:hive/hive.dart';

part 'Sneakers.g.dart' ;

@HiveType(typeId: 0)
class Sneakers{
  @HiveField(0)
  String name ;
  @HiveField(1)
  String condition ;
  @HiveField(2)
  double price ;
  @HiveField(3)
  String imageURL ;
  @HiveField(4)
  int avail ;
  @HiveField(5)
  int liked ;
  @HiveField(6)
  int quantity ;

  Sneakers({this.name,this.condition,this.price,this.imageURL,this.avail,this.liked,this.quantity});
}

List<Sneakers> sneakers = [
  new Sneakers(name: "Nike Air Max 200" , condition: "Trending Now" , price: 240 ,imageURL: "assets/images/shoe1.png",avail: 1,liked: 0,quantity : 2),
  new Sneakers(name : "Nike Air Max 97" , condition: "Best seller" ,price: 156,imageURL: "assets/images/shoe1.png",avail: 1,liked: 0,quantity : 2),
  new Sneakers(name : "Nike Acoustics" ,condition: "Best seller" , price : 212,imageURL: "assets/images/shoe1.png",avail: 1,liked: 0,quantity : 2),
  new Sneakers(name : "Nike Lazer 747" ,condition: "Availiable",price: 127,imageURL: "assets/images/shoe1.png",avail: 1,liked: 0,quantity : 2),
  new Sneakers(name : "Nike Sunny MX1" ,condition: "Sold Out",price : 120,imageURL: "assets/images/shoe1.png",avail: 0,liked: 0,quantity : 2)
] ;