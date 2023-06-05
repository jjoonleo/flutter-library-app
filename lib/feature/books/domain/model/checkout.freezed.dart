// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Checkout _$CheckoutFromJson(Map<String, dynamic> json) {
  return _Checkout.fromJson(json);
}

/// @nodoc
mixin _$Checkout {
  String get id => throw _privateConstructorUsedError;
  String get book => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  DateTime? get returnDate => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutCopyWith<Checkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutCopyWith<$Res> {
  factory $CheckoutCopyWith(Checkout value, $Res Function(Checkout) then) =
      _$CheckoutCopyWithImpl<$Res, Checkout>;
  @useResult
  $Res call(
      {String id,
      String book,
      String user,
      DateTime? returnDate,
      DateTime dueDate,
      DateTime date});
}

/// @nodoc
class _$CheckoutCopyWithImpl<$Res, $Val extends Checkout>
    implements $CheckoutCopyWith<$Res> {
  _$CheckoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? book = null,
    Object? user = null,
    Object? returnDate = freezed,
    Object? dueDate = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: freezed == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckoutCopyWith<$Res> implements $CheckoutCopyWith<$Res> {
  factory _$$_CheckoutCopyWith(
          _$_Checkout value, $Res Function(_$_Checkout) then) =
      __$$_CheckoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String book,
      String user,
      DateTime? returnDate,
      DateTime dueDate,
      DateTime date});
}

/// @nodoc
class __$$_CheckoutCopyWithImpl<$Res>
    extends _$CheckoutCopyWithImpl<$Res, _$_Checkout>
    implements _$$_CheckoutCopyWith<$Res> {
  __$$_CheckoutCopyWithImpl(
      _$_Checkout _value, $Res Function(_$_Checkout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? book = null,
    Object? user = null,
    Object? returnDate = freezed,
    Object? dueDate = null,
    Object? date = null,
  }) {
    return _then(_$_Checkout(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: freezed == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Checkout implements _Checkout {
  const _$_Checkout(
      {required this.id,
      required this.book,
      required this.user,
      this.returnDate = null,
      required this.dueDate,
      required this.date});

  factory _$_Checkout.fromJson(Map<String, dynamic> json) =>
      _$$_CheckoutFromJson(json);

  @override
  final String id;
  @override
  final String book;
  @override
  final String user;
  @override
  @JsonKey()
  final DateTime? returnDate;
  @override
  final DateTime dueDate;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'Checkout(id: $id, book: $book, user: $user, returnDate: $returnDate, dueDate: $dueDate, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Checkout &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, book, user, returnDate, dueDate, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckoutCopyWith<_$_Checkout> get copyWith =>
      __$$_CheckoutCopyWithImpl<_$_Checkout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckoutToJson(
      this,
    );
  }
}

abstract class _Checkout implements Checkout {
  const factory _Checkout(
      {required final String id,
      required final String book,
      required final String user,
      final DateTime? returnDate,
      required final DateTime dueDate,
      required final DateTime date}) = _$_Checkout;

  factory _Checkout.fromJson(Map<String, dynamic> json) = _$_Checkout.fromJson;

  @override
  String get id;
  @override
  String get book;
  @override
  String get user;
  @override
  DateTime? get returnDate;
  @override
  DateTime get dueDate;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_CheckoutCopyWith<_$_Checkout> get copyWith =>
      throw _privateConstructorUsedError;
}
