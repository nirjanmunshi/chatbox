// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chat_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ChatItemModel _$ChatItemModelFromJson(Map<String, dynamic> json) {
  return _ChatItemModel.fromJson(json);
}

/// @nodoc
class _$ChatItemModelTearOff {
  const _$ChatItemModelTearOff();

// ignore: unused_element
  _ChatItemModel call(
      {@JsonKey(name: 'name') String username,
      @JsonKey(name: 'last_message') String password,
      @JsonKey(name: 'avatar') String avatar,
      @JsonKey(name: 'last_seen') String lastSeen,
      @JsonKey(name: 'chats') String chats}) {
    return _ChatItemModel(
      username: username,
      password: password,
      avatar: avatar,
      lastSeen: lastSeen,
      chats: chats,
    );
  }

// ignore: unused_element
  ChatItemModel fromJson(Map<String, Object> json) {
    return ChatItemModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ChatItemModel = _$ChatItemModelTearOff();

/// @nodoc
mixin _$ChatItemModel {
  @JsonKey(name: 'name')
  String get username;
  @JsonKey(name: 'last_message')
  String get password;
  @JsonKey(name: 'avatar')
  String get avatar;
  @JsonKey(name: 'last_seen')
  String get lastSeen;
  @JsonKey(name: 'chats')
  String get chats;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ChatItemModelCopyWith<ChatItemModel> get copyWith;
}

/// @nodoc
abstract class $ChatItemModelCopyWith<$Res> {
  factory $ChatItemModelCopyWith(
          ChatItemModel value, $Res Function(ChatItemModel) then) =
      _$ChatItemModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String username,
      @JsonKey(name: 'last_message') String password,
      @JsonKey(name: 'avatar') String avatar,
      @JsonKey(name: 'last_seen') String lastSeen,
      @JsonKey(name: 'chats') String chats});
}

/// @nodoc
class _$ChatItemModelCopyWithImpl<$Res>
    implements $ChatItemModelCopyWith<$Res> {
  _$ChatItemModelCopyWithImpl(this._value, this._then);

  final ChatItemModel _value;
  // ignore: unused_field
  final $Res Function(ChatItemModel) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
    Object avatar = freezed,
    Object lastSeen = freezed,
    Object chats = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      lastSeen: lastSeen == freezed ? _value.lastSeen : lastSeen as String,
      chats: chats == freezed ? _value.chats : chats as String,
    ));
  }
}

/// @nodoc
abstract class _$ChatItemModelCopyWith<$Res>
    implements $ChatItemModelCopyWith<$Res> {
  factory _$ChatItemModelCopyWith(
          _ChatItemModel value, $Res Function(_ChatItemModel) then) =
      __$ChatItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String username,
      @JsonKey(name: 'last_message') String password,
      @JsonKey(name: 'avatar') String avatar,
      @JsonKey(name: 'last_seen') String lastSeen,
      @JsonKey(name: 'chats') String chats});
}

/// @nodoc
class __$ChatItemModelCopyWithImpl<$Res>
    extends _$ChatItemModelCopyWithImpl<$Res>
    implements _$ChatItemModelCopyWith<$Res> {
  __$ChatItemModelCopyWithImpl(
      _ChatItemModel _value, $Res Function(_ChatItemModel) _then)
      : super(_value, (v) => _then(v as _ChatItemModel));

  @override
  _ChatItemModel get _value => super._value as _ChatItemModel;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
    Object avatar = freezed,
    Object lastSeen = freezed,
    Object chats = freezed,
  }) {
    return _then(_ChatItemModel(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      lastSeen: lastSeen == freezed ? _value.lastSeen : lastSeen as String,
      chats: chats == freezed ? _value.chats : chats as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ChatItemModel implements _ChatItemModel {
  const _$_ChatItemModel(
      {@JsonKey(name: 'name') this.username,
      @JsonKey(name: 'last_message') this.password,
      @JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'last_seen') this.lastSeen,
      @JsonKey(name: 'chats') this.chats});

  factory _$_ChatItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatItemModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String username;
  @override
  @JsonKey(name: 'last_message')
  final String password;
  @override
  @JsonKey(name: 'avatar')
  final String avatar;
  @override
  @JsonKey(name: 'last_seen')
  final String lastSeen;
  @override
  @JsonKey(name: 'chats')
  final String chats;

  @override
  String toString() {
    return 'ChatItemModel(username: $username, password: $password, avatar: $avatar, lastSeen: $lastSeen, chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatItemModel &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.lastSeen, lastSeen) ||
                const DeepCollectionEquality()
                    .equals(other.lastSeen, lastSeen)) &&
            (identical(other.chats, chats) ||
                const DeepCollectionEquality().equals(other.chats, chats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(lastSeen) ^
      const DeepCollectionEquality().hash(chats);

  @JsonKey(ignore: true)
  @override
  _$ChatItemModelCopyWith<_ChatItemModel> get copyWith =>
      __$ChatItemModelCopyWithImpl<_ChatItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatItemModelToJson(this);
  }
}

abstract class _ChatItemModel implements ChatItemModel {
  const factory _ChatItemModel(
      {@JsonKey(name: 'name') String username,
      @JsonKey(name: 'last_message') String password,
      @JsonKey(name: 'avatar') String avatar,
      @JsonKey(name: 'last_seen') String lastSeen,
      @JsonKey(name: 'chats') String chats}) = _$_ChatItemModel;

  factory _ChatItemModel.fromJson(Map<String, dynamic> json) =
      _$_ChatItemModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get username;
  @override
  @JsonKey(name: 'last_message')
  String get password;
  @override
  @JsonKey(name: 'avatar')
  String get avatar;
  @override
  @JsonKey(name: 'last_seen')
  String get lastSeen;
  @override
  @JsonKey(name: 'chats')
  String get chats;
  @override
  @JsonKey(ignore: true)
  _$ChatItemModelCopyWith<_ChatItemModel> get copyWith;
}
