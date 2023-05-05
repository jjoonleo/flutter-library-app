// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Books _$$_BooksFromJson(Map<String, dynamic> json) => _$_Books(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_BooksToJson(_$_Books instance) => <String, dynamic>{
      'values': instance.values,
    };
