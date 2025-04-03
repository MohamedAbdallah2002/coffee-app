import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String title;
  final String? description;
  final double price;
  final int? id;


 const Product( { this.id, required this.title,  this.description, required this.price});
  
  @override
  List<Object?> get props => [id, title, price];

}