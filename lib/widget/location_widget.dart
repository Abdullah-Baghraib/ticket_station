import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Location_Widget extends StatelessWidget {
  const Location_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding
    (
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          Icon(CupertinoIcons.location_solid , color: Colors.black , size: 30,),
          SizedBox(width: 8,),
          Column
          (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: 
            [
              Text("VOX Cinemas" , style: TextStyle(color: Colors.black , fontSize: 16 , fontWeight: FontWeight.bold),),
              Text("KSA Riyadh" , style: TextStyle(color: Colors.black45 , fontSize: 16 ),),

            ],
          )
        ],
      ),
    );
  }
}