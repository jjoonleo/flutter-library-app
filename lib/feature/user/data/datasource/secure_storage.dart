import '../../domain/model/user.dart';

abstract class SecureStorage {
  Future<void> storeToken(User user);

  Future<String?> getToken();

  Future<void> deleteToken();
}
