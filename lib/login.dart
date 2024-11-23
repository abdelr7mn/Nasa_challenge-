import 'package:flutter/material.dart';
import 'package:nasa_app/forgetpass.dart';
import 'package:nasa_app/register.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = 'LoginPage';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscured = true; // To manage password visibility

  void _toggleVisibility() {
    setState(() {
      _isObscured = _isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back! Glad to see you, Again!',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            // Email TextField
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
            SizedBox(height: 30),
            // Password TextField
            TextField(
              obscureText: _isObscured,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _toggleVisibility,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Forgot Password
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Forgetpass.routeName);
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Login Button
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(double.infinity, 60),
                side: BorderSide(color: Colors.black),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(height: 50),
            Center(child: Text('or Login with ')),
            SizedBox(height: 10),
            // Social Media Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageIcon(
                  AssetImage('assets/images/face.png'),
                ),
                ImageIcon(
                  AssetImage('assets/images/google.png'),
                ),
                ImageIcon(
                  AssetImage('assets/images/Vector.png'),
                ),
              ],
            ),
            Spacer(flex: 1),
            Center(
                child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?'),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RegisterPage.routeName);
                    },
                    child: Text(
                      'Register Now',
                      style: TextStyle(color: Colors.cyan),
                    ),
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
