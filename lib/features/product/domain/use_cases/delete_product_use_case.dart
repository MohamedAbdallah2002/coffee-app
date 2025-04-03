import 'package:dartz/dartz.dart';
import 'package:flutter_app3/core/errors/failures.dart';
import 'package:flutter_app3/features/product/domain/repositories/product_repo.dart';

class DeleteProductUseCase {
  final ProductRepo _productRepo;

  const DeleteProductUseCase(this._productRepo);

  Future<Either<Failure,Unit>> call(int id) {
    return _productRepo.deleteProduct(id);
  }
  
}