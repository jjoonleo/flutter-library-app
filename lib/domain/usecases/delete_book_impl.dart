import 'package:flutter_library_app/data/repository/books_impl.dart';
import 'package:flutter_library_app/domain/model/book.dart';
import 'package:flutter_library_app/domain/repository/books.dart';
import 'package:flutter_library_app/domain/usecases/delete_book.dart';

class DeleteBookUseCaseImpl extends DeleteBookUseCase {
  DeleteBookUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<void> execute(Book book) async {
    await booksRepository.deleteBook(book);
  }
}
