import 'package:flutter/material.dart';
import 'package:sign_up_login/pages/Register.dart';
import 'package:sign_up_login/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
         'login': (context) =>  Login(),
         'Register':(context) => Register(),
      },
    );
  }
}

  