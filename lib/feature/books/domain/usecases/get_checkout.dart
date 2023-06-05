import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

class GetCheckoutUseCaseImpl extends GetCheckoutUseCase {
  GetCheckoutUseCaseImpl(this.checkoutsRepository);
  final CheckoutsRepository checkoutsRepository;

  @override
  Future<Either<Failure,Checkout?>> execute(String id, String auth) => checkoutsRepository.getCheckoutByBookId(id,auth);
}
