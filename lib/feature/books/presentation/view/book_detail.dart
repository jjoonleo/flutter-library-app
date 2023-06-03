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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.book.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.network(
                APIList.baseUrl + widget.book.img,
                width: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Text(widget.book.description ?? ""),
              SizedBox(
                height: 50,
              ),
              FilledButton(
                  onPressed: () {
                    booksList.borrow(widget.book);
                  },
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
