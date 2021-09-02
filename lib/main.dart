import 'package:flutter/material.dart';
import 'package:fw1_login/pages/home_page.dart';
import 'package:fw1_login/pages/signin_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LogIn App',
      home: HomePage(),
    );
  }
}


