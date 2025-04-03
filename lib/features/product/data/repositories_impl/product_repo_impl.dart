import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_app3/core/errors/exceptions.dart';
import 'package:flutter_app3/core/errors/failures.dart';
import 'package:flutter_app3/features/product/data/data_sources/remote_source_product.dart';
import 'package:flutter_app3/features/product/data/models/product_model.dart';
import 'package:flutter_app3/features/product/domain/entities/product.dart';
import 'package:flutter_app3/features/product/domain/repositories/product_repo.dart';

class ProductRepoImpl implements ProductRepo {
  final RemoteSourceProduct _remoteSourceProduct;
  ProductRepoImpl(this._remoteSourceProduct);
  @override
  Future<Either<Failure, Unit>> addProduct(Product product) {
    try {
      _remoteSourceProduct.addProduct(
        ProductModel(
          title: product.title,
          price: product.price,
          description: product.description,
        ),
      );
    } on ServerException {
      return Future.value(ServerFailure() as FutureOr<Either<Failure, Unit>>?);
    }
    return Future.value(Right(Unit) as FutureOr<Either<Failure, Unit>>?);
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
