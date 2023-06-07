import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_library_app/feature/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BooksStateNotifier extends StateNotifier<BooksState> {
  BooksStateNotifier(this.ref) : super(const BooksState.loading()) {
    loadBooks();
  }

  final Ref ref;
  //late var user = ref.watch(userState);
  late final getBooks = ref.read(getBooksProvider);
  late final saveBooks = ref.read(saveBookProvider);
  late final getBookById = ref.read(getBookProvider);

  Future<void> loadBooks() async {
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

  Future<Book?> getBook(String id) async {
    //debugPrint("getBook is called");
    final book = await getBookById.execute(id);
    return book.fold((l) => null, (r) => r);
  }

  Future<void> save(Book book) async {
    final result = await saveBooks.execute(book);
    result.fold((l) => null, (books) {
      state = BooksState.data(books);
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

class CheckoutsStateNotifier extends StateNotifier<CheckoutsState> {
  CheckoutsStateNotifier(this.ref) : super(const CheckoutsState.loading()) {
    loadCheckouts();
  }

  final Ref ref;

  late final _getCheckouts = ref.read(getCheckoutsProvider);
  late final _getCheckout = ref.read(getCheckoutProvider);
  late final _borrowBook = ref.read(borrowBookProvider);
  late final _returnBook = ref.read(returnBookProvider);

  Future<void> loadCheckouts() async {
    final books = await _getCheckouts.execute();
    books.fold((l) {
      if (l is ServerFailure) {
        state = CheckoutsState.error(message: l.message ?? "");
      } else if (l is NoDataFailure) {
        state = const CheckoutsState.error(message: "unknown error");
      }
    }, (r) {
      state = CheckoutsState.data(r);
      debugPrint("getCheckoutsInfo success");
    });
  }

  Future<Checkout?> getCheckoutByBookId(
      String id, UserState user, BuildContext context) async {
    return user.when(
        notLoggedIn: () {
          return null;
        },
        loggedIn: (data) async {
          final result = await _getCheckout.execute(id, data.token);
          return result.fold((l) => null, (r) => r);
        },
        error: (msg) => null);
  }

  Future<Either<String, void>> borrow(
      Book book, BuildContext context, UserState user) async {
    return user.when(notLoggedIn: () {
      //Modal.buildWithRedirect("로그인 되어 있지 않음", "책을 대출하시려먼 먼저 로그인을 해 주세요","/login", "로그인하러 가기", context);
      return left("please login");
    }, loggedIn: (data) async {
      final result = await _borrowBook.execute(book, data.token);
      return result.fold((l) {
        if (l is ServerFailure) {
          //Modal.build("error",l.message ?? "server error please try again later", context);
          return left(l.message ?? "server error please try again later");
        } else if (l is NoDataFailure) {
          //Modal.build("error", "no such book found", context);
          return left("no such book found");
        } else if (l is UnauthorizedFailure) {
          //Modal.build("not logged in", "please login first", context);
          return left("please login");
        }
        // Modal.build("error", "something went wrong please login agian", context);
        return left("unknown error");
      }, (r) {
        debugPrint("borrow success");
        state = CheckoutsState.data(r);
        return const Right(null);
      });
    }, error: (msg) {
      Modal.build("error", "something went wrong please login agian", context);
      return left("something went wrong please login agian");
    });
  }

  Future<Either<String, void>> returnBook(
      Book book, BuildContext context) async {
    final result = await _returnBook.execute(book);
    return result.fold((l) {
      if (l is ServerFailure) {
        Modal.build("error", l.message ?? "server error please try again later",
            context);
        return left(l.message ?? "server error please try again later");
      } else if (l is NoDataFailure) {
        Modal.build("error", "no such book found", context);
        return left("no such book found");
      } else if (l is UnauthorizedFailure) {
        Modal.build("not logged in", "please login first", context);
        return left("please login");
      }
      Modal.build("error", "something went wrong please login agian", context);
      return left("unknown error");
    }, (r) {
      debugPrint("getUserInfo success");
      state = CheckoutsState.data(r);
      return Right(null);
    });
  }
}

final checkoutsListState =
    StateNotifierProvider<CheckoutsStateNotifier, CheckoutsState>((ref) {
  return CheckoutsStateNotifier(ref);
});

final checkcoutsListModel = Provider<CheckoutsStateNotifier>((ref) {
  return ref.watch(checkoutsListState.notifier);
});
