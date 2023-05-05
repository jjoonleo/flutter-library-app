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

BooksState _$BooksStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return _BooksStateLoading.fromJson(json);
    case 'data':
      return _BooksStateData.fromJson(json);
    case 'error':
      return _BooksStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BooksState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Books books) data,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Books books)? data,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Books books)? data,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateData value) data,
    required TResult Function(_BooksStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BooksStateLoading value)? loading,
    TResult? Function(_BooksStateData value)? data,
    TResult? Function(_BooksStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
          BooksState value, $Res Function(BooksState) then) =
      _$BooksStateCopyWithImpl<$Res, BooksState>;
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res, $Val extends BooksState>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BooksStateLoadingCopyWith<$Res> {
  factory _$$_BooksStateLoadingCopyWith(_$_BooksStateLoading value,
          $Res Function(_$_BooksStateLoading) then) =
      __$$_BooksStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BooksStateLoadingCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$_BooksStateLoading>
    implements _$$_BooksStateLoadingCopyWith<$Res> {
  __$$_BooksStateLoadingCopyWithImpl(
      _$_BooksStateLoading _value, $Res Function(_$_BooksStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_BooksStateLoading implements _BooksStateLoading {
  const _$_BooksStateLoading({final String? $type})
      : $type = $type ?? 'loading';

  factory _$_BooksStateLoading.fromJson(Map<String, dynamic> json) =>
      _$$_BooksStateLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BooksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BooksStateLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Books books) data,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Books books)? data,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Books books)? data,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateData value) data,
    required TResult Function(_BooksStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BooksStateLoading value)? loading,
    TResult? Function(_BooksStateData value)? data,
    TResult? Function(_BooksStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BooksStateLoadingToJson(
      this,
    );
  }
}

abstract class _BooksStateLoading implements BooksState {
  const factory _BooksStateLoading() = _$_BooksStateLoading;

  factory _BooksStateLoading.fromJson(Map<String, dynamic> json) =
      _$_BooksStateLoading.fromJson;
}

/// @nodoc
abstract class _$$_BooksStateDataCopyWith<$Res> {
  factory _$$_BooksStateDataCopyWith(
          _$_BooksStateData value, $Res Function(_$_BooksStateData) then) =
      __$$_BooksStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({Books books});

  $BooksCopyWith<$Res> get books;
}

/// @nodoc
class __$$_BooksStateDataCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$_BooksStateData>
    implements _$$_BooksStateDataCopyWith<$Res> {
  __$$_BooksStateDataCopyWithImpl(
      _$_BooksStateData _value, $Res Function(_$_BooksStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$_BooksStateData(
      null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as Books,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BooksCopyWith<$Res> get books {
    return $BooksCopyWith<$Res>(_value.books, (value) {
      return _then(_value.copyWith(books: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_BooksStateData implements _BooksStateData {
  const _$_BooksStateData(this.books, {final String? $type})
      : $type = $type ?? 'data';

  factory _$_BooksStateData.fromJson(Map<String, dynamic> json) =>
      _$$_BooksStateDataFromJson(json);

  @override
  final Books books;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BooksState.data(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooksStateData &&
            (identical(other.books, books) || other.books == books));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, books);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BooksStateDataCopyWith<_$_BooksStateData> get copyWith =>
      __$$_BooksStateDataCopyWithImpl<_$_BooksStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Books books) data,
    required TResult Function(String? message) error,
  }) {
    return data(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Books books)? data,
    TResult? Function(String? message)? error,
  }) {
    return data?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Books books)? data,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateData value) data,
    required TResult Function(_BooksStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BooksStateLoading value)? loading,
    TResult? Function(_BooksStateData value)? data,
    TResult? Function(_BooksStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BooksStateDataToJson(
      this,
    );
  }
}

abstract class _BooksStateData implements BooksState {
  const factory _BooksStateData(final Books books) = _$_BooksStateData;

  factory _BooksStateData.fromJson(Map<String, dynamic> json) =
      _$_BooksStateData.fromJson;

  Books get books;
  @JsonKey(ignore: true)
  _$$_BooksStateDataCopyWith<_$_BooksStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BooksStateErrorCopyWith<$Res> {
  factory _$$_BooksStateErrorCopyWith(
          _$_BooksStateError value, $Res Function(_$_BooksStateError) then) =
      __$$_BooksStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_BooksStateErrorCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$_BooksStateError>
    implements _$$_BooksStateErrorCopyWith<$Res> {
  __$$_BooksStateErrorCopyWithImpl(
      _$_BooksStateError _value, $Res Function(_$_BooksStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_BooksStateError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BooksStateError implements _BooksStateError {
  const _$_BooksStateError({this.message, final String? $type})
      : $type = $type ?? 'error';

  factory _$_BooksStateError.fromJson(Map<String, dynamic> json) =>
      _$$_BooksStateErrorFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BooksState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooksStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BooksStateErrorCopyWith<_$_BooksStateError> get copyWith =>
      __$$_BooksStateErrorCopyWithImpl<_$_BooksStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Books books) data,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Books books)? data,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Books books)? data,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksStateLoading value) loading,
    required TResult Function(_BooksStateData value) data,
    required TResult Function(_BooksStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BooksStateLoading value)? loading,
    TResult? Function(_BooksStateData value)? data,
    TResult? Function(_BooksStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksStateLoading value)? loading,
    TResult Function(_BooksStateData value)? data,
    TResult Function(_BooksStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BooksStateErrorToJson(
      this,
    );
  }
}

abstract class _BooksStateError implements BooksState {
  const factory _BooksStateError({final String? message}) = _$_BooksStateError;

  factory _BooksStateError.fromJson(Map<String, dynamic> json) =
      _$_BooksStateError.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$_BooksStateErrorCopyWith<_$_BooksStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
