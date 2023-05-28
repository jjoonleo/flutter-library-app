import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';

import '../model/book.dart';

abstract class BorrowBookUseCase {
  Future<Either<Failure,Book>> execute(Book book, String auth);
}
