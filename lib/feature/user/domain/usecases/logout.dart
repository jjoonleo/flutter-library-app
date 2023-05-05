import 'package:flutter_library_app/feature/user/user.dart';

class LogoutUseCase {
  final UserRepository _userRepository;

  LogoutUseCase(this._userRepository);

  Future<void> execute() {
    return _userRepository.logout();
  }
}
