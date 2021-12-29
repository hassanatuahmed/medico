import 'package:flutter/material.dart';
import 'package:medico/widget/button.dart';

class VerificationPage extends StatefulWidget {

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children:  [
           Text("Verification"),
            Text("Please enter your phone number to receive verification code"),
            TextFormField(
              decoration: InputDecoration(hintText: ("enter your phone number")),
            ),
            Button(
              title: "Get the code",
              icon: null,
            ),
          ],
          
        ),
      ),
    );
  }
}