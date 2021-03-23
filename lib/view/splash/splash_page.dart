import 'package:chat_box/route/app_routes.dart';
import 'package:chat_box/util/style/app_style.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    Future.delayed(const Duration(seconds: 3), () async {
      //* check if user is logged in or not

      Navigator.pushNamed(context, '/registration');
    });
  }

  @override
  Widget build(BuildContext context) {
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
