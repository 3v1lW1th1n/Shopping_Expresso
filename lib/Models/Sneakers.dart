class Sneakers{
  String name ;
  String condition ;
  double price ;
  String imageURL ;
  bool avail ;
  Sneakers({this.name,this.condition,this.price,this.imageURL,this.avail});
}

List<Sneakers> sneakers = [
  new Sneakers(name: "Nike Air Max 200" , condition: "Trending Now" , price: 240 ,imageURL: "assets/images/small_tilt_shoe_1.png",avail: true),
  new Sneakers(name : "Nike Air Max 97" , condition: "Best seller" ,price: 156,imageURL: "assets/images/small_tilt_shoe_2.png",avail: true),
  new Sneakers(name : "Nike Acoustics" ,condition: "Best seller" , price : 212,imageURL: "assets/images/small_tilt_shoe_3.png",avail: true),
  new Sneakers(name : "Nike Lazer 747" ,condition: "Availiable",price: 127,imageURL: "assets/images/shoe1.png",avail: true),
  new Sneakers(name : "Nike Sunny MX1" ,condition: "Sold Out",price : 120,imageURL: "assets/images/shoe2.png",avail: false)
] ;