
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_library_app/feature/user/user.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  List<int> gradeOptions = List.generate(3, (index) => index + 1);
  List<int> classroomOptions = List.generate(11, (index) => index + 1);
  List<int> numberOptions = List.generate(40, (index) => index + 1);

  late final usermodel = ref.read(userModel);
  late final user = ref.watch(userState);

  var snackBar = const SnackBar(
    content: Center(child: Text('학번을 입력하세요.')),
  );

  final url = Uri.http('192.168.0.26:8000', 'api/user/signup');

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.

  _submit() async {
    debugPrint(_formKey.currentState?.validate().toString());
    if (_formKey.currentState!.fields["number"]?.value == null ||
        _formKey.currentState!.fields["classroom"]?.value == null ||
        _formKey.currentState!.fields["grade"]?.value == null) {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      debugPrint(_formKey.currentState?.value.toString());
    } else {
      debugPrint(_formKey.currentState?.value.toString());
      debugPrint('validation failed');
    }

    usermodel.signup(SignupParams(
      email: _formKey.currentState!.fields["email"]!.value.toString(),
      password: _formKey.currentState!.fields["password"]!.value.toString(),
      name: _formKey.currentState!.fields["name"]!.value.toString(),
      grade: _formKey.currentState!.fields["grade"]!.value.toString(),
      classroom: _formKey.currentState!.fields["classroom"]!.value.toString(),
      number: _formKey.currentState!.fields["number"]!.value.toString(),
    ));
  }

  @override
  Widget build(BuildContext context) {
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
                  child: FormBuilder(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text("학번:"),
                                const SizedBox(
                                  width: 20,
                                ),
                                Dropdown(
                                    name: "grade",
                                    options: gradeOptions,
                                    width: 50),
                                const Text("학년"),
                                const SizedBox(
                                  width: 15,
                                ),
                                Dropdown(
                                    name: "classroom",
                                    options: classroomOptions,
                                    width: 50),
                                const Text("반"),
                                const SizedBox(
                                  width: 15,
                                ),
                                Dropdown(
                                    name: "number",
                                    options: numberOptions,
                                    width: 50),
                                const Text("번"),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                            width: double.infinity,
                          ),
                          renderTextField(
                              "name",
                              "이름",
                              FormBuilderValidators.compose([
                                FormBuilderValidators.required(),
                              ]),
                              false),
                          const SizedBox(
                            height: 20,
                            width: double.infinity,
                          ),
                          renderTextField(
                              "email",
                              "이메일",
                              FormBuilderValidators.compose([
                                FormBuilderValidators.required(),
                                FormBuilderValidators.email()
                              ]),
                              false),
                          const SizedBox(
                            height: 20,
                            width: double.infinity,
                          ),
                          renderTextField(
                              "password",
                              "비밀번호",
                              FormBuilderValidators.compose([
                                FormBuilderValidators.required(),
                              ]),
                              true),
                          const SizedBox(
                            height: 20,
                            width: double.infinity,
                          ),
                          renderTextField(
                              "password_confirm",
                              "비밀번호 확인",
                              FormBuilderValidators.compose([
                                FormBuilderValidators.required(),
                                (value) {
                                  if (_formKey.currentState!.fields["password"]
                                          ?.value
                                          .toString() !=
                                      value) {
                                    return "비밀번호가 일치하지 않습니다.";
                                  }
                                  return null;
                                }
                              ]),
                              true),
                          const SizedBox(
                            height: 20,
                            width: double.infinity,
                          ),
                          FilledButton(onPressed: _submit, child: const Text("test")),
                        ],
                      ))));
        }),
      ),
    );
  }

  FormBuilderTextField renderTextField(String name, String labelText,
      String? Function(String?)? validator, obscureText) {
    return FormBuilderTextField(
      name: name,
      onChanged: (val) {
        debugPrint(val); // Print the text value write into TextField
      },
      style: const TextStyle(
        fontSize: 20,
      ),
      decoration: InputDecoration(
        labelText: labelText,
      ),
      validator: validator,
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
