import '../model/book.dart';

abstract class SaveBookUseCase {
  Future<void> execute(Book book);
}
