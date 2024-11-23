import 'package:flutter/material.dart';
import 'package:nasa_app/passchange.dart';

class Newpass extends StatelessWidget {
  static const String routeName = 'Newpass';
  const Newpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create new password',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
                'Your new password must be unique from those previously used.',
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                hintText: 'New Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 50),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, Passchange.routeName);
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(double.infinity, 60),
              ),
              child: const Text(
                'Reset Password ',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
    ;
  }
}
