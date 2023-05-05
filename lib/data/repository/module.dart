import 'package:flutter_library_app/data/repository/books_impl.dart';
import 'package:flutter_library_app/data/source/module.dart';
import 'package:flutter_library_app/domain/repository/books.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final booksProvider = Provider<BooksRepository>((ref) {
  return BookRepositoryImpl(ref.read(filesProvider));
});
