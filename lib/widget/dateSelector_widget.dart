import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class DateSelector_Widget extends StatefulWidget {
  const DateSelector_Widget({super.key});

  @override
  State<DateSelector_Widget> createState() => _DateSelector_WidgetState();
}

class _DateSelector_WidgetState extends State<DateSelector_Widget> {
  int DateIndexSelected = 3;
  DateTime currentDate = DateTime.now();

  String _dayFormat(int dayWeek)
  {
    switch(dayWeek)
    {
      case 1 :
        return"MO";

      case 2 :
        return"TU";

      case 3 :
        return"WE";

      case 4 :
        return"TH";
      
      case 5 :
        return"FR";

      case 6 :
        return"SA";

      case 7 :
        return"SU";

      default :
        return"MO";
    }

  }

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Expanded
    (
      flex: 13,
      child: Container
      (
        width: size.width,
        padding: EdgeInsets.only(left: 50),
        child: Stack
        (
          alignment: Alignment.centerLeft,
          children: 
          [
            Container
            (
              decoration: BoxDecoration
              (
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.only
                (
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                )
              ),
            ),
            Container
            (
              width: size.width,
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int i) 
                {
                  var date = currentDate.add(Duration(days: i));
                  return GestureDetector
                  (
                    onTap: () 
                    {
                      setState(() {
                        DateIndexSelected = i;
                      });
                    },
                    child: Container
                    (
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(vertical: size.height*0.025 , horizontal: 12),
                      width: 44,
                      decoration: BoxDecoration
                      (
                        color: DateIndexSelected==i ? Colors.black : Colors.transparent,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Column
                      (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: 
                        [
                          Text(date.day.toString(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600 , height: 1.0,
                          color: i==DateIndexSelected ? Colors.white : Colors.black),),

                          Text(_dayFormat(date.weekday), style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600 ,
                          color: i==DateIndexSelected ? Colors.white : Colors.black.withOpacity(0.5)),)
                        ],
                      ),
                    ),
                  );
                  
                },
                
              ),
            )
          ],
        ),
      )
    );
  }
}