import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

abstract class CheckoutsRepository {
  Future<Either<Failure,Checkouts>> loadCheckouts();

  Future<Either<Failure,Checkout?>> getCheckoutByBookId(String id, String auth);
}