import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/user/user.dart';

import '../repository/user.dart';

part 'post_login.freezed.dart';
part 'post_login.g.dart';

class PostLoginUseCase extends UseCase<Either<Failure, User>, LoginParams> {
  final UserRepository _userRepository;

  PostLoginUseCase(this._userRepository);

  @override
  Future<Either<Failure, User>> execute(LoginParams params) {
    return _userRepository.login(params);
  }
}

@freezed
class LoginParams with _$LoginParams {
  factory LoginParams({required String email, required String password}) =
      _LoginParams;

  factory LoginParams.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsFromJson(json);
}
