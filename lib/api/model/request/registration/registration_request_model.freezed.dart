// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'registration_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RegistrationRequestModel _$RegistrationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RegistrationRequestModel.fromJson(json);
}

/// @nodoc
class _$RegistrationRequestModelTearOff {
  const _$RegistrationRequestModelTearOff();

// ignore: unused_element
  _RegistrationRequestModel call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'mobile') String mobile,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password}) {
    return _RegistrationRequestModel(
      name: name,
      mobile: mobile,
      email: email,
      password: password,
    );
  }

// ignore: unused_element
  RegistrationRequestModel fromJson(Map<String, Object> json) {
    return RegistrationRequestModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RegistrationRequestModel = _$RegistrationRequestModelTearOff();

/// @nodoc
mixin _$RegistrationRequestModel {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'mobile')
  String get mobile;
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'password')
  String get password;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RegistrationRequestModelCopyWith<RegistrationRequestModel> get copyWith;
}

/// @nodoc
abstract class $RegistrationRequestModelCopyWith<$Res> {
  factory $RegistrationRequestModelCopyWith(RegistrationRequestModel value,
          $Res Function(RegistrationRequestModel) then) =
      _$RegistrationRequestModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'mobile') String mobile,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$RegistrationRequestModelCopyWithImpl<$Res>
    implements $RegistrationRequestModelCopyWith<$Res> {
  _$RegistrationRequestModelCopyWithImpl(this._value, this._then);

  final RegistrationRequestModel _value;
  // ignore: unused_field
  final $Res Function(RegistrationRequestModel) _then;

  @override
  $Res call({
    Object name = freezed,
    Object mobile = freezed,
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      mobile: mobile == freezed ? _value.mobile : mobile as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$RegistrationRequestModelCopyWith<$Res>
    implements $RegistrationRequestModelCopyWith<$Res> {
  factory _$RegistrationRequestModelCopyWith(_RegistrationRequestModel value,
          $Res Function(_RegistrationRequestModel) then) =
      __$RegistrationRequestModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'mobile') String mobile,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$RegistrationRequestModelCopyWithImpl<$Res>
    extends _$RegistrationRequestModelCopyWithImpl<$Res>
    implements _$RegistrationRequestModelCopyWith<$Res> {
  __$RegistrationRequestModelCopyWithImpl(_RegistrationRequestModel _value,
      $Res Function(_RegistrationRequestModel) _then)
      : super(_value, (v) => _then(v as _RegistrationRequestModel));

  @override
  _RegistrationRequestModel get _value =>
      super._value as _RegistrationRequestModel;

  @override
  $Res call({
    Object name = freezed,
    Object mobile = freezed,
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_RegistrationRequestModel(
      name: name == freezed ? _value.name : name as String,
      mobile: mobile == freezed ? _value.mobile : mobile as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RegistrationRequestModel implements _RegistrationRequestModel {
  const _$_RegistrationRequestModel(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'mobile') this.mobile,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password});

  factory _$_RegistrationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RegistrationRequestModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'mobile')
  final String mobile;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'RegistrationRequestModel(name: $name, mobile: $mobile, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegistrationRequestModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$RegistrationRequestModelCopyWith<_RegistrationRequestModel> get copyWith =>
      __$RegistrationRequestModelCopyWithImpl<_RegistrationRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegistrationRequestModelToJson(this);
  }
}

abstract class _RegistrationRequestModel implements RegistrationRequestModel {
  const factory _RegistrationRequestModel(
          {@JsonKey(name: 'name') String name,
          @JsonKey(name: 'mobile') String mobile,
          @JsonKey(name: 'email') String email,
          @JsonKey(name: 'password') String password}) =
      _$_RegistrationRequestModel;

  factory _RegistrationRequestModel.fromJson(Map<String, dynamic> json) =
      _$_RegistrationRequestModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'mobile')
  String get mobile;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$RegistrationRequestModelCopyWith<_RegistrationRequestModel> get copyWith;
}
