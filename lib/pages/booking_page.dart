import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ticket_station/model/movie.dart';
import 'package:ticket_station/widget/PayButton_widget.dart';
import 'package:ticket_station/widget/SeatSelector_widget.dart';
import 'package:ticket_station/widget/customAppBar_widget.dart';
import 'package:ticket_station/widget/dateSelector_widget.dart';
import 'package:ticket_station/widget/location_widget.dart';
import 'package:ticket_station/widget/timeSelector_widgwt.dart';


class Booking_Page extends StatefulWidget {
  final Movie movie;
  const Booking_Page({super.key, required this.movie});

  @override
  State<Booking_Page> createState() => _Booking_PageState();
}

class _Booking_PageState extends State<Booking_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Colors.white,
      body: Padding
      (
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column
        (
          children: 
          [
            CustomAppBar_Widget(movie: widget.movie,),
            DateSelector_Widget(),
            TimeSelector_Widgwt(),
            Location_Widget(),
            SeatSelector_widget(),
            PayButton_widget(),
          ],
        ),
      ),
    );
  }
}