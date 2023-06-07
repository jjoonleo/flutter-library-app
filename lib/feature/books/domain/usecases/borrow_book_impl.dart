import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

class BorrowBookUseCaseImpl extends BorrowBookUseCase {
  BorrowBookUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<Either<Failure,Checkouts>> execute(Book book, String auth) async {
    return booksRepository.borrowBook(book, auth);
  }
}
