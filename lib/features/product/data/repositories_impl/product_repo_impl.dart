import 'package:dartz/dartz.dart';
import 'package:flutter_app3/core/errors/failures.dart';
import 'package:flutter_app3/features/product/domain/entities/product.dart';
import 'package:flutter_app3/features/product/domain/repositories/product_repo.dart';

class ProductRepoImpl implements ProductRepo {

  @override
  Future<Either<Failure, Unit>> addProduct(Product product) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteProduct(int id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Product>>> fetchAllProducts() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Product>> fetchProduct(int id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> updateProduct(Product product) {
    throw UnimplementedError();
  }
  
}