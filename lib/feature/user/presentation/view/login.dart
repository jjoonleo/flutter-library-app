import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_library_app/feature/user/user.dart';
import 'package:go_router/go_router.dart';

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

  _submit(context) async {
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
          Navigator.pop(context);
        },
        error: (error) {
          Modal.build("error", error, context);
        });
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
                    key: Key("login_email"),
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
                    key: Key("login_password"),
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
                    onPressed: () {
                      _submit(context);
                    },
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
                  TextButton(
                      onPressed: () {
                        context.go("/signup");
                      },
                      child: Text("아직 화원이 아닌신가요? 회원가입하기"))
                ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
