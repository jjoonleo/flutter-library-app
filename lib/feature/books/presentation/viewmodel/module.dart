import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class BooksStateNotifier extends StateNotifier<BooksState> {
  BooksStateNotifier(this.ref) : super(const BooksState.loading()) {
    loadBooks();
  }

  final Ref ref;
  late final getBooks = ref.read(getBooksProvider);
  late final saveBooks = ref.read(saveBookProvider);

  Future<void> loadBooks() async {
    state = const BooksState.loading();

    final books = await getBooks.execute();
    state = BooksState.data(books);
  }

  Future<void> save(Book book) async {
    await saveBooks.execute(book);
    await loadBooks();
  }
}

final booksListState = StateNotifierProvider<BooksStateNotifier, BooksState>((ref) {
  return BooksStateNotifier(ref);
});

final booksListModel = Provider<BooksStateNotifier>((ref) {
  return ref.watch(booksListState.notifier);
});
