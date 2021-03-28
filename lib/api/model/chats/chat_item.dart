import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_item.freezed.dart';
part 'chat_item.g.dart';

@freezed
abstract class ChatItemModel with _$ChatItemModel {
  const factory ChatItemModel({
    @JsonKey(name: 'name') String username,
    @JsonKey(name: 'last_message') String password,
    @JsonKey(name: 'avatar') String avatar,
    @JsonKey(name: 'last_seen') String lastSeen,
    @JsonKey(name: 'chats') String chats,
  }) = _ChatItemModel;

  factory ChatItemModel.fromJson(Map<String, dynamic> json) =>
      _$ChatItemModelFromJson(json);
}
