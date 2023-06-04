import 'package:flutter/material.dart';
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
  late final user = ref.watch(userState);

  Future<void> _reloadBooks() async {
    await booksModel.loadBooks();
  }


  @override
  Widget build(BuildContext context) {
    final booksState = ref.watch(booksListState);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("BooksList"),
      ),
      body: Column(children: [
        booksState.when(data: (books) {
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 300,
                child: RefreshIndicator(
                  onRefresh: _reloadBooks,
                  child: ListView.builder(
                    itemCount: books.values.length,
                    itemBuilder: (itemcontext, index) {
                      final book = books.values[index];
                      return BookTile(book: book);
                    },
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    user.when(
                        notLoggedIn: () {},
                        loggedIn: (data) async {
                          var result = await booksModel.borrow(books.values[0]);
                          result.fold((l) => debugPrint(l),
                              (r) => debugPrint(r.toString()));
                        },
                        error: (msg) {});
                  },
                  child: const Text("borrow")),
            ],
          );
        }, error: (String? message) {
          return const Text("error");
        }, loading: () {
          return const CircularProgressIndicator();
        }),
        ElevatedButton(
            onPressed: () async {
              await booksModel.loadBooks();
            },
            child: const Text("reload")),
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
