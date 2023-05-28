import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:http/http.dart' as http;

class BookRepositoryImpl extends BooksRepository {
  BookRepositoryImpl(this.files, this.booksRemoteDatasource);

  final Files files;
  final BooksRemoteDatasourceImpl booksRemoteDatasource;

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
    return booksRemoteDatasource.load();
  }

  @override
  Future<Either<Failure, Book?>> getBookById(String id) async {
    // Get a book by id
    return booksRemoteDatasource.getById(id);
  }

  @override
  Future<Either<Failure, void>> saveBook(Book book) async {
    return booksRemoteDatasource.save(book);
  }

  @override
  Future<Either<Failure, Book>> borrowBook(Book book, String auth) {
    return booksRemoteDatasource.borrowBook(book, auth);
  }
}
