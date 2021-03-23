import 'package:chat_box/util/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
              controller: _nameController,
              style: loginTextStyle,
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Name',
                border: nonFocusedOutlineBorder,
                focusedBorder: focusedOutlineBorder,
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'यह अनिवार्य है|';
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
              style: loginTextStyle,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                counterText: "",
                isDense: true,
                labelText: 'Mobile',
                border: nonFocusedOutlineBorder,
                focusedBorder: focusedOutlineBorder,
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
              style: loginTextStyle,
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Email',
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
                'Register'.toUpperCase(),
                style: registrationButtonTextStyle,
              ),
              onPressed: () => print('registered'),
            ),
          ),

          TextButton(
            child: Text(
              'Already Registered, Login',
              style: alreadyRegisteredButtonTextStyle,
            ),
            onPressed: () => Navigator.pushNamed(context, '/login'),
          ),
        ],
      ),
    );
  }
}
