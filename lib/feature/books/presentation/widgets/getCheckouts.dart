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
  late final _checkoutModel = ref.read(checkcoutsListModel);
  final today = DateTime.now();
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _checkoutModel.loadCheckouts());
  }

  @override
  Widget build(BuildContext context) {
    final checkoutsState = ref.watch(checkoutsListState);
    debugPrint("getCheckout rendered");

    return checkoutsState.when(
        loading: () => Text("loading"),
        data: (checkouts) {
          return Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await _checkoutModel.loadCheckouts();
              },
              child: ListView.builder(
                  itemCount: checkouts.values.length,
                  itemExtent: 150,
                  itemBuilder: (itemcontext, index) {
                    final checkout = checkouts.values[index];

                    debugPrint(
                        checkout.dueDate.difference(today).inDays.toString());
                    return BookTile(
                      id: checkout.book,
                      dueDate: checkout.dueDate,
                    );
                  }),
            ),
          );
        },
        error: (_) {
          return Text("error");
        });
  }
}
