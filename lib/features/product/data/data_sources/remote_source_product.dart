import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app3/core/errors/exceptions.dart';
import 'package:flutter_app3/features/product/data/models/product_model.dart';

class RemoteSourceProduct {
  late Dio dio;
  RemoteSourceProduct() {
    BaseOptions options = BaseOptions(
      baseUrl: 'https://fakestoreapi.com',
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 30),
      receiveTimeout: Duration(seconds: 30),
    );

    dio = Dio(options);
  }

  Future<List<ProductModel>> getAllProducts() async {
    Response response = await dio.get('/products');
    if (response.statusCode == 200) {
      final List data = response.data as List;
      return data
          .map<ProductModel>((product) => ProductModel.fromJson(product))
          .toList();
    } else {
      throw ServerException();
    }
  }

  Future<Unit> addProduct(ProductModel product) async {
    Response response = await dio.post('/products', data: product.toJson());
    if (response.statusCode == 200) {
      return Future.value(Unit as FutureOr<Unit>?);
    } else {
      throw ServerException();
    }
  }

  Future<Unit> updateProduct(ProductModel product) async {
    Response response = await dio.put(
      '/products/${product.id}',
      data: product.toJson(),
    );
    if (response.statusCode == 200) {
      return Future.value(Unit as FutureOr<Unit>?);
    } else {
      throw ServerException();
    }
  }

  Future<Unit> deleteProduct(int id) async {
    Response response = await dio.delete('/products/$id');
    if (response.statusCode == 200) {
      return Future.value(Unit as FutureOr<Unit>?);
    } else {
      throw ServerException();
    }
  }

  Future<ProductModel> getProduct(int id) async {
    Response response = await dio.get('/products/$id');
    if (response.statusCode == 200) {
      return ProductModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
