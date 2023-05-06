import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

abstract class BooksRemoteDatasource {
  Future<Either<Failure, Books>> load();

  Future<Either<Failure, Book?>> getById(String id);

  Future<Either<Failure, void>> save(Book book);

  Future<Either<Failure, void>> borrowBook(Book book);
}
