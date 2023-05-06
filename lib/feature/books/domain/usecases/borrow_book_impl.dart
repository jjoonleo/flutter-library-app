import 'package:flutter_library_app/feature/books/books.dart';

class BorrowBookUseCaseImpl extends BorrowBookUseCase {
  BorrowBookUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<void> execute(Book book) async {
    await booksRepository.borrowBook(book);
  }
}