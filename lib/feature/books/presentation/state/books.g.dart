// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BooksStateLoading _$$_BooksStateLoadingFromJson(Map<String, dynamic> json) =>
    _$_BooksStateLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_BooksStateLoadingToJson(
        _$_BooksStateLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_BooksStateData _$$_BooksStateDataFromJson(Map<String, dynamic> json) =>
    _$_BooksStateData(
      Books.fromJson(json['books'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_BooksStateDataToJson(_$_BooksStateData instance) =>
    <String, dynamic>{
      'books': instance.books,
      'runtimeType': instance.$type,
    };

_$_BooksStateError _$$_BooksStateErrorFromJson(Map<String, dynamic> json) =>
    _$_BooksStateError(
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_BooksStateErrorToJson(_$_BooksStateError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
