import 'package:flutter/material.dart';
import 'package:ticket_station/pages/home_page.dart';
import 'package:ticket_station/pages/login/login.dart';
import 'package:ticket_station/pages/login/start.dart';
import 'package:ticket_station/pages/notification_page.dart';
import 'package:ticket_station/pages/profile_Page.dart';
import 'package:ticket_station/pages/sercsh_page.dart';
import 'package:ticket_station/pages/tickets_page.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      routes: 
      {
        "Home" :(context) => HomePage(),
        "Sercsh" :(context) => Sercsh_Page(),
        "Tickets" :(context) => Tickets_Page(),
        "Prpfile" :(context) => Profile_Page(),
        "Notification" :(context) => Notificationn(),
        "login" :(context) => Login(),
      },
      
      debugShowCheckedModeBanner: false,
      home: Start_app1(),
    );
  }
}

