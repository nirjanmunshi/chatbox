import 'package:chat_box/api/model/chats/chat_item.dart';
import 'package:chat_box/api/model/profile/profile_model.dart';
import 'package:chat_box/api/model/request/login/login_request_model.dart';
import 'package:chat_box/api/model/request/registration/registration_request_model.dart';
import 'package:chat_box/api/model/response/base_response/base_response_model.dart';
import 'package:chat_box/api/model/response/login/login_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'retrofit_service.g.dart';

@RestApi(baseUrl: "https://mydummyurl.in/api/")
abstract class RetrofitService {
  factory RetrofitService(Dio dio, {String baseUrl}) = _RetrofitService;

  static RetrofitService create() {
    final dio = Dio();

    return RetrofitService(dio);
  }

  @POST("register")
  Future<BaseResponseModel> registration(@Body() RegistrationRequestModel registrationRequestModel);

  @POST("login")
  Future<LoginResponseModel> login(@Body() LoginRequestModel loginResponseModel);

  @POST("profile")
  Future<ProfileModel> getProfile({@Header("Authorization") String token, @Body() String userId});

  @POST("profile")
  Future<ChatItemModel> getChats({@Header("Authorization") String token, @Body() String userId});
}
