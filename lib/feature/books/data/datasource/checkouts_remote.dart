import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

abstract class CheckoutsRemoteDatasource {
  Future<Either<Failure, Checkouts>> load(String auth);

  Future<Either<Failure, Checkout?>> getCheckoutByBookId(String id, String auth);
}
