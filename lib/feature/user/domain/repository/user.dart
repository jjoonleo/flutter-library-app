import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/user/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> login(LoginParams loginParams);

  Future<void> store(User user);

  Future<Either<Failure, User>> getInfo();

  Future<Either<Failure, User>> signup(SignupParams signupParams);

  Future<void> logout();
}
