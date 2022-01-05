import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medico/pages/verification.dart';
import 'package:medico/widget/button.dart';

class SignupPage extends StatefulWidget {

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
                        const SizedBox(height: 200,),

            Image.asset('asset/images/medico.png',scale: 5,),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>VerificationPage()));
              },
              child: Container(
                width: 300,
                child: Button(
                  title: "Register with phone number",
                  icon: Icons.call,
                ),
              ),
            ),
            const SizedBox(height: 20,),

          Container(
          width: 300,
          child: Button(
            title: "Register with google account",
            icon: Icons.account_balance_rounded,
          ),
        ),
        const SizedBox(height: 20,),

         Container(
          width: 300,
          child: Button(
            title: "Register with email",
            icon: Icons.email,
          ),
        ),
        const Center(
          child:  Text("Already have an account Sign in"),
        ),
          ],
        ),
        
      ),
    );
  }
}