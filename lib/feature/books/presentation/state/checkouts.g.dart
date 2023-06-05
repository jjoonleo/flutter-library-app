// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkouts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckoutsStateLoading _$$_CheckoutsStateLoadingFromJson(
        Map<String, dynamic> json) =>
    _$_CheckoutsStateLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_CheckoutsStateLoadingToJson(
        _$_CheckoutsStateLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_CheckoutsStateData _$$_CheckoutsStateDataFromJson(
        Map<String, dynamic> json) =>
    _$_CheckoutsStateData(
      Checkouts.fromJson(json['checkouts'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_CheckoutsStateDataToJson(
        _$_CheckoutsStateData instance) =>
    <String, dynamic>{
      'checkouts': instance.checkouts,
      'runtimeType': instance.$type,
    };

_$_CheckoutsStateError _$$_CheckoutsStateErrorFromJson(
        Map<String, dynamic> json) =>
    _$_CheckoutsStateError(
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_CheckoutsStateErrorToJson(
        _$_CheckoutsStateError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
