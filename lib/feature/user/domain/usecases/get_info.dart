import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/user/user.dart';

class GetInfoUseCase {
  final UserRepository _userRepository;

  GetInfoUseCase(this._userRepository);

  Future<Either<Failure, User>> execute() {
    return _userRepository.getInfo();
  }
}
