import 'package:flutter/material.dart';
import 'package:flutter_library_app/feature/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProtectedPage extends ConsumerStatefulWidget {
  const ProtectedPage({super.key});

  @override
  ConsumerState<ProtectedPage> createState() => _ProtectedPageState();
}

class _ProtectedPageState extends ConsumerState<ProtectedPage> {
  var email = TextEditingController();
  var password = TextEditingController();
  String text = "";
  final url = Uri.http('192.168.0.26:8000', 'api/protected');

  checkToken() async {
    var user = ref.read(userState);
    String token = user.mapOrNull(loggedIn: (data) => data.user.token) ?? "";
    debugPrint("token$token");
    var response = await http.get(url, headers: {"Authorization": token});
    var decodedResponse;
    debugPrint(response.statusCode.toString());
    if (response.statusCode == 200) {
      decodedResponse = jsonDecode(response.body);
      setState(() {
        text = decodedResponse["msg"];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("get page"),
      ),
      body: Center(
        child: Column(children: <Widget>[
          ElevatedButton(
              onPressed: checkToken, child: const Text("get request")),
          Text(text),
        ]),
      ),
    );
  }
}
