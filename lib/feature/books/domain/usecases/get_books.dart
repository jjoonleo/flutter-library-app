import '../model/books.dart';

abstract class GetBooksUseCase {
  Future<Books> execute();
}
