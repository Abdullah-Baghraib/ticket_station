import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ticket_station/pages/login/login.dart';




class Start_app1 extends StatefulWidget {
  @override
  State<Start_app1> createState() => _Start_app1State();
}

class _Start_app1State extends State<Start_app1> {
  @override

  Widget build(BuildContext context) {
    Timer( Duration(seconds: 3),() {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Login()));
    });
    return Scaffold(


      body:

      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/cd23c7a8d049049fd1b0ef281f0300cb.jpg'),fit: BoxFit.cover
          ),
        ),

        child: Center(
          child: Image.asset('images/large__4_-removebg-preview.png',width: 200,height: 150,),
        ),
      ),

    );
  }
}

