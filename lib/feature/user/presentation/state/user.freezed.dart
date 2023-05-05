// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserState _$UserStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'notLoggedIn':
      return _UserStateLoading.fromJson(json);
    case 'loggedIn':
      return _UserStateData.fromJson(json);
    case 'error':
      return _UserStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function(User user) loggedIn,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLoggedIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateLoading value) notLoggedIn,
    required TResult Function(_UserStateData value) loggedIn,
    required TResult Function(_UserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateLoading value)? notLoggedIn,
    TResult? Function(_UserStateData value)? loggedIn,
    TResult? Function(_UserStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateLoading value)? notLoggedIn,
    TResult Function(_UserStateData value)? loggedIn,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserStateLoadingCopyWith<$Res> {
  factory _$$_UserStateLoadingCopyWith(
          _$_UserStateLoading value, $Res Function(_$_UserStateLoading) then) =
      __$$_UserStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserStateLoadingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserStateLoading>
    implements _$$_UserStateLoadingCopyWith<$Res> {
  __$$_UserStateLoadingCopyWithImpl(
      _$_UserStateLoading _value, $Res Function(_$_UserStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_UserStateLoading implements _UserStateLoading {
  const _$_UserStateLoading({final String? $type})
      : $type = $type ?? 'notLoggedIn';

  factory _$_UserStateLoading.fromJson(Map<String, dynamic> json) =>
      _$$_UserStateLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserState.notLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserStateLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function(User user) loggedIn,
    required TResult Function(String? message) error,
  }) {
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLoggedIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function(String? message)? error,
  }) {
    return notLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateLoading value) notLoggedIn,
    required TResult Function(_UserStateData value) loggedIn,
    required TResult Function(_UserStateError value) error,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateLoading value)? notLoggedIn,
    TResult? Function(_UserStateData value)? loggedIn,
    TResult? Function(_UserStateError value)? error,
  }) {
    return notLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateLoading value)? notLoggedIn,
    TResult Function(_UserStateData value)? loggedIn,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStateLoadingToJson(
      this,
    );
  }
}

abstract class _UserStateLoading implements UserState {
  const factory _UserStateLoading() = _$_UserStateLoading;

  factory _UserStateLoading.fromJson(Map<String, dynamic> json) =
      _$_UserStateLoading.fromJson;
}

/// @nodoc
abstract class _$$_UserStateDataCopyWith<$Res> {
  factory _$$_UserStateDataCopyWith(
          _$_UserStateData value, $Res Function(_$_UserStateData) then) =
      __$$_UserStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserStateDataCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserStateData>
    implements _$$_UserStateDataCopyWith<$Res> {
  __$$_UserStateDataCopyWithImpl(
      _$_UserStateData _value, $Res Function(_$_UserStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_UserStateData(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserStateData implements _UserStateData {
  const _$_UserStateData(this.user, {final String? $type})
      : $type = $type ?? 'loggedIn';

  factory _$_UserStateData.fromJson(Map<String, dynamic> json) =>
      _$$_UserStateDataFromJson(json);

  @override
  final User user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserState.loggedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStateData &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateDataCopyWith<_$_UserStateData> get copyWith =>
      __$$_UserStateDataCopyWithImpl<_$_UserStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function(User user) loggedIn,
    required TResult Function(String? message) error,
  }) {
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLoggedIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function(String? message)? error,
  }) {
    return loggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateLoading value) notLoggedIn,
    required TResult Function(_UserStateData value) loggedIn,
    required TResult Function(_UserStateError value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateLoading value)? notLoggedIn,
    TResult? Function(_UserStateData value)? loggedIn,
    TResult? Function(_UserStateError value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateLoading value)? notLoggedIn,
    TResult Function(_UserStateData value)? loggedIn,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStateDataToJson(
      this,
    );
  }
}

abstract class _UserStateData implements UserState {
  const factory _UserStateData(final User user) = _$_UserStateData;

  factory _UserStateData.fromJson(Map<String, dynamic> json) =
      _$_UserStateData.fromJson;

  User get user;
  @JsonKey(ignore: true)
  _$$_UserStateDataCopyWith<_$_UserStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserStateErrorCopyWith<$Res> {
  factory _$$_UserStateErrorCopyWith(
          _$_UserStateError value, $Res Function(_$_UserStateError) then) =
      __$$_UserStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_UserStateErrorCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserStateError>
    implements _$$_UserStateErrorCopyWith<$Res> {
  __$$_UserStateErrorCopyWithImpl(
      _$_UserStateError _value, $Res Function(_$_UserStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_UserStateError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserStateError implements _UserStateError {
  const _$_UserStateError({this.message, final String? $type})
      : $type = $type ?? 'error';

  factory _$_UserStateError.fromJson(Map<String, dynamic> json) =>
      _$$_UserStateErrorFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateErrorCopyWith<_$_UserStateError> get copyWith =>
      __$$_UserStateErrorCopyWithImpl<_$_UserStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function(User user) loggedIn,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLoggedIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function(User user)? loggedIn,
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
    required TResult Function(_UserStateLoading value) notLoggedIn,
    required TResult Function(_UserStateData value) loggedIn,
    required TResult Function(_UserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateLoading value)? notLoggedIn,
    TResult? Function(_UserStateData value)? loggedIn,
    TResult? Function(_UserStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateLoading value)? notLoggedIn,
    TResult Function(_UserStateData value)? loggedIn,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStateErrorToJson(
      this,
    );
  }
}

abstract class _UserStateError implements UserState {
  const factory _UserStateError({final String? message}) = _$_UserStateError;

  factory _UserStateError.fromJson(Map<String, dynamic> json) =
      _$_UserStateError.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$_UserStateErrorCopyWith<_$_UserStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
