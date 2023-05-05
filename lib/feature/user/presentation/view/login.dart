import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_library_app/feature/user/user.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  var email = TextEditingController();
  var password = TextEditingController();
  bool emailValidated = true;
  bool passwordValidated = true;
  String text = "";
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  late final usermodel = ref.read(userModel);
  late final user = ref.watch(userState);
  static final storage = FlutterSecureStorage();
  final url = Uri.http('192.168.0.26:8000', 'api/user/login');

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(_onEmailFocusChange);
    _passwordFocusNode.addListener(_onPasswordFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _emailFocusNode.removeListener(_onEmailFocusChange);
    _emailFocusNode.dispose();
    _passwordFocusNode.removeListener(_onPasswordFocusChange);
    _passwordFocusNode.dispose();
  }

  _onEmailFocusChange() {
    if (!_emailFocusNode.hasFocus) {
      _validateEmail();
    }
  }

  _onPasswordFocusChange() {
    if (!_passwordFocusNode.hasFocus) {
      _validatePassword();
    }
  }

  _validateEmail() {
    setState(() {
      emailValidated = (email.text != "");
    });
  }

  _validatePassword() {
    setState(() {
      passwordValidated = (password.text != "");
    });
  }

  _submit() async {
    bool flag = false;
    if (email.text == "") {
      flag = true;
      setState(() {
        emailValidated = false;
      });
    }
    if (password.text == "") {
      flag = true;
      setState(() {
        passwordValidated = false;
      });
    }
    if (flag) return;

    await ref
        .read(userState.notifier)
        .login(LoginParams(email: email.text, password: password.text));
    ref.read(userState).when(
        notLoggedIn: () => debugPrint("notLoggedIn"),
        loggedIn: (data) async {
          debugPrint("user");
          await usermodel.store();
        },
        error: (error) {
          _buildDialog("error", error);
        });
  }

  _buildDialog(title, msg) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    msg,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Close'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    var inputDecoration = InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      filled: true,
      fillColor: theme.colorScheme.primaryContainer,
      hintStyle: TextStyle(
        color: theme.colorScheme.onBackground,
        fontSize: 20,
      ),
      errorStyle: TextStyle(
        fontSize: 15,
        color: theme.colorScheme.error,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    );

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 30, horizontal: constraints.maxWidth / 9),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Text(
                      "로그인",
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                  TextField(
                    focusNode: _emailFocusNode,
                    style: TextStyle(
                      color: theme.colorScheme.onPrimaryContainer,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    onChanged: (value) => _validateEmail(),
                    decoration: inputDecoration.copyWith(
                        hintText: "email",
                        errorText:
                            emailValidated ? null : "this field is required"),
                    controller: email,
                    cursorColor: theme.colorScheme.onPrimaryContainer,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  TextField(
                    focusNode: _passwordFocusNode,
                    style: TextStyle(
                      color: theme.colorScheme.onPrimaryContainer,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    onChanged: (value) => _validatePassword(),
                    decoration: inputDecoration.copyWith(
                        hintText: "password",
                        errorText: passwordValidated
                            ? null
                            : "this field is required"),
                    obscureText: true,
                    controller: password,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  FilledButton(
                    onPressed: _submit,
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(60),
                    ),
                    child: Text(
                      "로그인 하기",
                      style: TextStyle(
                        color: theme.colorScheme.onPrimary,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  //ElevatedButton(onPressed: checkToken, child: Text("check token")),
                  Text(text),
                ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
