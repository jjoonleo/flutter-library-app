import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final booksProvider = Provider<BooksRepository>((ref) {
  return BookRepositoryImpl(ref.read(filesProvider));
});
