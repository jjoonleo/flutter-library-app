import 'package:flutter/material.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:go_router/go_router.dart';

import 'view/home.dart';

final router = GoRouter(initialLocation: "/books", routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const Home(),
    routes: [
      GoRoute(
        path: "books",
        builder: (context, state) => const BooksList(),
        routes: [
          GoRoute(
            path: "add",
            builder: (context, state) => const BooksAdd(),
          )
        ]
      ),
    ]
  ),
  
]);
