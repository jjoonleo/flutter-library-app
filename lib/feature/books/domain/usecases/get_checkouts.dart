import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

abstract class GetCheckoutsUseCase {
  Future<Either<Failure,Checkouts>> execute();
}
