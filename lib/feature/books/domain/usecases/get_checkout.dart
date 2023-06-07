import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

class GetCheckoutUseCaseImpl extends GetCheckoutUseCase {
  GetCheckoutUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<Either<Failure,Checkout?>> execute(String id, String auth) => booksRepository.getCheckoutByBookId(id,auth);
}
