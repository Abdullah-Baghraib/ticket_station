import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PayButton_widget extends StatelessWidget {
  const PayButton_widget({super.key});

    void pay(BuildContext context)
  {
    showDialog
    (
      context: context, 
      builder: (context) => AlertDialog
      (
        content:Text(" User want to pay !"),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Expanded
    (
      flex: 13,
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: 
        [
          Padding
          (
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: 
              [
                Row(
                  children: [
                    Container
                    (
                      height: 15,
                      width: 15,
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration
                      (
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                        color: Colors.white
                      ),
                    ),
                Text("Available" , style: TextStyle(fontSize: 12 , color: Colors.black , fontWeight: FontWeight.bold),)
                  ],
                ),
                Row(
                  children: [
                    Container
                    (
                      height: 15,
                      width: 15,
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration
                      (
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                        color: Colors.black
                      ),
                    ),
                Text("Selected" , style: TextStyle(fontSize: 12 , color: Colors.black , fontWeight: FontWeight.bold),)
                  ],
                ),
                Row(
                  children: [
                    Container
                    (
                      height: 15,
                      width: 15,
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration
                      (
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                        color: Colors.black54
                      ),
                    ),
                Text("Reserved" , style: TextStyle(fontSize: 12 , color: Colors.black , fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            ),
          ), 
          Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: 
            [
              Container
              (
                height: MediaQuery.of(context).size.height*0.08,
                width: MediaQuery.of(context).size.width*0.45,
                child: Center
                (
                  child: Text
                  (
                    "\$90", style:  TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 24),
                  ),
                ),
              ), 
              MaterialButton
              (
                color: Colors.black,
                shape: RoundedRectangleBorder
                (
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15))
                ),
                onPressed: () {
                  pay(context);
                }, 
                child: Container
                (
                  height: MediaQuery.of(context).size.height*0.08,
                  width: MediaQuery.of(context).size.width*0.45,
                  child: Center(child: Text("Pay" , style: TextStyle(color: Colors.white , fontSize: 24  , fontWeight: FontWeight.bold),)),
                )
              )
            ],
          )
        ],
      )
    );
  }
}