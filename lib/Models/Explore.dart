class Explore {
  String title;
  String imageURL ;
  String avail;
  double price;
  bool verfied;

  Explore({this.title, this.imageURL,this.avail, this.price, this.verfied});
}

List<Explore> expPro = [
  new Explore(
      title: "Smartphones",imageURL: 'assets/images/explore_smartphones.png', avail: "Availiable", price: 130, verfied: true),
  new Explore(
      title: "Style Trends",imageURL: 'assets/images/explore_virat.jpg', avail: "Availiable", price: 25, verfied: true),
  new Explore(
      title: "Electronics",imageURL: 'assets/images/explore_headphones.png', avail: "Few left", price: 55, verfied: false),
  new Explore(
      title: "Laptops",imageURL: 'assets/images/explore_laptops.png', avail: "Availiable", price: 120, verfied: true),
];
