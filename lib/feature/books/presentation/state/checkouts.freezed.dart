// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkouts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckoutsState _$CheckoutsStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return _CheckoutsStateLoading.fromJson(json);
    case 'data':
      return _CheckoutsStateData.fromJson(json);
    case 'error':
      return _CheckoutsStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CheckoutsState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CheckoutsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Checkouts checkouts) data,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Checkouts checkouts)? data,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Checkouts checkouts)? data,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckoutsStateLoading value) loading,
    required TResult Function(_CheckoutsStateData value) data,
    required TResult Function(_CheckoutsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckoutsStateLoading value)? loading,
    TResult? Function(_CheckoutsStateData value)? data,
    TResult? Function(_CheckoutsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckoutsStateLoading value)? loading,
    TResult Function(_CheckoutsStateData value)? data,
    TResult Function(_CheckoutsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutsStateCopyWith<$Res> {
  factory $CheckoutsStateCopyWith(
          CheckoutsState value, $Res Function(CheckoutsState) then) =
      _$CheckoutsStateCopyWithImpl<$Res, CheckoutsState>;
}

/// @nodoc
class _$CheckoutsStateCopyWithImpl<$Res, $Val extends CheckoutsState>
    implements $CheckoutsStateCopyWith<$Res> {
  _$CheckoutsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckoutsStateLoadingCopyWith<$Res> {
  factory _$$_CheckoutsStateLoadingCopyWith(_$_CheckoutsStateLoading value,
          $Res Function(_$_CheckoutsStateLoading) then) =
      __$$_CheckoutsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckoutsStateLoadingCopyWithImpl<$Res>
    extends _$CheckoutsStateCopyWithImpl<$Res, _$_CheckoutsStateLoading>
    implements _$$_CheckoutsStateLoadingCopyWith<$Res> {
  __$$_CheckoutsStateLoadingCopyWithImpl(_$_CheckoutsStateLoading _value,
      $Res Function(_$_CheckoutsStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_CheckoutsStateLoading implements _CheckoutsStateLoading {
  const _$_CheckoutsStateLoading({final String? $type})
      : $type = $type ?? 'loading';

  factory _$_CheckoutsStateLoading.fromJson(Map<String, dynamic> json) =>
      _$$_CheckoutsStateLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CheckoutsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckoutsStateLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Checkouts checkouts) data,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Checkouts checkouts)? data,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Checkouts checkouts)? data,
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
    required TResult Function(_CheckoutsStateLoading value) loading,
    required TResult Function(_CheckoutsStateData value) data,
    required TResult Function(_CheckoutsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckoutsStateLoading value)? loading,
    TResult? Function(_CheckoutsStateData value)? data,
    TResult? Function(_CheckoutsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckoutsStateLoading value)? loading,
    TResult Function(_CheckoutsStateData value)? data,
    TResult Function(_CheckoutsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckoutsStateLoadingToJson(
      this,
    );
  }
}

abstract class _CheckoutsStateLoading implements CheckoutsState {
  const factory _CheckoutsStateLoading() = _$_CheckoutsStateLoading;

  factory _CheckoutsStateLoading.fromJson(Map<String, dynamic> json) =
      _$_CheckoutsStateLoading.fromJson;
}

/// @nodoc
abstract class _$$_CheckoutsStateDataCopyWith<$Res> {
  factory _$$_CheckoutsStateDataCopyWith(_$_CheckoutsStateData value,
          $Res Function(_$_CheckoutsStateData) then) =
      __$$_CheckoutsStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({Checkouts checkouts});

  $CheckoutsCopyWith<$Res> get checkouts;
}

/// @nodoc
class __$$_CheckoutsStateDataCopyWithImpl<$Res>
    extends _$CheckoutsStateCopyWithImpl<$Res, _$_CheckoutsStateData>
    implements _$$_CheckoutsStateDataCopyWith<$Res> {
  __$$_CheckoutsStateDataCopyWithImpl(
      _$_CheckoutsStateData _value, $Res Function(_$_CheckoutsStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkouts = null,
  }) {
    return _then(_$_CheckoutsStateData(
      null == checkouts
          ? _value.checkouts
          : checkouts // ignore: cast_nullable_to_non_nullable
              as Checkouts,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckoutsCopyWith<$Res> get checkouts {
    return $CheckoutsCopyWith<$Res>(_value.checkouts, (value) {
      return _then(_value.copyWith(checkouts: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckoutsStateData implements _CheckoutsStateData {
  const _$_CheckoutsStateData(this.checkouts, {final String? $type})
      : $type = $type ?? 'data';

  factory _$_CheckoutsStateData.fromJson(Map<String, dynamic> json) =>
      _$$_CheckoutsStateDataFromJson(json);

  @override
  final Checkouts checkouts;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CheckoutsState.data(checkouts: $checkouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckoutsStateData &&
            (identical(other.checkouts, checkouts) ||
                other.checkouts == checkouts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, checkouts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckoutsStateDataCopyWith<_$_CheckoutsStateData> get copyWith =>
      __$$_CheckoutsStateDataCopyWithImpl<_$_CheckoutsStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Checkouts checkouts) data,
    required TResult Function(String? message) error,
  }) {
    return data(checkouts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Checkouts checkouts)? data,
    TResult? Function(String? message)? error,
  }) {
    return data?.call(checkouts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Checkouts checkouts)? data,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(checkouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckoutsStateLoading value) loading,
    required TResult Function(_CheckoutsStateData value) data,
    required TResult Function(_CheckoutsStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckoutsStateLoading value)? loading,
    TResult? Function(_CheckoutsStateData value)? data,
    TResult? Function(_CheckoutsStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckoutsStateLoading value)? loading,
    TResult Function(_CheckoutsStateData value)? data,
    TResult Function(_CheckoutsStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckoutsStateDataToJson(
      this,
    );
  }
}

abstract class _CheckoutsStateData implements CheckoutsState {
  const factory _CheckoutsStateData(final Checkouts checkouts) =
      _$_CheckoutsStateData;

  factory _CheckoutsStateData.fromJson(Map<String, dynamic> json) =
      _$_CheckoutsStateData.fromJson;

  Checkouts get checkouts;
  @JsonKey(ignore: true)
  _$$_CheckoutsStateDataCopyWith<_$_CheckoutsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckoutsStateErrorCopyWith<$Res> {
  factory _$$_CheckoutsStateErrorCopyWith(_$_CheckoutsStateError value,
          $Res Function(_$_CheckoutsStateError) then) =
      __$$_CheckoutsStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_CheckoutsStateErrorCopyWithImpl<$Res>
    extends _$CheckoutsStateCopyWithImpl<$Res, _$_CheckoutsStateError>
    implements _$$_CheckoutsStateErrorCopyWith<$Res> {
  __$$_CheckoutsStateErrorCopyWithImpl(_$_CheckoutsStateError _value,
      $Res Function(_$_CheckoutsStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_CheckoutsStateError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckoutsStateError implements _CheckoutsStateError {
  const _$_CheckoutsStateError({this.message, final String? $type})
      : $type = $type ?? 'error';

  factory _$_CheckoutsStateError.fromJson(Map<String, dynamic> json) =>
      _$$_CheckoutsStateErrorFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CheckoutsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckoutsStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckoutsStateErrorCopyWith<_$_CheckoutsStateError> get copyWith =>
      __$$_CheckoutsStateErrorCopyWithImpl<_$_CheckoutsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Checkouts checkouts) data,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Checkouts checkouts)? data,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Checkouts checkouts)? data,
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
    required TResult Function(_CheckoutsStateLoading value) loading,
    required TResult Function(_CheckoutsStateData value) data,
    required TResult Function(_CheckoutsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckoutsStateLoading value)? loading,
    TResult? Function(_CheckoutsStateData value)? data,
    TResult? Function(_CheckoutsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckoutsStateLoading value)? loading,
    TResult Function(_CheckoutsStateData value)? data,
    TResult Function(_CheckoutsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckoutsStateErrorToJson(
      this,
    );
  }
}

abstract class _CheckoutsStateError implements CheckoutsState {
  const factory _CheckoutsStateError({final String? message}) =
      _$_CheckoutsStateError;

  factory _CheckoutsStateError.fromJson(Map<String, dynamic> json) =
      _$_CheckoutsStateError.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$_CheckoutsStateErrorCopyWith<_$_CheckoutsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
