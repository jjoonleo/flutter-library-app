import 'package:flutter/material.dart';
import 'package:flutter_library_app/presentation/view/books_add.dart';
import 'package:flutter_library_app/presentation/view/books_list.dart';
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
