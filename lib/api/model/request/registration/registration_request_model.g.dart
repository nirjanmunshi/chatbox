// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationRequestModel _$_$_RegistrationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _$_RegistrationRequestModel(
    name: json['name'] as String,
    mobile: json['mobile'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_RegistrationRequestModelToJson(
        _$_RegistrationRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
      'email': instance.email,
      'password': instance.password,
    };
