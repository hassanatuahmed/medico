import 'dart:async';

import 'package:flutter/material.dart';

import 'signup_page.dart';

class HomePage extends StatefulWidget {
  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) =>  SignupPage()
          )));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Column(children: [
          const SizedBox(height: 130,),
          Image.asset('asset/images/medico.png',scale: 3,),
          const Text("MEDICO",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ],),),
        
      ),
    );
  }
}