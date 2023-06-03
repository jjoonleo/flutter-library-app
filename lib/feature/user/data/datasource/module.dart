import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/user/user.dart';


final authRemoteDatasourceProvider = Provider<AuthRemoteDatasource>((ref) {
  return AuthRemoteDatasourceImpl(DioClient(null));
});

final secureStorage = Provider<SecureStorage>((ref) {
  return SecureStorageImpl();
});
