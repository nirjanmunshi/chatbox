import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_model.freezed.dart';
part 'base_response_model.g.dart';

@freezed
abstract class BaseResponseModel with _$BaseResponseModel {
  const factory BaseResponseModel({
    @JsonKey(name: 'status') String status,
    @JsonKey(name: 'token') String token,
  }) = _BaseResponseModel;

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseModelFromJson(json);
}
