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
          children: 
          [
            ClipRRect
            (
              
              borderRadius: BorderRadius.circular(80),
              child: Container( color: const Color.fromARGB(255, 209, 254, 156),child: Image.asset("images/prof.png" , width: 150, height: 150,)),
            ),

            SizedBox(height: 10,),
            Text("Abdullah" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
            
            SizedBox(height: 5,),

            Text("Abdullah@gmail.com" , style: TextStyle(fontSize: 15 , color: Colors.blueGrey ),),

            SizedBox(height: 20,),
            MaterialButton
                (
                  padding: EdgeInsets.symmetric(horizontal: 50 , ),
                  onPressed: () 
                  {
                  },
                  height: 50,
                  color: Colors.black,
                  shape: RoundedRectangleBorder
                  (
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Text("Edit profile" , style: TextStyle(color: Colors.white , fontSize: 18 ,),),
                ),

                SizedBox(height: 30,),
                
                Container
                (
                  decoration: BoxDecoration
                  (
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300 )
                  ),
                  child: Column
                  (
                    children:
                    [
                      ListTile
                      (
                        title: Text("Booking History" , style: TextStyle(color: Colors.black, ),),
                        leading: Icon(Icons.history , color: Colors.black,),
                        trailing: Icon(Icons.arrow_forward , color: Colors.grey[400],),
                      ), 

                      Container
                      (
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child:  Divider(color: Colors.grey[400],),
                      ),

                                            ListTile
                      (
                        title: Text("Watch List" , style: TextStyle(color: Colors.black, ),),
                        leading: Icon(Icons.tv_rounded , color: Colors.black,),
                        trailing: Icon(Icons.arrow_forward , color: Colors.grey[400],),
                      ), 
                    ]
                  ),
                ),

                SizedBox(height: 50,),
                Container
                (
                  decoration: BoxDecoration
                  (
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300 )
                  ),
                  child: Column
                  (
                    children:
                    [
                      ListTile
                      (
                        title: Text("Experuences" , style: TextStyle(color: Colors.black, ),),
                        trailing: Icon(Icons.arrow_forward , color: Colors.grey[400],),
                      ), 

                      Container
                      (
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child:  Divider(color: Colors.grey[400],),
                      ),

                                            ListTile
                      (
                        title: Text("Contact Us" , style: TextStyle(color: Colors.black, ),),
                        trailing: Icon(Icons.arrow_forward , color: Colors.grey[400],),
                      ), 
                    ]
                  ),
                ),
                SizedBox(height: 30,),
                Container
                (
                  decoration: BoxDecoration
                  (
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300 )
                  ),
                  child: Column
                  (
                    children:
                    [
                      ListTile
                      (
                        title: Text("Logout" , style: TextStyle(color: Colors.red, ),),
                        trailing: Icon(Icons.logout_outlined , color: Colors.redAccent,),
                      ), 
 
                    ]
                  ),
                ),
                SizedBox(height: 30,),

            


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
