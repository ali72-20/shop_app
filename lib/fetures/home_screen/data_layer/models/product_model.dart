class ProductModel {
  final String id;
  final String title;
  final String description;
  final String price;
  final String category;
  final String image;
  final String rating;

  ProductModel({required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.category,
    required this.rating});


  factory ProductModel.fromJson(json){
    return ProductModel(
      id: json["id"].toString(),
      title: json["title"],
      price: json["price"].toString(),
      description: json["description"],
      image: json['image'],
      category: json['category'],
      rating:json['rating']['rate'].toString()
    );
  }
}
