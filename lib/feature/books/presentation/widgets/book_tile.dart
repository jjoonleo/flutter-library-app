import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BookTile extends ConsumerWidget {
  BookTile({super.key, required this.id, this.dueDate});

  final String id;
  final DateTime? dueDate;
  final today = DateTime.now();
  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final booksModel = ref.watch(booksListModel);
    final left = dueDate?.difference(today);
    final int? overdue = left?.inDays != null && left!.inDays < 0? left.inDays:null;

    //debugPrint(dueDate.toString());
    final theme = Theme.of(context);
    //debugPrint("book_tile rendered");
    return FutureBuilder(
      future: booksModel.getBook(id),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Book book = snapshot.data;
          return SizedBox(
            width: double.infinity,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextButton(
                onPressed: () {
                  context.pushNamed("detail", extra: book);
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                            side: BorderSide.none)),
                            backgroundColor: overdue!=null?MaterialStateProperty.all<Color>(theme.colorScheme.background):MaterialStateProperty.all<Color>(theme.colorScheme.background)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Hero(
                        tag: book.id,
                        child: Image.network(
                          APIList.baseUrl + book.img,
                          width: 100,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book.title,
                              style: theme.textTheme.titleLarge,
                              maxLines: 2,
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
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 9),
                              child: Row(
                                children: [
                                  Text(
                                    dueDate != null
                                        ? "${dueDate?.month}월 ${dueDate?.day}일까지"
                                        : "",
                                    style: theme.textTheme.bodyMedium!
                                        .copyWith(color: theme.colorScheme.primary),
                                  ),
                                  SizedBox(width: 20,),
                                  Text(overdue!=null?"${overdue.toString()}일 연체":"",style: theme.textTheme.bodyMedium!
                                        .copyWith(color: theme.colorScheme.primary),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
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
