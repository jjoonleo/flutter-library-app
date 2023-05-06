import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
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
    books.fold((l) {
      if (l is ServerFailure) {
        state = BooksState.error(message: l.message ?? "");
      } else if (l is NoDataFailure) {
        state = const BooksState.error(message: "unknown error");
      }
    }, (r) {
      state = BooksState.data(r);
      debugPrint("getUserInfo success");
    });
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
