import 'package:chat_box/api/connection/app_connectivity.dart';
import 'package:chat_box/api/model/request/registration/registration_request_model.dart';
import 'package:chat_box/api/model/response/base_response/base_response_model.dart';
import 'package:chat_box/provider/chat_data_provider.dart';
import 'package:chat_box/util/style/app_style.dart';
import 'package:chat_box/util/style/constants.dart';
import 'package:chat_box/view/registration/registration_page_style.dart';
import 'package:chat_box/widgets/snack/snack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _registrationFormKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();

  ChatDataProvider chatProvider;

  bool obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() => obscureText = !obscureText);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    chatProvider = Provider.of<ChatDataProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
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
    _nameController.text = 'Nirjan';
    _mobileController.text = '7003060844';
    _emailController.text = 'a@b.com';
    _passwordController.text = 'ccpass1234';
    return Form(
      key: _registrationFormKey,
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
              controller: _nameController,
              style: GoogleFonts.quicksand(
                  fontSize: 14, color: Theme.of(context).textTheme.bodyText1.color),
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Name',
                border: isDarkMode ? nonFocusedOutlineBorderDark : nonFocusedOutlineBorderLight,
                focusedBorder: isDarkMode ? focusedOutlineBorderDark : focusedOutlineBorderLight,
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'required';
                }
                return null;
              },
            ),
          ),

          // mobile
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 6),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              controller: _mobileController,
              style: GoogleFonts.quicksand(
                  fontSize: 14, color: Theme.of(context).textTheme.bodyText1.color),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                counterText: "",
                isDense: true,
                labelText: 'Mobile',
                border: isDarkMode ? nonFocusedOutlineBorderDark : nonFocusedOutlineBorderLight,
                focusedBorder: isDarkMode ? focusedOutlineBorderDark : focusedOutlineBorderLight,
              ),
              validator: (value) {
                if (value.isEmpty || value.length != 10) {
                  return 'required';
                }
                return null;
              },
            ),
          ),

          // email
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 6),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              controller: _emailController,
              style: GoogleFonts.quicksand(
                  fontSize: 14, color: Theme.of(context).textTheme.bodyText1.color),
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Email',
                border: isDarkMode ? nonFocusedOutlineBorderDark : nonFocusedOutlineBorderLight,
                focusedBorder: isDarkMode ? focusedOutlineBorderDark : focusedOutlineBorderLight,
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
              style: GoogleFonts.quicksand(
                  fontSize: 14, color: Theme.of(context).textTheme.bodyText1.color),
              controller: _passwordController,
              obscureText: obscureText,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  labelText: 'Password',
                  isDense: true,
                  border: isDarkMode ? nonFocusedOutlineBorderDark : nonFocusedOutlineBorderLight,
                  focusedBorder: isDarkMode ? focusedOutlineBorderDark : focusedOutlineBorderLight,
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
                'Register'.toUpperCase(),
                style:
                    isDarkMode ? registrationButtonTextStyleDark : registrationButtonTextStyleLight,
              ),
              onPressed: registration,
            ),
          ),

          TextButton(
            child: Text(
              'Already Registered, Login',
              style: isDarkMode
                  ? alreadyRegisteredButtonTextStyleDark
                  : alreadyRegisteredButtonTextStyleLight,
            ),
            onPressed: () => Navigator.pushNamed(context, '/login'),
          ),
        ],
      ),
    );
  }

  Future<void> registration() async {
    var name = _nameController.text;
    var mobile = _mobileController.text;
    var email = _emailController.text;
    var password = _passwordController.text;

    /// check internet connection before registration
    bool isConnected = await checkConnectivity();
    if (isConnected) {
      /// create registration request model
      var registrationRequest =
          RegistrationRequestModel(name: name, mobile: mobile, email: email, password: password);

      /// on any error, response will return null always
      var response = await chatProvider.adapter.registration(
          registrationModel: registrationRequest,
          onError: (e) {
            showSnack(context, message: e.errorMessage);
          });

      /// save response in shared pref
      if (response != null) {
        /// handle this after proper api integration
        //
        /// handleResponse(response,registrationRequest);
      } else {
        /// remove this part after proper api integration
        response = fakeBaseResponse();
        handleResponse(response, registrationRequest);
      }
    } else {
      /// show no internet snack
      showSnack(context, message: "No internet connection");
    }
  }

  void handleResponse(
      BaseResponseModel response, RegistrationRequestModel registrationRequest) async {
    // save user details
    chatProvider.saveUserDetails(userDetails: registrationRequest.toJson().toString());

    // save username and password
    chatProvider.saveUsername(username: registrationRequest.mobile);
    chatProvider.savePassword(pass: registrationRequest.password);
    await showUpdateDialog();
  }

  /// create fake base response data
  BaseResponseModel fakeBaseResponse() =>
      BaseResponseModel(token: chatProvider.generateUUID(), status: 'Registration Success');

  Future<void> showUpdateDialog() async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(
            'Registration success',
            style: GoogleFonts.quicksand(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          content: Text('Login using your mobile and password number to use the app',
              style: GoogleFonts.quicksand(fontSize: 14.0)),
          actions: <Widget>[
            TextButton(
              child: Text('Yes, Login',
                  style: GoogleFonts.quicksand(fontSize: 12.0, fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
            TextButton(
              child: Text('Exit',
                  style: GoogleFonts.quicksand(fontSize: 12.0, fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.of(context).pop();
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              },
            ),
          ],
        );
      },
    );
  }
}
