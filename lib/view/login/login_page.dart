import 'package:chat_box/api/connection/app_connectivity.dart';
import 'package:chat_box/api/model/request/login/login_request_model.dart';
import 'package:chat_box/api/model/response/login/login_response_model.dart';
import 'package:chat_box/provider/chat_data_provider.dart';
import 'package:chat_box/util/style/app_style.dart';
import 'package:chat_box/util/style/constants.dart';
import 'package:chat_box/view/home/home_page.dart';
import 'package:chat_box/view/login/login_page_style.dart';
import 'package:chat_box/widgets/snack/snack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginFormKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  ChatDataProvider chatDataProvider;
  bool obscureText = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    chatDataProvider = Provider.of<ChatDataProvider>(context, listen: false);
  }

  // Toggles the password show status
  void _toggle() {
    setState(() => obscureText = !obscureText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            fit: StackFit.loose,
            children: [
              SingleChildScrollView(
                child: Container(
                  child: _buildRegistrationForm(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRegistrationForm(BuildContext _) {
    bool isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;
    _usernameController.text = '7003060844';
    _passwordController.text = 'ccpass1234';
    return Form(
      key: loginFormKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 100,
              width: 100,
              child: Icon(
                Icons.chat,
                color: isDarkMode ? kSecondaryColor : kPrimaryColor,
                size: 50,
              ),
            ),
          ),
          // name
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 6),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              controller: _usernameController,
              style: isDarkMode ? loginTextStyleDark : loginTextStyleLight,
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Username',
                // border: nonFocusedOutlineBorder,
                // focusedBorder: focusedOutlineBorder,
                border: isDarkMode ? nonFocusedOutlineBorderLight : nonFocusedOutlineBorderDark,
                focusedBorder: isDarkMode ? focusedOutlineBorderLight : focusedOutlineBorderDark,
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'required';
                }
                return null;
              },
            ),
          ),

          // password
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 6),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              style: isDarkMode ? loginTextStyleDark : loginTextStyleLight,
              controller: _passwordController,
              obscureText: obscureText,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  labelText: 'Password',
                  isDense: true,
                  // border: nonFocusedOutlineBorder,
                  // focusedBorder: focusedOutlineBorder,
                  border: MediaQuery.of(context).platformBrightness == Brightness.light
                      ? nonFocusedOutlineBorderLight
                      : nonFocusedOutlineBorderDark,
                  focusedBorder: MediaQuery.of(context).platformBrightness == Brightness.light
                      ? focusedOutlineBorderLight
                      : focusedOutlineBorderDark,
                  suffixIcon: IconButton(
                    icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () => _toggle(),
                  )),
              validator: (value) {
                if (value.isEmpty) {
                  return 'required';
                }
                return null;
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: OutlinedButton(
              child: Text(
                'login'.toUpperCase(),
                style: GoogleFonts.quicksand(
                    fontSize: 14,
                    color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.64)),
              ),
              onPressed: () {
                login();
              },
            ),
          ),

          TextButton(
            child: Text(
              "Don't have account? Register here",
              style: isDarkMode ? newUserButtonTextStyleDark : newUserButtonTextStyleLight,
            ),
            onPressed: () => Navigator.pushNamed(context, '/registration'),
          ),
        ],
      ),
    );
  }

  void login() async {
    // get username and pass
    var username = _usernameController.text;
    var password = _passwordController.text;

    // check internet connection
    bool isConnected = await checkConnectivity();

    if (isConnected) {
      // create login request
      var loginRequest = LoginRequestModel(username: username, password: password);

      // make api call
      var response = await chatDataProvider.adapter.login(
          loginModel: loginRequest,
          onError: (e) {
            //showSnack(context, message: e.errorMessage);
          });

      // response = null means something went wrong. get the error on onError method
      if (response != null) {
        // we got the response
        // handleResponse(response);
      } else {
        // delete this section after implementing original api call
        response = fakeLoginResponse();
        handleResponse(response);
      }
    } else {
      showSnack(context, message: 'No internet connection');
    }

    // response is null means something went wrong

    // Navigator.pushNamed(context, '/home');
  }

  /// create fake login response
  LoginResponseModel fakeLoginResponse() => LoginResponseModel(username: _usernameController.text);

  void handleResponse(LoginResponseModel response) {
    // check if token exists and if user credential model matched with username(phone no)

    var username = response.username;
    var password = _passwordController.text;
    if (username == chatDataProvider.getUsername() && password == chatDataProvider.getPassword()) {
      print('login success');
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    }
  }
}
