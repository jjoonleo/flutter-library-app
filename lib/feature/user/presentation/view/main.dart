import 'package:flutter/material.dart';
import 'package:flutter_library_app/feature/user/presentation/view/protected_page.dart';
import 'package:flutter_library_app/feature/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {

  checkToken() async {
    await ref.read(userModel).getUserInfo();
    debugPrint(ref.read(userState).toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: const Text("login"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignupPage()),
              );
            },
            child: const Text("signup"),
          ),
          FilledButton(onPressed: checkToken, child: const Text("check token")),
          FilledButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProtectedPage()));
              },
              child: const Text("go to protected page")),
          FilledButton(
              onPressed: () async {
                await ref.read(userModel).logout();
              },
              child: const Text("logout"))
        ]),
      ),
    );
  }
}
