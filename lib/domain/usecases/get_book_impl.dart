import 'package:flutter_library_app/data/repository/books_impl.dart';
import 'package:flutter_library_app/domain/model/book.dart';
import 'package:flutter_library_app/domain/repository/books.dart';
import 'package:flutter_library_app/domain/usecases/delete_book.dart';

import 'get_book.dart';

class GetBookUseCaseImpl extends GetBookUseCase {
  GetBookUseCaseImpl(this.booksRepository);
  final BooksRepository booksRepository;

  @override
  Future<Book?> execute(String id) async => booksRepository.getBookById(id);
}
