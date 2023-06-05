import 'package:flutter/material.dart';
import 'package:flutter_library_app/feature/books/books.dart';
import 'package:flutter_library_app/feature/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetCheckouts extends ConsumerStatefulWidget {
  const GetCheckouts({super.key});

  @override
  ConsumerState<GetCheckouts> createState() => _GetCheckoutsState();
}

class _GetCheckoutsState extends ConsumerState<GetCheckouts> {
  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userState);
    final checkoutsState = ref.watch(checkoutsListState);
    final checkoutsModel = ref.read(chekcoutsListModel);

    return Column(
      children: [
        FilledButton(
            onPressed: () {
              checkoutsModel.loadCheckouts(user);
            },
            child: Text("load checkouts")),
        checkoutsState.when(
            loading: () => Text("loading"),
            data: (checkouts) {
              
              return SizedBox(
                height: 600,
                child: ListView.builder(
                    itemCount: checkouts.values.length,
                    itemBuilder: (itemcontext, index) {
                      final checkout = checkouts.values[index];
                      return BookTile(id: checkout.book);
                    }),
              );
            },
            error: (_) {
              return Text("error");
            })
      ],
    );
  }
}
