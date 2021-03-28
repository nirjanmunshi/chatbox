// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$_$_ProfileModelFromJson(Map<String, dynamic> json) {
  return _$_ProfileModel(
    username: json['name'] as String,
    email: json['email'] as String,
    mobile: json['mobile'] as String,
    avatar: json['avatar'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'name': instance.username,
      'email': instance.email,
      'mobile': instance.mobile,
      'avatar': instance.avatar,
    };
