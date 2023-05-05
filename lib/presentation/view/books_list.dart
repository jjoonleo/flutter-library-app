import 'package:flutter/material.dart';
import 'package:flutter_library_app/domain/usecases/module.dart';
import 'package:flutter_library_app/presentation/viewmodel/module.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BooksList extends ConsumerWidget {
  const BooksList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksState = ref.watch(booksListState);
    final borrowBook = ref.read(borrowBookProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("BooksList"),
      ),
      body: Column(children: [
        booksState.when(data: (books) {
          return SizedBox(
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
          );
        }, error: (String? message) {
          return Text("error");
        }, loading: () {
          return CircularProgressIndicator();
        }),
        ElevatedButton(
            onPressed: () {
              //borrowBook.execute(books.values[0]);
            },
            child: Text("borrow")),
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
