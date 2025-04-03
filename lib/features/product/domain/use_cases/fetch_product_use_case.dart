import 'package:dartz/dartz.dart';
import 'package:flutter_app3/core/errors/failures.dart';
import 'package:flutter_app3/features/product/domain/entities/product.dart';
import 'package:flutter_app3/features/product/domain/repositories/product_repo.dart';

class FetchProductUseCase {
  final ProductRepo _productRepo;
  const FetchProductUseCase(this._productRepo);
  Future<Either<Failure, Product>>call(int id) {
    return _productRepo.fetchProduct(id);
  }
}
