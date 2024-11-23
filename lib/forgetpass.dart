import 'package:flutter/material.dart';
import 'package:nasa_app/verfication.dart';

class Forgetpass extends StatelessWidget {
  static const String routeName = 'Forgetpass';

  const Forgetpass({super.key});

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
              'Forgot Password?',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
                'Donot worry! It occurs. Please enter the email address linked with your account.',
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
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
                Navigator.pushNamed(context, Verfication.routeName);
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(double.infinity, 60),
              ),
              child:const Text(
                'Send Code ',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Spacer(flex: 1),
            Center(
                child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Remember Password? '),
                  Text(
                    'Login',
                    style: TextStyle(color: Colors.cyan),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
