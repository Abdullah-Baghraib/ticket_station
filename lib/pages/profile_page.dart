import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (

      appBar:  AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white10,
        elevation: 0,
        title: Text("Profile",style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(
                onPressed: () => Navigator.of(context).pushNamed("Notification"),
                icon: Icon(
                  CupertinoIcons.bell,
                  size: 25,
                  color: Colors.white,
                )),
          ),
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
      body: Stack
      (
        
        children: 
        [
          Positioned
          (
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            Icon(
            CupertinoIcons.person_alt_circle,
            size: 130,
            color: Colors.black,

            ),
            SizedBox(height: 15),

            Text(
            'Saleh almas',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,

            ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height: 25),
            ),
            SizedBox(height: 16.0),
            ListTile(

            trailing: Icon(Icons.alternate_email_outlined),
            title: Text('saleh_almas@gmail.com'),

              //tileColor: Colors.red,
              shape: RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.black,width: 1),
              )

            ),

          SizedBox(height: 25),
            ListTile(
            leading: Icon(Icons.home),
            title: Text('AL_shahr'),
            //tileColor: Colors.red,
              shape: RoundedRectangleBorder(

                borderRadius:BorderRadius.circular(12),
                side: BorderSide(color: Colors.black,width: 1),
              )
            ),
            SizedBox(height: 25),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+967 777 359 678'),
              //tileColor: Colors.red,
              shape: RoundedRectangleBorder(

                borderRadius:BorderRadius.circular(12),
                side: BorderSide(color: Colors.black,width: 1),
              )
            ),

            SizedBox(height: 25),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Riyadh"),
              shape: RoundedRectangleBorder(

                borderRadius:BorderRadius.circular(12),
                side: BorderSide(color: Colors.black,width: 1),
              )
            ),

            SizedBox(height: 25),

            Container(

            padding:EdgeInsets.fromLTRB(90, 20, 90, 0),

            child: ListTile(

                leading: Icon(Icons.exit_to_app,color: Colors.red,),
                title: Text(
                  'Log Out',style: TextStyle(
                  color: Colors.red , 
                ),

                ),
                          
                onTap: () => Navigator.pushNamedAndRemoveUntil(context, "login", (route) => false),
                  //tileColor: Colors.red,
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.red,width: 1),
                  )

              ),
            ),
            SizedBox(height: 100,)
          ],
          
        ),
            )
          ),
          Positioned
      (
        bottom: 10,
        left: 10,
        right: 10,
        child: ClipRRect
        (
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter
          (
            filter: ImageFilter.blur
          (
            sigmaX: 25.0,
            sigmaY: 25.0
          ),
          child: Container
          (
            color: Colors.grey.withOpacity(0.6),
            width: double.infinity,
            height: 70,
            child: Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: 
              [
                IconButton
                (
                  onPressed: (){Navigator.of(context).pushReplacementNamed("Home");}, 
                  icon: Icon(CupertinoIcons.home, color: Colors.grey.shade200,size: 26,)
                ),
                IconButton
                (
                  onPressed: (){Navigator.of(context).pushReplacementNamed("Sercsh");}, 
                  icon: Icon(CupertinoIcons.search, color: Colors.grey.shade200,size: 26)
                ),
                IconButton
                (
                  onPressed: (){Navigator.of(context).pushReplacementNamed("Tickets");}, 
                  icon: Icon(CupertinoIcons.ticket, color: Colors.grey.shade200,size: 26)
                ),
                IconButton
                (
                  onPressed: (){}, 
                  icon: Icon(CupertinoIcons.person, color: Colors.grey.shade800,size: 29)
                ),
              ],
            ),
          ),
          )
        ),
      ),
        ],
      ),
    );
  }
}
