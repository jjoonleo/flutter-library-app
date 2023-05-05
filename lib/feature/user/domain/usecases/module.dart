import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_library_app/feature/user/user.dart';

final postLoginProvider = Provider<PostLoginUseCase>((ref) {
  return PostLoginUseCase(ref.read(userRepositoryProvider));
});

final postSignupProvider = Provider<PostSignupUseCase>((ref) {
  return PostSignupUseCase(ref.read(userRepositoryProvider));
});

final storeProvider = Provider<StoreUseCase>((ref) {
  return StoreUseCase(ref.read(userRepositoryProvider));
});

final getInfoProvider = Provider<GetInfoUseCase>((ref) {
  return GetInfoUseCase(ref.read(userRepositoryProvider));
});

final logoutProvider = Provider<LogoutUseCase>((ref) {
  return LogoutUseCase(ref.read(userRepositoryProvider));
});
