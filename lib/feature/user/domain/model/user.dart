import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
factory User({
  required String token,
  required String email,
  required String name,
  required int number,
  required int grade,
  required int classroom,
  required List? borrowedBooks,
  required String id
}) = _User;

factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}