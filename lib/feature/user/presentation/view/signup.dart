import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_library_app/feature/user/user.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> {
  late final _userModel = ref.read(userModel);
  final _formKey = GlobalKey<FormBuilderState>();
  List<int> gradeOptions = List.generate(3, (index) => index + 1);
  List<int> classroomOptions = List.generate(11, (index) => index + 1);
  List<int> numberOptions = List.generate(40, (index) => index + 1);

  int? grade;
  int? number;
  int? classroom;
  late final usermodel = ref.read(userModel);
  late final user = ref.watch(userState);

  var snackBar = const SnackBar(
    content: Center(child: Text('학번을 입력하세요.')),
  );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.

  _submit() async {
    debugPrint(grade.toString());
    debugPrint(_formKey.currentState?.validate().toString());
    if (number == null || classroom == null || grade == null) {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      debugPrint(_formKey.currentState?.value.toString());
    } else {
      debugPrint(_formKey.currentState?.value.toString());
      debugPrint('validation failed');
      return;
    }

    Either<Failure, User> result = await usermodel.signup(SignupParams(
      email: _formKey.currentState!.fields["email"]!.value.toString(),
      password: _formKey.currentState!.fields["password"]!.value.toString(),
      name: _formKey.currentState!.fields["name"]!.value.toString(),
      grade: grade.toString(),
      classroom: classroom.toString(),
      number: number.toString(),
    ));
    result.fold((l) {
      Modal.build("에러", l.toString(), context);
    }, (r) {
      Navigator.pop(context);
      Modal.build("회원가입 완료", "회원가입이 완료 되었습니다.", context);
      _userModel.store();
    });
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
                                  width: 50,
                                  callback: (value) {
                                    grade = value;
                                  },
                                ),
                                const Text("학년"),
                                const SizedBox(
                                  width: 15,
                                ),
                                Dropdown(
                                    name: "classroom",
                                    options: classroomOptions,
                                    width: 50,
                                    callback: (value) {
                                      classroom = value;
                                    }),
                                const Text("반"),
                                const SizedBox(
                                  width: 15,
                                ),
                                Dropdown(
                                    name: "number",
                                    options: numberOptions,
                                    width: 50,
                                    callback: (value) {
                                      number = value;
                                    }),
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
                          FilledButton(
                              onPressed: _submit, child: const Text("signup")),
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
