import '../model/book.dart';

abstract class BorrowBookUseCase {
  Future<void> execute(Book book, String auth);
}
