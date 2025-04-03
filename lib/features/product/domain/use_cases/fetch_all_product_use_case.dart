import 'package:dartz/dartz.dart';
import 'package:flutter_app3/core/errors/failures.dart';
import 'package:flutter_app3/features/product/domain/entities/product.dart';
import 'package:flutter_app3/features/product/domain/repositories/product_repo.dart';

class FetchAllProductUseCase {
  final ProductRepo _productRepo;
  const FetchAllProductUseCase(this._productRepo);
  Future<Either<Failure, List<Product>>> call() {
    return _productRepo.fetchAllProducts();
  }
}