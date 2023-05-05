import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_library_app/feature/user/user.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(
      ref.read(authRemoteDatasourceProvider), ref.read(secureStorage));
});
