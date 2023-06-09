import 'package:dartz/dartz.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

class SaveBookUseCaseImpl extends SaveBookUseCase {
  SaveBookUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<Either<Failure,Books>> execute(Book book) async {
    return booksRepository.saveBook(book);
  }
}
