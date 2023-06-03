// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      id: json['id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      isbn: json['isbn'] as String,
      publisher: json['publisher'] as String,
      description: json['description'] as String? ?? null,
      available: json['available'] as String? ?? null,
      img: json['img'] as String? ?? "noimg.jpeg",
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'isbn': instance.isbn,
      'publisher': instance.publisher,
      'description': instance.description,
      'available': instance.available,
      'img': instance.img,
    };
