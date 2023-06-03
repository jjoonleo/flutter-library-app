import 'package:flutter/material.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:shortid/shortid.dart';


class BooksAdd extends ConsumerStatefulWidget {
  const BooksAdd({super.key});

  @override
  ConsumerState<BooksAdd> createState() => _BooksAddState();
}

class _BooksAddState extends ConsumerState<BooksAdd> {
  final _formKey = GlobalKey<FormState>();
  final title = TextEditingController();
  final author = TextEditingController();
  late final booksList = ref.read(booksListModel);
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Book"),
      ),
      body: Scrollbar(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: title,
                        decoration: const InputDecoration(
                          labelText: "Title",
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: "Please enter title"),
                        ]),
                      ),
                      TextFormField(
                        controller: author,
                        decoration: const InputDecoration(
                          labelText: "Author",
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: "Please enter author"),
                        ]),
                      ),
                      CheckboxListTile(
                          title: const Text("Completed"),
                          value: isCompleted,
                          onChanged: (value) {
                            if (mounted) {
                              setState(() {
                                isCompleted = value!;
                              });
                            }
                          })
                    ],
                  ))
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Save"),
        icon: const Icon(Icons.save),
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();

            final book = Book(
              id: shortid.generate(),
              title: title.text,
              author: author.text,
              isbn: 'test',
              publisher: 'test',
            );

            final messanger = ScaffoldMessenger.of(context);
            final router = GoRouter.of(context);
            await booksList.save(book);
            messanger.toast("Book saved");
            if (router.canPop()) router.pop();
          }
        },
      ),
    );
  }
}

extension on ScaffoldMessengerState {
  void toast(String message) {
    showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ));
  }
}
