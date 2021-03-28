// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) {
  return _LoginRequestModel.fromJson(json);
}

/// @nodoc
class _$LoginRequestModelTearOff {
  const _$LoginRequestModelTearOff();

// ignore: unused_element
  _LoginRequestModel call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password}) {
    return _LoginRequestModel(
      username: username,
      password: password,
    );
  }

// ignore: unused_element
  LoginRequestModel fromJson(Map<String, Object> json) {
    return LoginRequestModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoginRequestModel = _$LoginRequestModelTearOff();

/// @nodoc
mixin _$LoginRequestModel {
  @JsonKey(name: 'username')
  String get username;
  @JsonKey(name: 'password')
  String get password;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LoginRequestModelCopyWith<LoginRequestModel> get copyWith;
}

/// @nodoc
abstract class $LoginRequestModelCopyWith<$Res> {
  factory $LoginRequestModelCopyWith(
          LoginRequestModel value, $Res Function(LoginRequestModel) then) =
      _$LoginRequestModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$LoginRequestModelCopyWithImpl<$Res>
    implements $LoginRequestModelCopyWith<$Res> {
  _$LoginRequestModelCopyWithImpl(this._value, this._then);

  final LoginRequestModel _value;
  // ignore: unused_field
  final $Res Function(LoginRequestModel) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginRequestModelCopyWith<$Res>
    implements $LoginRequestModelCopyWith<$Res> {
  factory _$LoginRequestModelCopyWith(
          _LoginRequestModel value, $Res Function(_LoginRequestModel) then) =
      __$LoginRequestModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$LoginRequestModelCopyWithImpl<$Res>
    extends _$LoginRequestModelCopyWithImpl<$Res>
    implements _$LoginRequestModelCopyWith<$Res> {
  __$LoginRequestModelCopyWithImpl(
      _LoginRequestModel _value, $Res Function(_LoginRequestModel) _then)
      : super(_value, (v) => _then(v as _LoginRequestModel));

  @override
  _LoginRequestModel get _value => super._value as _LoginRequestModel;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_LoginRequestModel(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoginRequestModel implements _LoginRequestModel {
  const _$_LoginRequestModel(
      {@JsonKey(name: 'username') this.username,
      @JsonKey(name: 'password') this.password});

  factory _$_LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginRequestModelFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'LoginRequestModel(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginRequestModel &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LoginRequestModelCopyWith<_LoginRequestModel> get copyWith =>
      __$LoginRequestModelCopyWithImpl<_LoginRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginRequestModelToJson(this);
  }
}

abstract class _LoginRequestModel implements LoginRequestModel {
  const factory _LoginRequestModel(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password}) = _$_LoginRequestModel;

  factory _LoginRequestModel.fromJson(Map<String, dynamic> json) =
      _$_LoginRequestModel.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$LoginRequestModelCopyWith<_LoginRequestModel> get copyWith;
}
