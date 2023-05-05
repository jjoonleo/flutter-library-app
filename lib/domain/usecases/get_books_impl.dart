import 'package:flutter_library_app/domain/model/books.dart';
import 'package:flutter_library_app/domain/repository/books.dart';

import 'get_books.dart';

class GetBooksUseCaseImpl extends GetBooksUseCase {
  GetBooksUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<Books> execute() => booksRepository.loadBooks();
}
