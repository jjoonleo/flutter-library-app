import 'package:flutter_library_app/core/api/module.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/user/user.dart';

import 'auth_remote.dart';

final authRemoteDatasourceProvider = Provider<AuthRemoteDatasource>((ref) {
  return AuthRemoteDatasourceImpl(ref.watch(dioClientProvider));
});

final secureStorage = Provider<SecureStorage>((ref) {
  return SecureStorageImpl();
});
