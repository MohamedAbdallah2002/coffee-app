import 'package:flutter_app3/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_app3/features/product/domain/entities/product.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<Product>>> fetchAllProducts();
  Future<Either<Failure,Product>>fetchProduct(int id);
  Future<Either<Failure,Unit>> addProduct(Product product);
  Future<Either<Failure,Unit>> updateProduct(Product product);
  Future<Either<Failure,Unit>> deleteProduct(int id);
  
}