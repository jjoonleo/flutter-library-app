import 'package:flutter/material.dart';
import 'package:flutter_library_app/feature/books/presentation/widgets/getCheckouts.dart';
import 'package:flutter_library_app/feature/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final _userState = ref.watch(userState);
    final _userModel = ref.read(userModel);
    User? user = null;
    _userState.when(
        notLoggedIn: () {
        },
        loggedIn: (data) {
          user = data;
        },
        error: (_) {});
    return Scaffold(
      appBar: AppBar(title: Text("내 정보")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary.withAlpha(200),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Center(
                          child: Text(
                            user?.email[0].toUpperCase() ?? "",
                            style: TextStyle(
                                color: theme.colorScheme.onPrimary,
                                fontSize: 45,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                    Text(user?.name??"",style: TextStyle(fontSize: 25),),
                    Text(
                        "${user?.grade.toString() ?? "_"}학년 ${user?.classroom.toString() ?? "_"}반 ${user?.number.toString() ?? "_"}번"),
                    SizedBox(
                      height: 4,
                    ),Text(
                      user?.email ?? "example@example.com",
                      
                    ),
                    
                    TextButton(
                        onPressed: () {
                          _userModel.logout();
                          context.go("/");
                        },
                        child: Text("로그아웃"))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "대출 현황",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(child: GetCheckouts()),
          ],
        ),
      ),
    );
  }
}
