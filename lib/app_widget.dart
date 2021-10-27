// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_message_app/screens/home_page.dart';
import 'package:flutter_message_app/screens/login_page.dart';
import 'package:flutter_message_app/screens/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
