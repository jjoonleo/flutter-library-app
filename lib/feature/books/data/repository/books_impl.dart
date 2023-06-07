import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

class BookRepositoryImpl extends BooksRepository {
  BookRepositoryImpl(
      this.files, this.booksRemoteDatasource, this.checkoutsRemoteDatasource) {
    loadBooks();
    loadCheckouts();
  }

  final CheckoutsRemoteDatasourceImpl checkoutsRemoteDatasource;
  final Files files;
  final BooksRemoteDatasourceImpl booksRemoteDatasource;
  late Books books;
  late Checkouts checkouts;

  late final String path = 'books.json';

  @override
  Future<Either<Failure, void>> deletAllBooks() async {
    // Delete files py path
    await files.delete(path);
    return right(null);
  }

  @override
  Future<Either<Failure, void>> deleteBook(Book book) async {
    final books = await loadBooks();

    return books.fold((l) => left(l), (r) async {
      // Remove the book from the list
      final newBooks =
          r.values.where((element) => element.id != book.id).toList();
      // Save the new list
      await files.write(path, jsonEncode(Books(values: newBooks).toJson()));
      return right(null);
    });
  }

  @override
  Future<Either<Failure, Books>> loadBooks() async {
    // Load the books from path
    Either<Failure, Books> result = await booksRemoteDatasource.load();
    return result.fold((l) => Left(l), (r) {
      books = r;
      return Right(r);
    });
  }

  @override
  Future<Either<Failure, Book?>> getBookById(String id) async {
    // Get a book by id
    return Right(books.values.singleWhereOrNull((element) => element.id == id));
  }

  @override
  Future<Either<Failure, Books>> saveBook(Book book) async {
    final result = await booksRemoteDatasource.save(book);
    return result.fold((l) => Left(l), (r) {
      List<Book> newBooks = List.from(books.values);
      newBooks.add(book);
      books = books.copyWith(values: newBooks);
      return Right(books);
    });
  }

  @override
  Future<Either<Failure, Checkouts>> borrowBook(Book book, String auth) async {
    final result = await booksRemoteDatasource.borrowBook(book, auth);
    return result.fold((l) => Left(l), (r) {
      List<Book> newBooks = [];
      Book borrowedBook = books.values
          .firstWhere(
            (element) => element.id == book.id,
          )
          .copyWith(available: r.id);
      books.values.forEach((element) {
        if (element.id == book.id) {
          newBooks.add(borrowedBook);
        } else {
          newBooks.add(element);
        }
      });
      books = books.copyWith(values: newBooks);
      List<Checkout> newCheckouts = List.from(checkouts.values);
      newCheckouts.add(r);
      checkouts = checkouts.copyWith(values: newCheckouts);
      return Right(checkouts);
    });
  }

  @override
  Future<Either<Failure, Checkouts>> returnBook(Book book) async {
    final result = await booksRemoteDatasource.returnBook(book);
    return result.fold((l) => Left(l), (r) {
      List<Book> newBooks = [];
      Book borrowedBook = books.values
          .firstWhere(
            (element) => element.id == book.id,
          )
          .copyWith(available: null);
      books.values.forEach((element) {
        if (element.id == book.id) {
          newBooks.add(borrowedBook);
        } else {
          newBooks.add(element);
        }
      });
      books = books.copyWith(values: newBooks);
      List<Checkout> newCheckouts = List.from(checkouts.values);
      newCheckouts.removeWhere(
        (element) => element.book == book.id,
      );
      checkouts = checkouts.copyWith(values: newCheckouts);
      debugPrint("returnBook ${checkouts.toString()}");
      return Right(checkouts);
    });
  }

  @override
  Future<Either<Failure, Checkouts>> loadCheckouts() async {
    // Load the books from path
    Either<Failure, Checkouts> result = await checkoutsRemoteDatasource.load();

    return result.fold((l) => Left(l), (r) {
      checkouts = r;
      return Right(checkouts);
    });
  }

  @override
  Future<Either<Failure, Checkout?>> getCheckoutByBookId(
      String id, String auth) async {
    final Checkout? result = 
        checkouts.values.singleWhereOrNull((element) => element.book == id);
    return Right(result);
  }
}
