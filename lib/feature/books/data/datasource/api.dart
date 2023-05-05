import 'package:http/http.dart' as http;
import 'package:flutter_library_app/feature/books/books.dart';

abstract class Api {
  Future<Books?> get();

  Future<void> delete(Book? book);

  Future<void> save(Book book);
}
