// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserStateLoading _$$_UserStateLoadingFromJson(Map<String, dynamic> json) =>
    _$_UserStateLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserStateLoadingToJson(_$_UserStateLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_UserStateData _$$_UserStateDataFromJson(Map<String, dynamic> json) =>
    _$_UserStateData(
      User.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserStateDataToJson(_$_UserStateData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'runtimeType': instance.$type,
    };

_$_UserStateError _$$_UserStateErrorFromJson(Map<String, dynamic> json) =>
    _$_UserStateError(
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserStateErrorToJson(_$_UserStateError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
