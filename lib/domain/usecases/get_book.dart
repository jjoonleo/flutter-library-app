import '../model/book.dart';

abstract class GetBookUseCase {
  Future<Book?> execute(String id);
}
