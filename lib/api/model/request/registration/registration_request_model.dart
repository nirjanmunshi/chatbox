import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_request_model.freezed.dart';
part 'registration_request_model.g.dart';

@freezed
abstract class RegistrationRequestModel with _$RegistrationRequestModel {
  const factory RegistrationRequestModel({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'mobile') String mobile,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'password') String password,
  }) = _RegistrationRequestModel;

  factory RegistrationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationRequestModelFromJson(json);
}
