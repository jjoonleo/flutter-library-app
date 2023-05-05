import 'package:http/http.dart' as http;

import '../../domain/model/book.dart';
import '../../domain/model/books.dart';

abstract class Api {
  Future<Books?> get();

  Future<void> delete(Book? book);

  Future<void> save(Book book);
}
