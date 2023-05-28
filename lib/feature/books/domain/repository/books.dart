import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_library_app/core/core.dart';

abstract class BooksRepository {
  Future<Either<Failure,Books>> loadBooks();

  Future<Either<Failure,void>> saveBook(Book book);

  Future<Either<Failure,void>> deleteBook(Book book);

  Future<Either<Failure,Book?>> getBookById(String id);

  Future<Either<Failure,void>> deletAllBooks();

  Future<Either<Failure,Book>> borrowBook(Book book, String auth);
}
