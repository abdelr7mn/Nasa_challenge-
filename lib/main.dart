import 'package:flutter/material.dart';
import 'package:nasa_app/forgetpass.dart';
import 'package:nasa_app/login.dart';
import 'package:nasa_app/newpass.dart';
import 'package:nasa_app/passchange.dart';
import 'package:nasa_app/register.dart';
import 'package:nasa_app/verfication.dart';
import 'welcomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Welcomepage.routeName,
      routes: {
        Welcomepage.routeName: (context) => Welcomepage(),
        LoginPage.routeName: (context) => LoginPage(),
        RegisterPage.routeName: (context) => RegisterPage(),
        Forgetpass.routeName: (context) => Forgetpass(),
        Verfication.routeName: (context) => Verfication(),
        Newpass.routeName: (context) => Newpass(),
        Passchange.routeName: (context) => Passchange(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
