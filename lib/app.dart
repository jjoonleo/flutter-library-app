import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
import './router.dart';

class LibraryApp extends StatelessWidget {
  const LibraryApp({super.key});

  @override
  Widget build(BuildContext context) {
    const libraryTheme = LibraryTheme();
    return DynamicColorBuilder(builder: (lightColorScheme, darkColorScheme) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "library",
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        routerDelegate: router.routerDelegate,
        theme: libraryTheme.toThemeData(lightColorScheme),
        darkTheme: libraryTheme.toThemeData(darkColorScheme),
        themeMode: ThemeMode.system,
      );
    });
  }
}
