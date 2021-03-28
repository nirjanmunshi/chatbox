import 'package:chat_box/provider/chat_data_provider.dart';
import 'package:chat_box/route/app_routes.dart';
import 'package:chat_box/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: kColorPrimary, //or set color with: Color(0xFF0000FF)
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext _) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChatDataProvider>(
          create: (context) => ChatDataProvider(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightThemeData(_),
        darkTheme: darkThemeData(_),
        onGenerateRoute: AppRoute.generateRoute,
        initialRoute: '/splash',
        // home: TestEncoder(),
      ),
    );
  }
}
