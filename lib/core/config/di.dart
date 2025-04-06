import 'package:flutter_app3/features/intro/data/data_sources/starter_local_source.dart';
import 'package:flutter_app3/features/intro/data/repositories_impl/starter_repo_impl.dart';
import 'package:flutter_app3/features/intro/domain/use_cases/get_starter_usecase.dart';
import 'package:flutter_app3/features/intro/domain/use_cases/set_starter_usecase.dart';
import 'package:flutter_app3/features/product/data/data_sources/remote_source_product.dart';
import 'package:flutter_app3/features/product/data/repositories_impl/product_repo_impl.dart';
import 'package:flutter_app3/features/product/domain/use_cases/add_product_use_case.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  //! Blocs

  //! Usecases
  di.registerLazySingleton(() => GetStarterUsecase(di()));
  di.registerLazySingleton(() => SetStarterUsecase(di()));
  di.registerLazySingleton(() => AddProductUseCase(di()));
  //! Repositories
  di.registerLazySingleton(() => StarterRepoImpl(di()));
  di.registerLazySingleton(() => ProductRepoImpl(di()));
  //! Data Sources
  di.registerLazySingleton(() => StarterLocalSource(di()));
  di.registerLazySingleton(() => RemoteSourceProduct());
  //! Global
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  di.registerLazySingleton(() => prefs);
}
