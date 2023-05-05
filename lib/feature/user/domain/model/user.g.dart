// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      token: json['token'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      number: json['number'] as int,
      grade: json['grade'] as int,
      classroom: json['classroom'] as int,
      borrowedBooks: json['borrowedBooks'] as List<dynamic>?,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'token': instance.token,
      'email': instance.email,
      'name': instance.name,
      'number': instance.number,
      'grade': instance.grade,
      'classroom': instance.classroom,
      'borrowedBooks': instance.borrowedBooks,
      'id': instance.id,
    };
