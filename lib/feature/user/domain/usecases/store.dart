import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/user/user.dart';

class StoreUseCase extends UseCase<void, User> {
  final UserRepository _userRepository;

  StoreUseCase(this._userRepository);

  @override
  Future<void> execute(User params) {
    return _userRepository.store(params);
  }
}
