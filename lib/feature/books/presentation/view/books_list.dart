import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/presentation/widgets/book_tile.dart';
import 'package:flutter_library_app/feature/user/presentation/viewmodel/module.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_library_app/feature/books/books.dart';

class BooksList extends ConsumerStatefulWidget {
  const BooksList({super.key});

  @override
  ConsumerState<BooksList> createState() => _BooksListState();
}

class _BooksListState extends ConsumerState<BooksList> {
  late final booksModel = ref.read(booksListModel);

  Future<void> _reloadBooks() async {
    await booksModel.loadBooks();
  }

  @override
  Widget build(BuildContext context) {
    final booksState = ref.watch(booksListState);
    final user = ref.watch(userState);
    final fullHeight = MediaQuery.of(context).size.height;
    final appBar = AppBar(); //Need to instantiate this here to get its size
    final appBarHeight =
        appBar.preferredSize.height + MediaQuery.of(context).padding.top;
    final scaffoldBodyHeight = fullHeight - appBarHeight;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(
            width: 32.0,
          ),
          Expanded(child: Center(child: Text("도서목록"))),
          SizedBox(
              width: 32.0,
              height: 32.0,
              child: IconButton.outlined(
                  onPressed: () {
                    user.when(notLoggedIn: () {
                      context.push("/users/login");
                    }, loggedIn: (data) {
                      context.push("/users");
                    }, error: (data) {
                      Modal.build(
                          "에러", "알 수 없는 에러가 발생하였습니다. 관리자에게 문의해 주세요", context);
                    });
                  },
                  icon: Icon(
                    Icons.person,
                    size: 16.0,
                  )))
        ])),
      ),
      body: Column(children: [
        booksState.when(data: (books) {
          return Column(
            children: [
              SizedBox(
                height: scaffoldBodyHeight,
                child: RefreshIndicator(
                  onRefresh: _reloadBooks,
                  child: ListView.builder(
                    itemCount: books.values.length,
                    itemBuilder: (itemcontext, index) {
                      final book = books.values[index];
                      return BookTile(id: book.id);
                    },
                  ),
                ),
              ),
            ],
          );
        }, error: (String? message) {
          return const Text("error");
        }, loading: () {
          return Container();
        }),
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.go("/books/add");
        },
        icon: const Icon(Icons.add),
        label: const Text("Add Book"),
        tooltip: "Add Book",
      ),
    );
  }
}
