import 'package:flutter_library_app/data/source/files_memory_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'files.dart';

final filesProvider = Provider<Files>((ref) {
  return FilesMemoryImpl();
});
