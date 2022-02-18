import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(
      json.decode(str).map(
        (Map<String, dynamic> x) {
          return ProductModel.fromJson(x);
        },
      ) as List<ProductModel>,
    );

String productModelToJson(List<ProductModel> data) => json.encode(
      List<dynamic>.from(
        data.map<Map<String, dynamic>>((x) => x.toJson()),
      ),
    );

class ProductModel {
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'] as int,
        title: json['title'] as String,
        price: json['price'] as double,
        description: json['description'] as String,
        category: json['category'] as String,
        image: json['image'] as String,
        rating: Rating.fromJson(json['rating'] as Map<String, dynamic>),
      );

  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  Rating rating;

  static List<ProductModel> empty() {
    return [
      ProductModel(
        id: 1,
        title: '',
        price: 0,
        description: '',
        category: '',
        image: '',
        rating: Rating(
          rate: 0,
          count: 0,
        ),
      ),
    ];
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
        'rating': rating.toJson(),
      };
}

class Rating {
  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json['rate'] as double,
        count: json['count'] as int,
      );

  double rate;
  int count;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'rate': rate,
        'count': count,
      };
}
