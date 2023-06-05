// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Checkout _$$_CheckoutFromJson(Map<String, dynamic> json) => _$_Checkout(
      id: json['id'] as String,
      book: json['book'] as String,
      user: json['user'] as String,
      returnDate: json['returnDate'] == null
          ? null
          : DateTime.parse(json['returnDate'] as String),
      dueDate: DateTime.parse(json['dueDate'] as String),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_CheckoutToJson(_$_Checkout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'book': instance.book,
      'user': instance.user,
      'returnDate': instance.returnDate?.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'date': instance.date.toIso8601String(),
    };
