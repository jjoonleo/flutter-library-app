import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/user/user.dart';

import 'auth_remote.dart';

final authRemoteDatasourceProvider = Provider<AuthRemoteDatasource>((ref) {
  // var user = ref.read(userState);
  // String? token;
  // user.mapOrNull(
  //   data: (data) {
  //     token = data.user.token;
  //   },
  // );
  return AuthRemoteDatasourceImpl(DioClient());
});

final secureStorage = Provider<SecureStorage>((ref) {
  return SecureStorageImpl();
});
