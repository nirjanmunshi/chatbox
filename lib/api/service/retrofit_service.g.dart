// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrofit_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RetrofitService implements RetrofitService {
  _RetrofitService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://mydummyurl.in/api/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<BaseResponseModel> registration(registrationRequestModel) async {
    ArgumentError.checkNotNull(
        registrationRequestModel, 'registrationRequestModel');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(registrationRequestModel?.toJson() ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>('register',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaseResponseModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<LoginResponseModel> login(loginResponseModel) async {
    ArgumentError.checkNotNull(loginResponseModel, 'loginResponseModel');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(loginResponseModel?.toJson() ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>('login',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LoginResponseModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<ProfileModel> getProfile({token, userId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = userId;
    final _result = await _dio.request<Map<String, dynamic>>('profile',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{r'Authorization': token},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ProfileModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<ChatItemModel> getChats({token, userId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = userId;
    final _result = await _dio.request<Map<String, dynamic>>('profile',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{r'Authorization': token},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ChatItemModel.fromJson(_result.data);
    return value;
  }
}
