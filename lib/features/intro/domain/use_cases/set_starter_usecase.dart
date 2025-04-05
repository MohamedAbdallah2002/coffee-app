import 'package:flutter_app3/features/intro/domain/repositories/starter_repo.dart';

final class SetStarterUsecase {
  final StarterRepo starterRepo;
  const SetStarterUsecase(this.starterRepo);
  void call(bool val)  {
     starterRepo.setStarter(val);
  }
}