import 'package:flutter/material.dart';
import 'package:flutter_verification_code_field/flutter_verification_code_field.dart';
import 'package:nasa_app/newpass.dart';

class Verfication extends StatelessWidget {
  static const String routeName = 'Verfication';

  const Verfication({super.key});

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
              'OTP Verification',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
                'Enter the verification code we just sent on your email address.',
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(100),
                  child: VerificationCodeField(
                    length: 4,
                    onFilled: (value) => print(value),
                    size: Size(30, 60),
                    spaceBetween: 16,
                    matchingPattern: RegExp(r'^\d+$'),
                  ),
                )
              ],
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, Newpass.routeName);
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(double.infinity, 60),
              ),
              child:const Text(
                ' Verify ',
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
