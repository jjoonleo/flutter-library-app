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

Checkouts _$CheckoutsFromJson(Map<String, dynamic> json) {
  return _Checkouts.fromJson(json);
}

/// @nodoc
mixin _$Checkouts {
  List<Checkout> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutsCopyWith<Checkouts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutsCopyWith<$Res> {
  factory $CheckoutsCopyWith(Checkouts value, $Res Function(Checkouts) then) =
      _$CheckoutsCopyWithImpl<$Res, Checkouts>;
  @useResult
  $Res call({List<Checkout> values});
}

/// @nodoc
class _$CheckoutsCopyWithImpl<$Res, $Val extends Checkouts>
    implements $CheckoutsCopyWith<$Res> {
  _$CheckoutsCopyWithImpl(this._value, this._then);

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
              as List<Checkout>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckoutsCopyWith<$Res> implements $CheckoutsCopyWith<$Res> {
  factory _$$_CheckoutsCopyWith(
          _$_Checkouts value, $Res Function(_$_Checkouts) then) =
      __$$_CheckoutsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Checkout> values});
}

/// @nodoc
class __$$_CheckoutsCopyWithImpl<$Res>
    extends _$CheckoutsCopyWithImpl<$Res, _$_Checkouts>
    implements _$$_CheckoutsCopyWith<$Res> {
  __$$_CheckoutsCopyWithImpl(
      _$_Checkouts _value, $Res Function(_$_Checkouts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$_Checkouts(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Checkout>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Checkouts implements _Checkouts {
  const _$_Checkouts({final List<Checkout> values = const []})
      : _values = values;

  factory _$_Checkouts.fromJson(Map<String, dynamic> json) =>
      _$$_CheckoutsFromJson(json);

  final List<Checkout> _values;
  @override
  @JsonKey()
  List<Checkout> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'Checkouts(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Checkouts &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckoutsCopyWith<_$_Checkouts> get copyWith =>
      __$$_CheckoutsCopyWithImpl<_$_Checkouts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckoutsToJson(
      this,
    );
  }
}

abstract class _Checkouts implements Checkouts {
  const factory _Checkouts({final List<Checkout> values}) = _$_Checkouts;

  factory _Checkouts.fromJson(Map<String, dynamic> json) =
      _$_Checkouts.fromJson;

  @override
  List<Checkout> get values;
  @override
  @JsonKey(ignore: true)
  _$$_CheckoutsCopyWith<_$_Checkouts> get copyWith =>
      throw _privateConstructorUsedError;
}
