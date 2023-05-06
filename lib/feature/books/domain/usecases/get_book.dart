import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';

import '../model/book.dart';

abstract class GetBookUseCase {
  Future<Either<Failure,Book?>> execute(String id);
}
