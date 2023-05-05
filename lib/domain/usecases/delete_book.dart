import '../model/book.dart';

abstract class DeleteBookUseCase {
  Future<void> execute(Book book);
}
