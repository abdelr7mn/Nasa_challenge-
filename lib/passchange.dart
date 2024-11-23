import 'package:flutter/material.dart';
import 'package:nasa_app/login.dart';

class Passchange extends StatelessWidget {
  static const String routeName = 'Passchange';

  const Passchange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Image.asset('assets/images/Sticker.png'),
          ),
          Text(
            'Password Changed!',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Your password has been changed successfully.',
              style: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, LoginPage.routeName);
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.black,
              minimumSize: Size(double.infinity, 60),
            ),
            child: const Text(
              'Back to Login ',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
