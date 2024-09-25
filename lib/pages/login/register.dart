import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ticket_station/pages/login/register.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _LoginState();
}

class _LoginState extends State<Register> {
  int index = 0;
  List<String> _imageList = 
  [
    "images/1.png",
    "images/2.png",
    "images/3.png",
    "images/4.png",
    "images/5.png",
  ];

  @override
  void initState() {
    startTimer();
  }

  startTimer()
  {
    Timer.periodic(Duration(seconds: 3), (tiner)
    {
      if(this.mounted){
        setState(() {
          index ++;
        
          if(index == _imageList.length)
          {
            index = 0;
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;

    return Scaffold
    (
      body: SingleChildScrollView
      (
        child: Padding
        (
          padding: EdgeInsets.all(30),
          child: Column
          (
            children: 
            [
              SizedBox(height: 60,),
              FadeInUp
              (
                child: Container
                (
                  height: 350,
                  child: Stack
                  (
                    children:_imageList.asMap().entries.map((e) {
                      return Positioned
                      (
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,

                        child: AnimatedOpacity
                        (
                          opacity: index == e.key ? 1 :0 , 
                          duration: Duration(seconds: 1),
                          child: Image.asset(e.value , height: 400,),
                        ),
                      );
                    },
                  ).toList(),
                )
                )
              ),


              SizedBox(height: 60,),
              FadeInUp
              (
                delay: Duration(milliseconds: 800),
                duration: Duration(milliseconds: 1500),
                child: TextField
                (
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "User-name or Email",
                    hintStyle: TextStyle(color: Colors.grey , fontSize: 14 , fontWeight: FontWeight.w400),
                    labelStyle: TextStyle(color: Colors.black , fontSize: 14 , fontWeight: FontWeight.w400),
                    prefixIcon: Icon(Icons.person_outline_outlined , color: Colors.black, size: 18,),

                    enabledBorder: OutlineInputBorder
                    (
                      borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    floatingLabelStyle: TextStyle(color: Colors.black , fontSize: 15),

                    focusedBorder: OutlineInputBorder
                    (
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                )
              ),

              SizedBox(height: 20,),
              FadeInUp
              (
                delay: Duration(milliseconds: 800),
                duration: Duration(milliseconds: 1500),
                child: TextField
                (
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    labelStyle: TextStyle(color: Colors.black , fontSize: 14 , fontWeight: FontWeight.w400),
                    hintText: "Phone Number",
                    hintStyle: TextStyle(color: Colors.grey , fontSize: 14 , fontWeight: FontWeight.w400),
                    prefixIcon: Icon(Icons.phone , color: Colors.black, size: 18,),

                    enabledBorder: OutlineInputBorder
                    (
                      borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    floatingLabelStyle: TextStyle(color: Colors.black , fontSize: 15),

                    focusedBorder: OutlineInputBorder
                    (
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                )
              ),

              SizedBox(height: 20,),
              FadeInUp
              (
                delay: Duration(milliseconds: 800),
                duration: Duration(milliseconds: 1500),
                child: TextField
                (
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black , fontSize: 14 , fontWeight: FontWeight.w400),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey , fontSize: 14 , fontWeight: FontWeight.w400),
                    prefixIcon: Icon(Icons.remove_red_eye_outlined , color: Colors.black, size: 18,),

                    enabledBorder: OutlineInputBorder
                    (
                      borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    floatingLabelStyle: TextStyle(color: Colors.black , fontSize: 15),

                    focusedBorder: OutlineInputBorder
                    (
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                )
              ),


              SizedBox(height: 20,),
              FadeInUp
              (
                delay: Duration(milliseconds: 800),
                duration: Duration(milliseconds: 1500),
                child: TextField
                (
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(color: Colors.black , fontSize: 14 , fontWeight: FontWeight.w400),
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.grey , fontSize: 14 , fontWeight: FontWeight.w400),
                    prefixIcon: Icon(Icons.remove_red_eye_outlined , color: Colors.black, size: 18,),

                    enabledBorder: OutlineInputBorder
                    (
                      borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    floatingLabelStyle: TextStyle(color: Colors.black , fontSize: 15),

                    focusedBorder: OutlineInputBorder
                    (
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                )
              ),

              FadeInUp
              (
                delay: Duration(milliseconds: 800),
                duration: Duration(milliseconds: 1300),
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: 
                  [
                    TextButton
                    (
                      onPressed: () {},
                      child: Text("Forgot Password?" , style: TextStyle(color: Colors.black , fontSize: 14 , fontWeight: FontWeight.w400),),
                    )
                  ]
                )
              ),

              SizedBox(height: 30,),

              FadeInUp
              (
                delay: Duration(milliseconds: 800),
                duration: Duration(milliseconds: 1500),
                child: MaterialButton
                (
                  padding: EdgeInsets.symmetric(horizontal: 70 , ),
                  onPressed: () 
                  {
                    Navigator.of(context).pushNamedAndRemoveUntil("login" , (route) => false,);
                  },
                  height: 50,
                  color: Colors.black,
                  shape: RoundedRectangleBorder
                  (
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("Register" , style: TextStyle(color: Colors.white , fontSize: 18 ,),),

                ),
              ),

              SizedBox(height: 30,),

              FadeInUp
              (
                delay: Duration(milliseconds: 800),
                duration: Duration(milliseconds: 1500),
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  [
                    Text("Do you have an account?" , style: TextStyle(color: Colors.grey.shade600 , fontSize: 14 , fontWeight: FontWeight.w400),),
                    TextButton(onPressed: ()
                    {
                      Navigator.of(context).pushNamedAndRemoveUntil("login" , (route) => false,);
                    }, child: Text("Login" , style: TextStyle(color: Colors.blue , fontSize: 14 , fontWeight: FontWeight.w400),))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
