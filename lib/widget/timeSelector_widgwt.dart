import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TimeSelector_Widgwt extends StatefulWidget {
  const TimeSelector_Widgwt({super.key});

  @override
  State<TimeSelector_Widgwt> createState() => _TimeSelector_WidgwtState();
}

class _TimeSelector_WidgwtState extends State<TimeSelector_Widgwt> {
  int timeIndexSelected = 1;

  List<List> time = [
    ["01.30" , 30],
    ["06.30" , 40],
    ["10.30" , 50],
    ];

    Widget _timeItem(String Time , int Price , bool Active)
    {
      return Container
      (
        margin: EdgeInsets.symmetric(horizontal: 12),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration
        (
          border: Border.all
          (
            color: Active ? Colors.black : Colors.grey,
            width: 1
          ),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            RichText
            (
              text: TextSpan(text: Time , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600 ,
              color: Active ? Colors.black : Colors.grey
              ),

              children: 
              [
                TextSpan
                (
                  text: " PM",
                  style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600 , color: Active ? Colors.black : Colors.grey)
                )
              ]
              ),
            ),
            SizedBox(height: 5,),
            Text("Price : \$ ${Price}" , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600,
            color: Active ? Colors.black54 : Colors.grey),)
          ],
        ),
      );
    }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded
    (
      flex: 17,
      child: Container
      (
        margin: EdgeInsets.symmetric(vertical: size.height*0.035),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: time.length,
          itemBuilder: (BuildContext context, int i) 
          {
            return Container
            (
              margin: EdgeInsets.only(left: i==0?32:0),
              child: GestureDetector
              (
                onTap: () {
                  setState(() {
                    timeIndexSelected = i ;
                  });
                },
                child: _timeItem(time[i][0] , time[i][1] ,i==timeIndexSelected?true:false )
              ),

            );
          },
        ),
      )
    );
  }
}