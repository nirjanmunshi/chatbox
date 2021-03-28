// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
class _$LoginResponseModelTearOff {
  const _$LoginResponseModelTearOff();

// ignore: unused_element
  _LoginResponseModel call({@JsonKey(name: 'username') String username}) {
    return _LoginResponseModel(
      username: username,
    );
  }

// ignore: unused_element
  LoginResponseModel fromJson(Map<String, Object> json) {
    return LoginResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoginResponseModel = _$LoginResponseModelTearOff();

/// @nodoc
mixin _$LoginResponseModel {
  @JsonKey(name: 'username')
  String get username;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'username') String username});
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  final LoginResponseModel _value;
  // ignore: unused_field
  final $Res Function(LoginResponseModel) _then;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginResponseModelCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$LoginResponseModelCopyWith(
          _LoginResponseModel value, $Res Function(_LoginResponseModel) then) =
      __$LoginResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'username') String username});
}

/// @nodoc
class __$LoginResponseModelCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res>
    implements _$LoginResponseModelCopyWith<$Res> {
  __$LoginResponseModelCopyWithImpl(
      _LoginResponseModel _value, $Res Function(_LoginResponseModel) _then)
      : super(_value, (v) => _then(v as _LoginResponseModel));

  @override
  _LoginResponseModel get _value => super._value as _LoginResponseModel;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(_LoginResponseModel(
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoginResponseModel implements _LoginResponseModel {
  const _$_LoginResponseModel({@JsonKey(name: 'username') this.username});

  factory _$_LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginResponseModelFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;

  @override
  String toString() {
    return 'LoginResponseModel(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginResponseModel &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith =>
      __$LoginResponseModelCopyWithImpl<_LoginResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginResponseModelToJson(this);
  }
}

abstract class _LoginResponseModel implements LoginResponseModel {
  const factory _LoginResponseModel(
      {@JsonKey(name: 'username') String username}) = _$_LoginResponseModel;

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseModel.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(ignore: true)
  _$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith;
}
