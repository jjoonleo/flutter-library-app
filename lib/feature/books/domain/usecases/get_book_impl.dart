import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

import 'get_book.dart';

class GetBookUseCaseImpl extends GetBookUseCase {
  GetBookUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<Either<Failure,Book?>> execute(String id) async => booksRepository.getBookById(id);
}
