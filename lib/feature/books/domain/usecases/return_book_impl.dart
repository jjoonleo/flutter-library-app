import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

class ReturnBookUseCaseImpl extends ReturnBookUseCase {
  ReturnBookUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<Either<Failure,Checkouts>> execute(Book book) async {
    return booksRepository.returnBook(book);
  }
}
