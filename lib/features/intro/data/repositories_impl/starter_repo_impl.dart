import 'dart:ffi';
import 'package:dartz/dartz.dart';
import 'package:flutter_app3/core/errors/exceptions.dart';
import 'package:flutter_app3/core/errors/failures.dart';
import 'package:flutter_app3/features/intro/data/data_sources/starter_local_source.dart';
import 'package:flutter_app3/features/intro/domain/repositories/starter_repo.dart';

class StarterRepoImpl implements StarterRepo {
  final StarterLocalSource _starterLocalSource;
  const StarterRepoImpl(this._starterLocalSource);

  @override
  Future<Either<Failure, bool>> getStarter() async {
    try {
      Future<bool> data = _starterLocalSource.getStarter();
      return Right(data as bool);
    } on EmptyCacheException {
      return Left(EmptyCacheFailure());
    }
  }

  @override
  Void setStarter(bool val) {
    throw UnimplementedError();
  }
}
