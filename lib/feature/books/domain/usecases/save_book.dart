import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

abstract class SaveBookUseCase {
  Future<Either<Failure,Books>> execute(Book book);
}
