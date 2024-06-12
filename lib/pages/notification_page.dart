import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Notificationn extends StatelessWidget {
  const Notificationn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 22)),
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(15)),
          child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                CupertinoIcons.arrow_left,
                size: 25,
                color: Colors.white,
              )),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.ellipsis,
                  size: 25,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    CupertinoIcons.bell,
                    size: 25,
                    color: Colors.white,
                  )),
              title: Text(
                "Reservation Reminder",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Avengers : Endgame will be aired tomorrow at 6:30",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Text(
                "5:49",
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ListTile(
              leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    CupertinoIcons.bell,
                    size: 25,
                    color: Colors.white,
                  )),
              title: Text(
                "Reservation Reminder",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Ladt Bird will be aired Friday at 10:30",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Text(
                "11:22",
              ),
            ),

            SizedBox(
              height: 20,
            ),

            ListTile(
              leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    CupertinoIcons.bell,
                    size: 25,
                    color: Colors.white,
                  )),
              title: Text(
                "Rate your experience with us",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "How much did you enjoy watching ' The Gray Man ' in VOX Cinema",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Text(
                "3:00",
              ),
            ),

            SizedBox(
              height: 20,
            ),
            
            ListTile(
              leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    CupertinoIcons.bell,
                    size: 25,
                    color: Colors.white,
                  )),
              title: Text(
                "New Movies ! ",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "A NEW list of movies ! is avilable for booking now , check them out",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Text(
                "2:20",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
