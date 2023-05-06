import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';

import '../model/books.dart';

abstract class GetBooksUseCase {
  Future<Either<Failure,Books>> execute();
}
