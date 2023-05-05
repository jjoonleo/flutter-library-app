import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:http/http.dart' as http;

class BookRepositoryImpl extends BooksRepository {
  BookRepositoryImpl(this.files);

  final Files files;

  late final String path = 'books.json';

  @override
  Future<void> deletAllBooks() async {
    // Delete files py path
    await files.delete(path);
  }

  @override
  Future<void> deleteBook(Book book) async {
    final books = await loadBooks();

    // Remove the book from the list
    final newBooks =
        books.values.where((element) => element.id != book.id).toList();

    // Save the new list
    await files.write(path, jsonEncode(Books(values: newBooks).toJson()));
  }

  @override
  Future<Books> loadBooks() async {
    // Load the books from path
    final content = await http.get(
        Uri.parse('http://192.168.0.26:8000/api/book/'),
        headers: <String, String>{'Content-Type': 'application/json'});
    debugPrint(content.statusCode.toString());
    if (content.statusCode != 200) return const Books(values: []);
    var json = jsonDecode(content.body);
    debugPrint(json["values"].toString());
    return Books.fromJson(json);
  }

  @override
  Future<Book?> getBookById(String id) async {
    final books = await loadBooks();

    // Search the book by id
    return books.values.firstWhereOrNull((book) => book.id == id);
  }

  @override
  Future<void> saveBook(Book book) async {
    final books = await loadBooks();

    // Remove the book from the list if it already exists
    final newBooks =
        books.values.where((element) => element.id != book.id).toList();

    // Add the new todo
    newBooks.add(book);

    Map<String, String> headers = {'Content-Type': 'application/json'};

    final content = await http.post(
        Uri.parse('http://192.168.0.26:8000/api/book/save'),
        headers: headers,
        body: jsonEncode(book.toJson()));
    debugPrint("saved book");
    debugPrint(jsonEncode(content.body).toString());
    // Save the new list
    //await files.write(path, jsonEncode(Books(values: newBooks).toJson()));
  }

  @override
  Future<void> borrowBook(Book book) async {
    final content = await http.get(
        Uri.parse('http://192.168.0.26:8000/api/book/borrow?id=${book.id}'),
        headers: <String, String>{
          "Authorization":
              "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2NDMyMTU3OThlMDFiMmJjZjQzMjI0OTIiLCJpYXQiOjE2ODEwMDM5MTEzNTYsImV4cCI6MTY4MTAwMzk5Nzc1Nn0.mA7Qy4E8D4CRtAAbVNs0pli8WyJkoGAG9rNkHYTCZ_qYD6ULdr1L51n95X_55kXjohapJoNQ21CAvtMVca_9xoOUR-EpvDptu9_Q1SplrB9dyprahwk_iox4LC-V5Hc1uHfrNrri4IqyubDqzeThMwsVANuq-Plfefq6jB1qj1JseRhAS2iUQPYdFBOa0qAxdYFJ-D9cDJYuH5t9j32fZNVkL-KPhyd4DJS1ooUU6Pw1Arf4STVOLDRloO8KRhjDP5ulESBnd_7I63IyR8ErkXJd3MEXkzn9y_5J1zLP6gJQl6MjD9qbSixRrhipxkrI1l8CUCJyQJJyjgAcYACRQShX0CIaFCicdHSHFEDNYVyxd78f-qKqG1HItyt0cuT_81HWpaU0mD3sKHmjDfzNDf_89EjXGMpZtg5_BSHtgGvdK3FB_zg0EOIdAURhIBHdPDresQzj1dKXCBEFa8H8pO0I3BqFyfBlnQX_1xXtM6UTcUUJ4fL3mD_VpfI8zZSrXqmf3upjWF2TMnG_HPIQ-SZGmPnPdhWk2BGDaWXAV-Furo4DsO8-wbqjKmjniNAQLm29-KNuO1m1y52ExAiGFRSTEuK3cqoDk-IoozEv6pRoAHwc5V58BGBjsRM0_1x_pJAbbBG8zXOiOAqnLoioAeVcmLqb0sGDwVXhBPbU4uU",
        });
    debugPrint(jsonEncode(content.body).toString());
  }
}
