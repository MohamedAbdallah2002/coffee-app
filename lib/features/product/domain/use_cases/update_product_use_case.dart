import 'package:dartz/dartz.dart';
import 'package:flutter_app3/core/errors/failures.dart';
import 'package:flutter_app3/features/product/domain/entities/product.dart';
import 'package:flutter_app3/features/product/domain/repositories/product_repo.dart';

class UpdateProductUseCase {
  final ProductRepo _productRepo;

  const UpdateProductUseCase(this._productRepo);

  Future<Either<Failure,Unit>> call(Product product) {
    return _productRepo.updateProduct(product);
  }
  
}