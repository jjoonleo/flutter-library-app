import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

class BooksRemoteDatasourceImpl implements BooksRemoteDatasource {
  final DioClient _client;

  BooksRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, Books>> load() async {
    final response = await _client.getRequest(
      APIList.loadBooks,
      converter: (response) => Books.fromJson(response as Map<String, dynamic>),
    );
    debugPrint(response.toString());
    return response;
  }

  @override
  Future<Either<Failure, Book?>> getById(String id) async {
    final response = await _client.getRequest(
      APIList.loadBooks,
      queryParameters: {"id": id},
      converter: (response) => Book.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, void>> save(Book book) async {
    final response = await _client.postRequest(
      APIList.saveBook,
      data: book.toJson(),
      converter: (response) => Book.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, Book>> borrowBook(Book book, String auth) async {
    final response = await _client.getRequest(
      APIList.borrowBook,
      queryParameters: {"id": book.id},
      auth: auth,
      converter: (response) => Book.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}
