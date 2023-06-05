// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkouts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Checkouts _$$_CheckoutsFromJson(Map<String, dynamic> json) => _$_Checkouts(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Checkout.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CheckoutsToJson(_$_Checkouts instance) =>
    <String, dynamic>{
      'values': instance.values,
    };
