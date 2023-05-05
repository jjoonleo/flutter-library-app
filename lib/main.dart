import 'package:flutter/material.dart';
import 'package:flutter_library_app/presentation/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: LibraryApp()));
}