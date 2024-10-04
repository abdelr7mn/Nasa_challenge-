import 'package:flutter/material.dart';
import 'package:nasa_app/pest.dart';
import 'calc.dart';
import 'cultvation.dart';
import 'homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        CultvationView.routeName: (context) => CultvationView(),
        PestHome.routeName: (context) => PestHome(),
        CalcHome.routeName: (context) => CalcHome(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
