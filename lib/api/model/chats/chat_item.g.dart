// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatItemModel _$_$_ChatItemModelFromJson(Map<String, dynamic> json) {
  return _$_ChatItemModel(
    username: json['name'] as String,
    password: json['last_message'] as String,
    avatar: json['avatar'] as String,
    lastSeen: json['last_seen'] as String,
    chats: json['chats'] as String,
  );
}

Map<String, dynamic> _$_$_ChatItemModelToJson(_$_ChatItemModel instance) =>
    <String, dynamic>{
      'name': instance.username,
      'last_message': instance.password,
      'avatar': instance.avatar,
      'last_seen': instance.lastSeen,
      'chats': instance.chats,
    };
