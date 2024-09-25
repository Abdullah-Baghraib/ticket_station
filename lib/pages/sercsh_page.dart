import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_station/model/ComingSoon.dart';
import 'package:ticket_station/model/Movies.dart';
import 'package:ticket_station/model/movie.dart';
import 'package:ticket_station/pages/movieDetaild_page.dart';

class Sercsh_Page extends StatefulWidget {
  const Sercsh_Page({super.key});

  @override
  State<Sercsh_Page> createState() => _Sercsh_PageState();
}

class _Sercsh_PageState extends State<Sercsh_Page> {

  static List<Movie> main_movie_list=movies+comingSoon;
  List<Movie> displye_list = List.from(main_movie_list);

  ////////////////////////
  void updateList(String value)
  {
    setState(() {
      displye_list = main_movie_list.where((e) => e.movieName.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Search for a Movie",style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
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
      
      body: Container(
        color: Colors.white,
        child: Stack
        (
          children: 
          [
            Positioned
            (
              top: 10,
          left: 10,
          right: 10,
          
              child:ListView
            (
              shrinkWrap: true,
              children: 
              [
                Padding
                (
                  padding: EdgeInsets.symmetric(horizontal:16 , vertical: 20),
                  child: Container(
                    height: 700,
                    child: Column
                    (
                      
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: 
                      [
                        TextField
                        (
                          textInputAction: TextInputAction.search,
                          onChanged: (value) => updateList(value),
                          style: TextStyle( color: Colors.white ),
                          decoration: InputDecoration
                          (
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.6),
                            border: OutlineInputBorder
                            (
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none
                            ),
                            hintText: "eg : Lady Bird",
                            hintStyle: TextStyle(color: Colors.white70),
                            prefixIcon: Icon(CupertinoIcons.search , ),
                            prefixIconColor:Colors.white 
                          ),
                        ),
                        SizedBox(height: 20,),
                        Expanded
                        (
                          ////////////////////////////////////////////////////////
                          child: displye_list.length==0 ? Center(child: Text("No Result Found", style: TextStyle(color: Colors.black , fontSize: 22 , fontWeight: FontWeight.bold),),)
                          : ListView.builder
                          (
                            shrinkWrap: true,
                            itemCount: displye_list.length,
                            itemBuilder: (context, i) => 
                            GestureDetector(
                                onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return Movie_Details(movie: displye_list[i]);
                                }));
                              },
                              child: ListTile
                              (
                                contentPadding: EdgeInsets.all(8),
                                title: Text(displye_list[i].movieName , style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                subtitle: Text("${displye_list[i].time}" , style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),),
                                trailing: Container(
                                  width:50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [Text("${displye_list[i].rating}" , style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),Icon(Icons.star, color: Colors.amber,),],)
                                    ),
                                leading: Image.asset(displye_list[i].image),
                              ),
                            ),
                          )
                          
                        ),

                        SizedBox(height: 80,)

                      ],
                    ),
                  )
                )
              ],

            ),
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
                    onPressed: (){}, 
                    icon: Icon(CupertinoIcons.search, color: Colors.grey.shade800,size: 29)
                  ),
                  IconButton
                  (
                    onPressed: (){Navigator.of(context).pushReplacementNamed("Tickets");}, 
                    icon: Icon(CupertinoIcons.ticket, color: Colors.grey.shade200,size: 26)
                  ),
                  IconButton
                  (
                    onPressed: (){Navigator.of(context).pushReplacementNamed("Prpfile");}, 
                    icon: Icon(CupertinoIcons.person, color: Colors.grey.shade200,size: 26)
                  ),
                ],
              ),
            ),
            )
          ),
        ),
          
          
          
          ]
          ,
      
        ),
      ),
    );
  }
}
