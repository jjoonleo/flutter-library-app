import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookDetail extends ConsumerStatefulWidget {
  const BookDetail({super.key, required this.book});

  final Book book;
  @override
  ConsumerState<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends ConsumerState<BookDetail> {
  late final booksList = ref.read(booksListModel);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final fullHeight = MediaQuery.of(context).size.height;
    final appBar = AppBar(); //Need to instantiate this here to get its size
    final appBarHeight =
        appBar.preferredSize.height + MediaQuery.of(context).padding.top;
    final scaffoldBodyHeight = fullHeight - appBarHeight;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.book.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: scaffoldBodyHeight - 90,
                child: SingleChildScrollView(
                  child: Column(children: [
                    Hero(
                      tag: widget.book.id,
                      child: Image.network(
                        APIList.baseUrl + widget.book.img,
                        width: MediaQuery.of(context).size.height / 3,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(widget.book.description ?? ""),
                    SizedBox(
                      height: 50,
                    ),
                  ]),
                ),
              ),
              FilledButton(
                  onPressed: widget.book.available != null
                      ? null
                      : () async {
                          Either<String, Book> book =
                              await booksList.borrow(widget.book);
                          book.fold((l) => debugPrint(l),
                              (r) => debugPrint(r.toString()));
                        },
                  style: ButtonStyle(
                    backgroundColor: widget.book.available != null
                        ? MaterialStateProperty.all<Color>(
                            theme.colorScheme.primaryContainer)
                        : MaterialStateProperty.all<Color>(
                            theme.colorScheme.primary),
                  ),
                  child: SizedBox(
                      width: double.maxFinite,
                      height: 60,
                      child: Center(
                          child: Text(
                        "책 빌리기",
                        style: TextStyle(fontSize: 20),
                      )))),
            ],
          ),
        ),
      ),
    );
  }
}
