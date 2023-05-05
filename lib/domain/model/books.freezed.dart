// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Books _$BooksFromJson(Map<String, dynamic> json) {
  return _Books.fromJson(json);
}

/// @nodoc
mixin _$Books {
  List<Book> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooksCopyWith<Books> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksCopyWith<$Res> {
  factory $BooksCopyWith(Books value, $Res Function(Books) then) =
      _$BooksCopyWithImpl<$Res, Books>;
  @useResult
  $Res call({List<Book> values});
}

/// @nodoc
class _$BooksCopyWithImpl<$Res, $Val extends Books>
    implements $BooksCopyWith<$Res> {
  _$BooksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BooksCopyWith<$Res> implements $BooksCopyWith<$Res> {
  factory _$$_BooksCopyWith(_$_Books value, $Res Function(_$_Books) then) =
      __$$_BooksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Book> values});
}

/// @nodoc
class __$$_BooksCopyWithImpl<$Res> extends _$BooksCopyWithImpl<$Res, _$_Books>
    implements _$$_BooksCopyWith<$Res> {
  __$$_BooksCopyWithImpl(_$_Books _value, $Res Function(_$_Books) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$_Books(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Books implements _Books {
  const _$_Books({final List<Book> values = const []}) : _values = values;

  factory _$_Books.fromJson(Map<String, dynamic> json) =>
      _$$_BooksFromJson(json);

  final List<Book> _values;
  @override
  @JsonKey()
  List<Book> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'Books(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Books &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BooksCopyWith<_$_Books> get copyWith =>
      __$$_BooksCopyWithImpl<_$_Books>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BooksToJson(
      this,
    );
  }
}

abstract class _Books implements Books {
  const factory _Books({final List<Book> values}) = _$_Books;

  factory _Books.fromJson(Map<String, dynamic> json) = _$_Books.fromJson;

  @override
  List<Book> get values;
  @override
  @JsonKey(ignore: true)
  _$$_BooksCopyWith<_$_Books> get copyWith =>
      throw _privateConstructorUsedError;
}
