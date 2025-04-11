import 'dart:io';
import 'package:flutter_app3/features/product/data/models/product_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

abstract class LocalSourceProduct {
  Future<void> init();
  Future<int> addProduct(ProductModel product);
  Future<int> updateProduct(ProductModel product);
  Future<int> deleteProduct(int id);
  Future<ProductModel> getProduct(int id);
  Future<List<ProductModel>> getAllProducts();
}

class LocalSourceProductImpl implements LocalSourceProduct {
  static const String _tableName = 'products';
  static Database? _database;
  Future<Database> get _db async {
    if (_database != null) return _database!;
    return await _initDB();
  }

  @override
  Future<void> init() async {
    await _db;
  }

  Future<Database> _initDB() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, 'products.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE $_tableName (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL,
            price REAL NOT NULL,
            quantity INTEGER NOT NULL,
            description TEXT
          )
        ''');
      },
    );
  }

  @override
  Future<int> addProduct(ProductModel product) async {
    final db = await _db;
    return await db.insert(_tableName, product.toJson());
  }

  @override
  @override
  Future<int> updateProduct(ProductModel product) async {
    final db = await _db;
    return await db.update(
      _tableName,
      product.toJson(),
      where: 'id = ?',
      whereArgs: [product.id],
    );
  }

  @override
  Future<int> deleteProduct(int id) async {
    final db = await _db;
    return await db.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }

  @override
  Future<ProductModel> getProduct(int id) async {
    final db = await _db;
    final List<Map<String, dynamic>> maps = await db.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return ProductModel.fromJson(maps.first);
    } else {
      throw Exception('Product not found');
    }
  }

  @override
  Future<List<ProductModel>> getAllProducts() async {
    final db = await _db;
    final List<Map<String, dynamic>> maps = await db.query(_tableName);
    return List.generate(maps.length, (i) {
      return ProductModel.fromJson(maps[i]);
    });
  }
}
