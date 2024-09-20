class ProductModel {
  final int id;
  final String title;
  final String description;
  final double price;
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
      id: json["id"],
      title: json["title"],
      price: json["price"],
      description: json["description"],
      image: json['image'],
      category: json['category'],
      rating: json['rating']['rate']
    );
  }
}
