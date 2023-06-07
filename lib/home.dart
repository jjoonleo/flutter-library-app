import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          FilledButton(
              onPressed: () {
                context.push("/books");
              },
              child: const Text("book list")),
          FilledButton(
              onPressed: () {
                context.push("/users");
              },
              child: const Text("users")),
        ],
      ),
    );
  }
}
