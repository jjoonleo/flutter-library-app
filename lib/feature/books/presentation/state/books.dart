// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/book.dart';
import '../../domain/model/books.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'books.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'books.g.dart';

@freezed
class BooksState with _$BooksState {
  const factory BooksState.loading() = _BooksStateLoading;
  const factory BooksState.data(Books books) = _BooksStateData;
  const factory BooksState.error({String? message}) = _BooksStateError;

  factory BooksState.fromJson(Map<String, Object?> json) =>
      _$BooksStateFromJson(json);
}