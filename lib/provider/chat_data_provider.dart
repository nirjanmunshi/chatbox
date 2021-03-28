import 'package:chat_box/api/repo/api_repository.dart';
import 'package:chat_box/util/shared/shared_pref.key.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class ChatDataProvider with ChangeNotifier {
  ApiAdapter _adapter;
  SharedPreferences _pref;

  ChatDataProvider() {
    init();
  }
  init() async {
    _pref = await SharedPreferences.getInstance();
    _adapter = ApiAdapter();
  }

  SharedPreferences get pref => _pref;
  ApiAdapter get adapter => _adapter;

  /// generate random uuid
  String generateUUID() {
    var uuid = Uuid();
    return uuid.v1();
  }

  /// store user data in shared pref
  Future<void> saveUserDetails({@required String userDetails}) async {
    await this._pref.setString(SharedPrefKey.SHARED_PREF_USER_DETAILS, userDetails);
  }

  String getUserDetails() => this._pref.getString(SharedPrefKey.SHARED_PREF_USER_DETAILS);

  /// store user token in shared pref
  Future<void> saveToken({@required String token}) async {
    await this._pref.setString(SharedPrefKey.SHARED_PREF_TOKEN, token);
  }

  String getToken() => this._pref.getString(SharedPrefKey.SHARED_PREF_TOKEN) ?? '';

  /// store username in shared pref
  Future<void> saveUsername({@required String username}) async {
    await this._pref.setString(SharedPrefKey.SHARED_PREF_USERNAME, username);
  }

  String getUsername() => this._pref.getString(SharedPrefKey.SHARED_PREF_USERNAME);

  /// store user password in shared pref
  Future<void> savePassword({@required String pass}) async {
    await this._pref.setString(SharedPrefKey.SHARED_PREF_PASSWORD, pass);
  }

  String getPassword() => this._pref.getString(SharedPrefKey.SHARED_PREF_PASSWORD);
}
