// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'base_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BaseResponseModel _$BaseResponseModelFromJson(Map<String, dynamic> json) {
  return _BaseResponseModel.fromJson(json);
}

/// @nodoc
class _$BaseResponseModelTearOff {
  const _$BaseResponseModelTearOff();

// ignore: unused_element
  _BaseResponseModel call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'token') String token}) {
    return _BaseResponseModel(
      status: status,
      token: token,
    );
  }

// ignore: unused_element
  BaseResponseModel fromJson(Map<String, Object> json) {
    return BaseResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BaseResponseModel = _$BaseResponseModelTearOff();

/// @nodoc
mixin _$BaseResponseModel {
  @JsonKey(name: 'status')
  String get status;
  @JsonKey(name: 'token')
  String get token;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BaseResponseModelCopyWith<BaseResponseModel> get copyWith;
}

/// @nodoc
abstract class $BaseResponseModelCopyWith<$Res> {
  factory $BaseResponseModelCopyWith(
          BaseResponseModel value, $Res Function(BaseResponseModel) then) =
      _$BaseResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'token') String token});
}

/// @nodoc
class _$BaseResponseModelCopyWithImpl<$Res>
    implements $BaseResponseModelCopyWith<$Res> {
  _$BaseResponseModelCopyWithImpl(this._value, this._then);

  final BaseResponseModel _value;
  // ignore: unused_field
  final $Res Function(BaseResponseModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object token = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as String,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

/// @nodoc
abstract class _$BaseResponseModelCopyWith<$Res>
    implements $BaseResponseModelCopyWith<$Res> {
  factory _$BaseResponseModelCopyWith(
          _BaseResponseModel value, $Res Function(_BaseResponseModel) then) =
      __$BaseResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'token') String token});
}

/// @nodoc
class __$BaseResponseModelCopyWithImpl<$Res>
    extends _$BaseResponseModelCopyWithImpl<$Res>
    implements _$BaseResponseModelCopyWith<$Res> {
  __$BaseResponseModelCopyWithImpl(
      _BaseResponseModel _value, $Res Function(_BaseResponseModel) _then)
      : super(_value, (v) => _then(v as _BaseResponseModel));

  @override
  _BaseResponseModel get _value => super._value as _BaseResponseModel;

  @override
  $Res call({
    Object status = freezed,
    Object token = freezed,
  }) {
    return _then(_BaseResponseModel(
      status: status == freezed ? _value.status : status as String,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BaseResponseModel implements _BaseResponseModel {
  const _$_BaseResponseModel(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'token') this.token});

  factory _$_BaseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BaseResponseModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'token')
  final String token;

  @override
  String toString() {
    return 'BaseResponseModel(status: $status, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BaseResponseModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$BaseResponseModelCopyWith<_BaseResponseModel> get copyWith =>
      __$BaseResponseModelCopyWithImpl<_BaseResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BaseResponseModelToJson(this);
  }
}

abstract class _BaseResponseModel implements BaseResponseModel {
  const factory _BaseResponseModel(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'token') String token}) = _$_BaseResponseModel;

  factory _BaseResponseModel.fromJson(Map<String, dynamic> json) =
      _$_BaseResponseModel.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$BaseResponseModelCopyWith<_BaseResponseModel> get copyWith;
}
