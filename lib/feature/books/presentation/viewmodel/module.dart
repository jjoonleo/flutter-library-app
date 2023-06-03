import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_library_app/feature/user/presentation/viewmodel/module.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BooksStateNotifier extends StateNotifier<BooksState> {
  BooksStateNotifier(this.ref) : super(const BooksState.loading()) {
    loadBooks();
  }

  final Ref ref;
  late var user = ref.watch(userState);
  late final getBooks = ref.read(getBooksProvider);
  late final saveBooks = ref.read(saveBookProvider);
  late final borrowBook = ref.read(borrowBookProvider);

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

  Future<Either<String, Book>> borrow(Book book) async {
    return user.when(notLoggedIn: () {
      return left("please login");
    }, loggedIn: (data) async {
      final result = await borrowBook.execute(book, data.token);
      return result.fold((l) {
        if (l is ServerFailure) {
          return left(l.message ?? "server error please try again later");
        } else if (l is NoDataFailure) {
          return left("no such book found");
        } else if (l is UnauthorizedFailure) {
          return left("not logged in please login first");
        }
        return left("unknown error");
      }, (r) {
        debugPrint("getUserInfo success");
        return right(r);
      });
    }, error: (msg) {
      return left("something went wrong please login agian");
    });
  }
}

final booksListState =
    StateNotifierProvider<BooksStateNotifier, BooksState>((ref) {
  return BooksStateNotifier(ref);
});

final booksListModel = Provider<BooksStateNotifier>((ref) {
  return ref.watch(booksListState.notifier);
});
