import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/user/user.dart';

abstract class AuthRemoteDatasource {
  Future<Either<Failure, User>> signup(SignupParams registerParams);

  Future<Either<Failure, User>> login(LoginParams loginParams);

  Future<Either<Failure, User>> getInfo(String token);
}
