import 'package:dio/dio.dart';

class ApiError {
  final int statusCode;
  final String errorMessage;
  final Response<dynamic> errorResponse;
  final Exception exception;

  ApiError(
      {this.errorResponse,
      this.statusCode = 0,
      this.errorMessage,
      this.exception});
}
