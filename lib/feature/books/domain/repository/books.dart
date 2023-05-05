import 'package:flutter_library_app/feature/books/books.dart';

import '../model/books.dart';

abstract class BooksRepository {
  Future<Books> loadBooks();

  Future<void> saveBook(Book book);

  Future<void> deleteBook(Book book);

  Future<Book?> getBookById(String id);

  Future<void> deletAllBooks();

  Future<void> borrowBook(Book book);
}
