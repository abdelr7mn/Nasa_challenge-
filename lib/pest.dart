import 'package:flutter/material.dart';

class PestHome extends StatelessWidget {
  static const String routeName = 'PestHome';
  const PestHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pest and Alert"),),
    );
  }
}
