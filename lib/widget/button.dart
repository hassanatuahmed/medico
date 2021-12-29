import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Button extends StatelessWidget {
  final String title;
  final IconData icon;

  Button({this.title,this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:FlatButton(
        color: HexColor("#5482FA"),
        onPressed: () {},
        child: Row(
          children: <Widget> [
            // ignore: prefer_const_constructors
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),

           Text(title,style: const TextStyle(color: Colors.white),),
            
            
          ],
        ),
      ),
      
    );
  }
}
