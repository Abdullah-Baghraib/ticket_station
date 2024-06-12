import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ticket_station/widget/BulidChairs_widget.dart';

class SeatSelector_widget extends StatefulWidget {
  const SeatSelector_widget({super.key});

  @override
  State<SeatSelector_widget> createState() => _SeatSelector_widgetState();
}

class _SeatSelector_widgetState extends State<SeatSelector_widget> {

  Widget _chairList()
  {
    Size sizee = MediaQuery.of(context).size;

    var _chairStatus =
    [
      //1 is free , white
      //2 is selected , black
      //1 is reserved  , gray
      [1,1,1,1,1,1,1,],
      [1,1,1,1,3,1,1,],
      [1,1,1,1,1,3,3,],
      [2,2,2,1,3,1,1,],
      [1,1,1,1,1,1,1,],
      [1,1,1,1,1,1,1,],
    ];

    return Container
    (
      child: Column
      (
        children: 
        [
          for( int i =0 ; i<6 ;i++)
            Container
            (
              margin: EdgeInsets.only(top: i==3 ? sizee.height * 0.02 : 0),
              child: Row
              (
                children: 
                [
                    for( int j =0 ; j<9 ;j++)
                      Expanded
                      (
                        flex: j==0 || j==8 ? 2 :1,
                        child: j==0 || j==8 || (i==0 && j==1)
                        || 
                        (i==0 && j==7) 
                        ||
                        (j==8)  ?Container() 
                        : Container
                        (
                          height: sizee.width/11-10,
                          margin: EdgeInsets.all(5),
                          child: _chairStatus[i][j-1]==1 
                          ? BulidChairs.availbleChair() 
                          : _chairStatus[i][j-1]==2
                          ?BulidChairs.selectedChair()
                          :BulidChairs.resevedChair()
                        )
                      )
                ],
              ),
            )

        ],
      ),
    );

  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Expanded
    (
      flex: 47,
      child: Stack
      (
        alignment: Alignment.center,
        children: 
        [
          Container
          (
            width: size.width,
          ),
          Positioned
          (
            top: 48,
            child: Stack
            (
              alignment: Alignment.topCenter,
              children: 
              [
                Container
                (
                  height: 40,
                  width: size.width*0.65,
                  decoration: BoxDecoration
                  (
                    borderRadius: BorderRadius.only
                    (
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                    gradient: LinearGradient
                    (
                      colors: 
                      [
                        Colors.black,
                        Colors.transparent
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0,1]
                    )
                  ),
                ),
                Container
                (
                  height: 40,
                  width: size.width*0.55,
                  decoration: BoxDecoration
                  (
                    border: Border(top: BorderSide(width: 6 , color: Colors.black))
                  ),
                ),
              ],
            )
          ),
          Positioned
          (
            bottom: size.height*0.02,
            child: Container
            (
              width: size.width,
              child: _chairList(),
            )
          )
        ],
      ),
    );
  }
}
