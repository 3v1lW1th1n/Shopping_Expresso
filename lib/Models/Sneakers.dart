class Sneakers{
  String name ;
  String condition ;
  double price ;
  String imageURL ;
  bool avail ;
  bool liked ;
  Sneakers({this.name,this.condition,this.price,this.imageURL,this.avail,this.liked});
}

List<Sneakers> sneakers = [
  new Sneakers(name: "Nike Air Max 200" , condition: "Trending Now" , price: 240 ,imageURL: "assets/images/shoe1.png",avail: true,liked: false),
  new Sneakers(name : "Nike Air Max 97" , condition: "Best seller" ,price: 156,imageURL: "assets/images/shoe1.png",avail: true,liked: false),
  new Sneakers(name : "Nike Acoustics" ,condition: "Best seller" , price : 212,imageURL: "assets/images/shoe1.png",avail: true,liked: false),
  new Sneakers(name : "Nike Lazer 747" ,condition: "Availiable",price: 127,imageURL: "assets/images/shoe1.png",avail: true,liked: false),
  new Sneakers(name : "Nike Sunny MX1" ,condition: "Sold Out",price : 120,imageURL: "assets/images/shoe1.png",avail: false,liked: false)
] ;