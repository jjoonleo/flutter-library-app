import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

class CheckoutsRepositoryImpl extends CheckoutsRepository {
  final CheckoutsRemoteDatasourceImpl checkoutsRemoteDatasource;

  CheckoutsRepositoryImpl(this.checkoutsRemoteDatasource);

  Checkouts? checkouts;

  @override
  Future<Either<Failure, Checkouts>> loadCheckouts(String auth) async {
    // Load the books from path
    Either<Failure, Checkouts> result =
        await checkoutsRemoteDatasource.load(auth);
    checkouts = result.fold((l) => null, (r) => r);
    return result;
  }

  @override
  Future<Either<Failure, Checkout?>> getCheckoutByBookId(
      String id, String auth) {
    return checkoutsRemoteDatasource.getCheckoutByBookId(id, auth);
  }
}
