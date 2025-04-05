import 'package:dartz/dartz.dart';
import 'package:flutter_app3/core/errors/failures.dart';
import 'package:flutter_app3/features/intro/domain/repositories/starter_repo.dart';

class GetStarterUsecase {
  final StarterRepo starterRepo;
  const GetStarterUsecase(this.starterRepo);
  Future<Either<Failure,bool>> call()  {
   return starterRepo.getStarter();
  }
}