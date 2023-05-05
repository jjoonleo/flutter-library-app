import 'package:flutter_library_app/domain/model/book.dart';
import 'package:flutter_library_app/domain/repository/books.dart';

import 'save_book.dart';

class SaveBookUseCaseImpl extends SaveBookUseCase {
  SaveBookUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<void> execute(Book book) async {
    await booksRepository.saveBook(book);
  }
}
