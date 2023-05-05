import 'package:flutter_library_app/feature/books/books.dart';


class DeleteBookUseCaseImpl extends DeleteBookUseCase {
  DeleteBookUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<void> execute(Book book) async {
    await booksRepository.deleteBook(book);
  }
}
