import 'package:flutter_library_app/data/repository/module.dart';
import 'package:flutter_library_app/domain/usecases/borrow_book.dart';
import 'package:flutter_library_app/domain/usecases/get_book_impl.dart';
import 'package:flutter_library_app/domain/usecases/get_books_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'borrow_book_impl.dart';
import 'delete_book.dart';
import 'delete_book_impl.dart';
import 'get_book.dart';
import 'get_books.dart';
import 'save_book.dart';
import 'save_book_impl.dart';

final getBooksProvider = Provider<GetBooksUseCase>((ref) {
  return GetBooksUseCaseImpl(ref.read(booksProvider));
});

final getBookProvider = Provider<GetBookUseCase>((ref) {
  return GetBookUseCaseImpl(ref.read(booksProvider));
});

final saveBookProvider = Provider<SaveBookUseCase>((ref) {
  return SaveBookUseCaseImpl(ref.read(booksProvider));
});

final deleteBookProvider = Provider<DeleteBookUseCase>((ref) {
  return DeleteBookUseCaseImpl(ref.read(booksProvider));
});

final borrowBookProvider = Provider<BorrowBookUseCase>((ref) {
  return BorrowBookUseCaseImpl(ref.read(booksProvider));
});
