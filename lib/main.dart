import 'package:chat_box/provider/chat_data_provider.dart';
import 'package:chat_box/route/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
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
        theme: ThemeData(primarySwatch: Colors.blue),
        onGenerateRoute: AppRoute.generateRoute,
        initialRoute: '/splash',
        // home: TestEncoder(),
      ),
    );
  }
}
