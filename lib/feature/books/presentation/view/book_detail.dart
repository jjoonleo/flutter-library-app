import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_library_app/feature/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookDetail extends ConsumerStatefulWidget {
  const BookDetail({super.key, required this.book});

  final Book book;
  @override
  ConsumerState<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends ConsumerState<BookDetail> {
  late final booksModel = ref.read(booksListModel);
  late final checkoutsModel = ref.read(checkcoutsListModel);
  late final user = ref.watch(userState);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final fullHeight = MediaQuery.of(context).size.height;
    final appBar = AppBar(); //Need to instantiate this here to get its size
    final appBarHeight =
        appBar.preferredSize.height + MediaQuery.of(context).padding.top;
    final scaffoldBodyHeight = fullHeight - appBarHeight;
    final user = ref.watch(userState);
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
              FutureBuilder(
                  future: checkoutsModel.getCheckoutByBookId(
                      widget.book.id, user, context),
                  builder:
                      (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    bool flag = false;
                    String buttonText = "책 빌리기";
                    callback() async {
                      if (snapshot.data != null) {
                        Either<String, void> result =
                            await checkoutsModel.returnBook(widget.book, context);
                        result.fold((l) {
                          Modal.build("에러", l, context);
                        }, (r) {
                          Navigator.pop(context);
                          Modal.build(
                              "반납 완료",
                              "반납이 완료되었습니다.",
                              context);
                          
                        });
                      } else {
                        Either<String, void> result =
                            await checkoutsModel.borrow(widget.book, context, user);
                        result.fold((l) {
                          Modal.build("에러", l, context);
                        }, (r) {
                          Navigator.pop(context);
                          Modal.buildWithRedirect(
                              "대출 완료",
                              "대출이 완료되었습니다.\n대출하신 책은 내 정보에서 확인 하실 수 있습니다.",
                              "/users",
                              "내 정보로 가기",
                              context);
                          
                        });
                      }
                    }

                    if (widget.book.available != null) {
                      flag = true;
                    }
                    if (snapshot.data != null) {
                      flag = false;
                      buttonText = "책 반납하기";
                    }
                    return FilledButton(
                        onPressed: flag ? null : callback,
                        style: ButtonStyle(
                          backgroundColor: flag
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
                              buttonText,
                              style: TextStyle(fontSize: 20),
                            ))));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
