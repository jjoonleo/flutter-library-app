import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BookTile extends ConsumerWidget {
  const BookTile({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final booksModel = ref.watch(booksListModel);
    final theme = Theme.of(context);
    return FutureBuilder(
      future: booksModel.getBook(id),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Book book = snapshot.data;
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: TextButton(
              onPressed: () {
                context.pushNamed("detail", extra: book).then((value) {
                  booksModel.loadBooks();
                });
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                          side: BorderSide.none))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: book.id,
                    child: Image.network(
                      APIList.baseUrl + book.img,
                      width: 100,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          book.title,
                          style: theme.textTheme.titleLarge,
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 2,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withAlpha(150),
                                width: 2.0),
                          )),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          book.author,
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        } else {
          return Text("");
        }
      },
    );
  }
}
