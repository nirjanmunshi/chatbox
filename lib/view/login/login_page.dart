import 'package:chat_box/util/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginFormKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() => obscureText = !obscureText);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
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
                color: Colors.red,
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
              style: loginTextStyle,
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Username',
                border: nonFocusedOutlineBorder,
                focusedBorder: focusedOutlineBorder,
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
              style: loginTextStyle,
              controller: _passwordController,
              obscureText: obscureText,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  labelText: 'Password',
                  isDense: true,
                  border: nonFocusedOutlineBorder,
                  focusedBorder: focusedOutlineBorder,
                  suffixIcon: IconButton(
                    icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off),
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
                style: registrationButtonTextStyle,
              ),
              onPressed: () => Navigator.pushNamed(context, '/home'),
            ),
          ),

          TextButton(
            child: Text(
              'Already Registered, Login',
              style: alreadyRegisteredButtonTextStyle,
            ),
            onPressed: () => print('registered'),
          ),
        ],
      ),
    );
  }
}
