import 'package:chat_box/provider/chat_data_provider.dart';
import 'package:chat_box/util/style/app_style.dart';
import 'package:chat_box/util/style/constants.dart';
import 'package:chat_box/view/login/login_page.dart';
import 'package:chat_box/view/registration/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  ChatDataProvider provider;
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    Future.delayed(const Duration(seconds: 3), () async {
      //* check if user is logged in or not
      provider = Provider.of<ChatDataProvider>(context, listen: false);

      // check if already login token exists or not
      // if token exists then route to home page, otherwise registration page
      if (provider.getToken() == null || provider.getToken().isEmpty) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => RegistrationPage(),
            ));
      } else {
        /// later change this one to home
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Image.asset(
                "assets/images/welcome_image.png",
                color: Colors.transparent,
              ),
            ),
            Spacer(flex: 3),
            Text("Welcome to Chatbox",
                textAlign: TextAlign.center,
                style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Theme.of(context).textTheme.bodyText1.color)),
            Spacer(),
            Text("Connect to your friend with chat, video call \nand much more",
                textAlign: TextAlign.center,
                style: GoogleFonts.quicksand(
                    fontSize: 14,
                    color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.64))),
            Spacer(flex: 3),
            FittedBox(
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  Widget oldScaffold() {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            alignment: Alignment.center,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.chat,
                        color: Colors.red,
                        size: 50.0,
                      ),
                      Text(
                        'Chatbox',
                        style: splashTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircularProgressIndicator(
                      strokeWidth: 2.0,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                    SizedBox(
                      height: 40.0,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
