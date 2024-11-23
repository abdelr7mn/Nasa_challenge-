import 'package:flutter/material.dart';
import 'package:nasa_app/register.dart';
import 'login.dart';

class Welcomepage extends StatelessWidget {
  static const String routeName = 'Welcomepage';

  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/img.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 400,
                  ),
                  Image.asset("assets/images/icon.png"),
                  Text(
                    'Fruzz digital',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 50),
                  InkWell(
                    onTap: () {},
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginPage.routeName);
                      },
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        side: BorderSide(color: Colors.black),
                      ),
                      child: Text('Login',
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {},
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RegisterPage.routeName);
                      },
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        side: BorderSide(color: Colors.black),
                      ),
                      child: Text('Register',
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text('Continue as a guest',
                      style: TextStyle(fontSize: 15, color: Color(0xff35C2C1))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
