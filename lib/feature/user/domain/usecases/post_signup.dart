import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/user/user.dart';

part 'post_signup.freezed.dart';
part 'post_signup.g.dart';

class PostSignupUseCase extends UseCase<Either<Failure, User>, SignupParams> {
  final UserRepository _userRepository;

  PostSignupUseCase(this._userRepository);

  @override
  Future<Either<Failure, User>> execute(SignupParams params) {
    return _userRepository.signup(params);
  }
}

@freezed
class SignupParams with _$SignupParams {
  factory SignupParams({
    required String email,
    required String password,
    required String name,
    required String grade,
    required String classroom,
    required String number,
  }) = _SignupParams;

  factory SignupParams.fromJson(Map<String, dynamic> json) =>
      _$SignupParamsFromJson(json);
}
