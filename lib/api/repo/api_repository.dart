import 'package:chat_box/api/model/error/error_model.dart';
import 'package:chat_box/api/model/request/login/login_request_model.dart';
import 'package:chat_box/api/model/request/registration/registration_request_model.dart';
import 'package:chat_box/api/model/response/base_response/base_response_model.dart';
import 'package:chat_box/api/model/response/login/login_response_model.dart';
import 'package:chat_box/api/service/retrofit_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiAdapter {
  RetrofitService _client;

  ApiAdapter() {
    _client = RetrofitService(Dio());
  }

  /// user login
  Future<LoginResponseModel> login(
      {LoginRequestModel loginModel, ValueChanged<ApiError> onError}) async {
    LoginResponseModel loginResponseModel;

    try {
      loginResponseModel = await _client.login(loginModel);
    } catch (e) {
      onError(handleError(e: e, methodName: 'login'));
    }

    return loginResponseModel;
  }

  /// user registration
  Future<BaseResponseModel> registration(
      {RegistrationRequestModel registrationModel, ValueChanged<ApiError> onError}) async {
    BaseResponseModel baseResponseModel;

    try {
      baseResponseModel = await _client.registration(registrationModel);
    } catch (e) {
      onError(handleError(e: e, methodName: 'registration'));
    }

    return baseResponseModel;
  }

  ApiError handleError({
    @required dynamic e,
    @required String methodName,
    String msg,
  }) {
    ApiError error;
    if (e.runtimeType == DioError) {
      var res = (e as DioError).response;
      error = ApiError(
        errorResponse: res,
        statusCode: res?.statusCode ?? 0,
        errorMessage: getErrorMessage(res?.statusCode ?? 0),
        exception: e,
      );
    } else {
      error = ApiError(
        errorMessage: 'Make sure you have internet connection',
        exception: e,
      );
    }
    return error;
  }

  String getErrorType(Type errorType) {
    DioError t = DioError(error: errorType);

    switch (t.type) {
      case DioErrorType.CANCEL:
        return "CANCEL";
      case DioErrorType.CONNECT_TIMEOUT:
        return "CONNECTION TIMEOUT";
      case DioErrorType.DEFAULT:
        return "DEFAULT";
      case DioErrorType.RECEIVE_TIMEOUT:
        return "CONNECTION TIMEOUT";
      case DioErrorType.RESPONSE:
        return "RESPONSE";
      case DioErrorType.SEND_TIMEOUT:
        return "SEND TIMEOUT";
      default:
        return "UNKNOWN ERROR";
    }
  }

  String getErrorMessage(int statusCode) {
    switch (statusCode) {
      case 400:
        return 'Shame on you';
      case 401:
        return 're-login to use the app';
      case 404:
        return 'are you lost?';
      case 500:
        return 'its just a glitch';
    }
    return 'unknown error';
  }
}
