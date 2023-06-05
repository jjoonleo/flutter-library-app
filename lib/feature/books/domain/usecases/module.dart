import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final getBooksProvider = Provider<GetBooksUseCase>((ref) {
  return GetBooksUseCaseImpl(ref.read(booksProvider));
});

final getBookProvider = Provider<GetBookUseCase>((ref) {
  return GetBookUseCaseImpl(ref.read(booksProvider));
});

final saveBookProvider = Provider<SaveBookUseCase>((ref) {
  return SaveBookUseCaseImpl(ref.read(booksProvider));
});

final deleteBookProvider = Provider<DeleteBookUseCase>((ref) {
  return DeleteBookUseCaseImpl(ref.read(booksProvider));
});

final borrowBookProvider = Provider<BorrowBookUseCase>((ref) {
  return BorrowBookUseCaseImpl(ref.read(booksProvider));
});

final getCheckoutsProvider = Provider<GetCheckoutsUseCase>((ref) {
  return GetCheckoutsUseCaseImpl(ref.read(checkoutsProvider));
});

final getCheckoutProvider = Provider<GetCheckoutUseCase>((ref) {
  return GetCheckoutUseCaseImpl(ref.read(checkoutsProvider));
});