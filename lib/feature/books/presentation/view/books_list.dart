import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_library_app/feature/books/books.dart';

class BooksList extends ConsumerWidget {
  const BooksList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksState = ref.watch(booksListState);
    final booksModel = ref.read(booksListModel);
    final borrowBook = ref.read(borrowBookProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("BooksList"),
      ),
      body: Column(children: [
        booksState.when(data: (books) {
          return Column(
            children: [
              Container(
                height: 400,
                child: ListView.builder(
                  itemCount: books.values.length,
                  itemBuilder: (context, index) {
                    final book = books.values[index];
                    return ListTile(
                      title: Text(book.title),
                      subtitle: Text(book.author),
                    );
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    borrowBook.execute(books.values[0]);
                  },
                  child: Text("borrow")),
            ],
          );
        }, error: (String? message) {
          return Text("error");
        }, loading: () {
          return CircularProgressIndicator();
        }),
        ElevatedButton(
            onPressed: () async {
              await booksModel.loadBooks();
            },
            child: Text("reload")),
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
