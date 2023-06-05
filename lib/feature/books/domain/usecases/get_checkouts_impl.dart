import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

class GetCheckoutsUseCaseImpl extends GetCheckoutsUseCase {
  GetCheckoutsUseCaseImpl(this.checkoutsRepository);
  final CheckoutsRepository checkoutsRepository;

  @override
  Future<Either<Failure,Checkouts>> execute(String auth) => checkoutsRepository.loadCheckouts(auth);
}
