import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @JsonKey(name: 'name') String username,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'mobile') String mobile,
    @JsonKey(name: 'avatar') String avatar,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
