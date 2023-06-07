import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_library_app/core/core.dart';

abstract class BooksRepository {
  Future<Either<Failure, Books>> loadBooks();

  Future<Either<Failure, Books>> saveBook(Book book);

  Future<Either<Failure, void>> deleteBook(Book book);

  Future<Either<Failure, Book?>> getBookById(String id);

  Future<Either<Failure, void>> deletAllBooks();

  Future<Either<Failure, Checkouts>> borrowBook(Book book, String auth);

  Future<Either<Failure, Checkouts>> returnBook(Book book);

  Future<Either<Failure, Checkouts>> loadCheckouts();

  Future<Either<Failure, Checkout?>> getCheckoutByBookId(
      String id, String auth);
}
