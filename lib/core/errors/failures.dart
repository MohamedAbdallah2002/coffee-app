import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}
class OfflineFailure extends Failure {}
class ServerFailure extends Failure {}
class EmptyCacheFailure extends Failure {}