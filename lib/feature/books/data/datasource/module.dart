import 'package:flutter_library_app/core/api/module.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filesProvider = Provider<Files>((ref) {
  return FilesMemoryImpl();
});

final booksRemoteDatasourceProvider = Provider((ref) {
  var dioClient = ref.watch(dioClientProvider);
  return BooksRemoteDatasourceImpl(dioClient);
});
