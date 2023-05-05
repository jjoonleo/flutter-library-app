import 'package:flutter_library_app/domain/model/book.dart';
import 'package:flutter_library_app/domain/repository/books.dart';
import 'package:flutter_library_app/domain/usecases/borrow_book.dart';

class BorrowBookUseCaseImpl extends BorrowBookUseCase {
  BorrowBookUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<void> execute(Book book) async {
    await booksRepository.borrowBook(book);
  }
}
