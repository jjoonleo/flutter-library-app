import 'package:flutter_library_app/feature/books/books.dart';


import 'get_books.dart';

class GetBooksUseCaseImpl extends GetBooksUseCase {
  GetBooksUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<Books> execute() => booksRepository.loadBooks();
}
