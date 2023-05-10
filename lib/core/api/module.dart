import 'package:flutter/foundation.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/user/presentation/viewmodel/module.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioClientProvider = Provider<DioClient>((ref) {
  return DioClient(null);
});
