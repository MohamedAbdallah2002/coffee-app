import 'package:flutter_app3/features/product/data/data_sources/remote_source_product.dart';
import 'package:flutter_app3/features/product/data/repositories_impl/product_repo_impl.dart';
import 'package:flutter_app3/features/product/domain/use_cases/add_product_use_case.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  //! Blocs

  //! Usecases
  di.registerLazySingleton(() => AddProductUseCase(di()));
  //! Repositories
  di.registerLazySingleton(() => ProductRepoImpl(di()));
  //! Data Sources
  di.registerLazySingleton(() => RemoteSourceProduct());
  //! Global
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  di.registerLazySingleton(() => prefs);
}
