import 'package:flutter_app3/features/product/domain/entities/product.dart';

class ProductModel extends Product {
 const ProductModel({
    required super.title,
    required super.price,
    super.id,
    super.description,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['title'],
      price: json['price'],
      id: json['id'],
      description: json['description'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "description": description,
      'title': title,
      'price': price,
      "id": id,
    };
  }
}
