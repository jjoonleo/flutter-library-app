import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:http/http.dart' as http;


import 'api.dart';

class ApiImpl implements Api {
  final String _api_url = "192.168.0.26/api";

  @override
  Future<void> delete(Book? book) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Books> get() async {
    var content = await http.get(
        Uri.parse('http://192.168.0.26:8000/api/book/'),
        headers: <String, String>{'Content-Type': 'application/json'});
    debugPrint(content.statusCode.toString());
    if (content.statusCode != 200) return const Books(values: []);
    var json = jsonDecode(content.body);
    debugPrint(json["values"].toString());
    return Books.fromJson(json);
  }

  @override
  Future<void> save(Book book) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
