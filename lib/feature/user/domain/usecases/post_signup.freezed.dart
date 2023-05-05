// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_signup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignupParams _$SignupParamsFromJson(Map<String, dynamic> json) {
  return _SignupParams.fromJson(json);
}

/// @nodoc
mixin _$SignupParams {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get grade => throw _privateConstructorUsedError;
  String get classroom => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupParamsCopyWith<SignupParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupParamsCopyWith<$Res> {
  factory $SignupParamsCopyWith(
          SignupParams value, $Res Function(SignupParams) then) =
      _$SignupParamsCopyWithImpl<$Res, SignupParams>;
  @useResult
  $Res call(
      {String email,
      String password,
      String name,
      String grade,
      String classroom,
      String number});
}

/// @nodoc
class _$SignupParamsCopyWithImpl<$Res, $Val extends SignupParams>
    implements $SignupParamsCopyWith<$Res> {
  _$SignupParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? grade = null,
    Object? classroom = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupParamsCopyWith<$Res>
    implements $SignupParamsCopyWith<$Res> {
  factory _$$_SignupParamsCopyWith(
          _$_SignupParams value, $Res Function(_$_SignupParams) then) =
      __$$_SignupParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String name,
      String grade,
      String classroom,
      String number});
}

/// @nodoc
class __$$_SignupParamsCopyWithImpl<$Res>
    extends _$SignupParamsCopyWithImpl<$Res, _$_SignupParams>
    implements _$$_SignupParamsCopyWith<$Res> {
  __$$_SignupParamsCopyWithImpl(
      _$_SignupParams _value, $Res Function(_$_SignupParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? grade = null,
    Object? classroom = null,
    Object? number = null,
  }) {
    return _then(_$_SignupParams(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignupParams implements _SignupParams {
  _$_SignupParams(
      {required this.email,
      required this.password,
      required this.name,
      required this.grade,
      required this.classroom,
      required this.number});

  factory _$_SignupParams.fromJson(Map<String, dynamic> json) =>
      _$$_SignupParamsFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;
  @override
  final String grade;
  @override
  final String classroom;
  @override
  final String number;

  @override
  String toString() {
    return 'SignupParams(email: $email, password: $password, name: $name, grade: $grade, classroom: $classroom, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupParams &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, name, grade, classroom, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupParamsCopyWith<_$_SignupParams> get copyWith =>
      __$$_SignupParamsCopyWithImpl<_$_SignupParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignupParamsToJson(
      this,
    );
  }
}

abstract class _SignupParams implements SignupParams {
  factory _SignupParams(
      {required final String email,
      required final String password,
      required final String name,
      required final String grade,
      required final String classroom,
      required final String number}) = _$_SignupParams;

  factory _SignupParams.fromJson(Map<String, dynamic> json) =
      _$_SignupParams.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get name;
  @override
  String get grade;
  @override
  String get classroom;
  @override
  String get number;
  @override
  @JsonKey(ignore: true)
  _$$_SignupParamsCopyWith<_$_SignupParams> get copyWith =>
      throw _privateConstructorUsedError;
}
