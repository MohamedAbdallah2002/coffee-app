import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:flutter_app3/core/errors/failures.dart';

abstract class StarterRepo {
  Future<Either<Failure,bool>> getStarter();
  Void setStarter(bool val);
  
}