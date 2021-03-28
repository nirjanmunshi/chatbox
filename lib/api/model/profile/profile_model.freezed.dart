// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
class _$ProfileModelTearOff {
  const _$ProfileModelTearOff();

// ignore: unused_element
  _ProfileModel call(
      {@JsonKey(name: 'name') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'mobile') String mobile,
      @JsonKey(name: 'avatar') String avatar}) {
    return _ProfileModel(
      username: username,
      email: email,
      mobile: mobile,
      avatar: avatar,
    );
  }

// ignore: unused_element
  ProfileModel fromJson(Map<String, Object> json) {
    return ProfileModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileModel = _$ProfileModelTearOff();

/// @nodoc
mixin _$ProfileModel {
  @JsonKey(name: 'name')
  String get username;
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'mobile')
  String get mobile;
  @JsonKey(name: 'avatar')
  String get avatar;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'mobile') String mobile,
      @JsonKey(name: 'avatar') String avatar});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res> implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  final ProfileModel _value;
  // ignore: unused_field
  final $Res Function(ProfileModel) _then;

  @override
  $Res call({
    Object username = freezed,
    Object email = freezed,
    Object mobile = freezed,
    Object avatar = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      mobile: mobile == freezed ? _value.mobile : mobile as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(
          _ProfileModel value, $Res Function(_ProfileModel) then) =
      __$ProfileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'mobile') String mobile,
      @JsonKey(name: 'avatar') String avatar});
}

/// @nodoc
class __$ProfileModelCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(
      _ProfileModel _value, $Res Function(_ProfileModel) _then)
      : super(_value, (v) => _then(v as _ProfileModel));

  @override
  _ProfileModel get _value => super._value as _ProfileModel;

  @override
  $Res call({
    Object username = freezed,
    Object email = freezed,
    Object mobile = freezed,
    Object avatar = freezed,
  }) {
    return _then(_ProfileModel(
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      mobile: mobile == freezed ? _value.mobile : mobile as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProfileModel implements _ProfileModel {
  const _$_ProfileModel(
      {@JsonKey(name: 'name') this.username,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'mobile') this.mobile,
      @JsonKey(name: 'avatar') this.avatar});

  factory _$_ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String username;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'mobile')
  final String mobile;
  @override
  @JsonKey(name: 'avatar')
  final String avatar;

  @override
  String toString() {
    return 'ProfileModel(username: $username, email: $email, mobile: $mobile, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileModel &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(avatar);

  @JsonKey(ignore: true)
  @override
  _$ProfileModelCopyWith<_ProfileModel> get copyWith =>
      __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileModelToJson(this);
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {@JsonKey(name: 'name') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'mobile') String mobile,
      @JsonKey(name: 'avatar') String avatar}) = _$_ProfileModel;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get username;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'mobile')
  String get mobile;
  @override
  @JsonKey(name: 'avatar')
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$ProfileModelCopyWith<_ProfileModel> get copyWith;
}
