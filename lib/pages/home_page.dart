import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ticket_station/model/Movies.dart';
import 'package:ticket_station/model/comingSoon.dart';
import 'package:ticket_station/pages/movieDetaild_page.dart';
import 'package:ticket_station/widget/background_Widget.dart';
import 'package:ticket_station/widget/movie_card.dart';
import 'package:ticket_station/widget/soonCard.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black.withOpacity(0.1),
        elevation: 0,

        leading: Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(
                onPressed: () => Navigator.of(context).pushNamed("Prpfile"),
                icon: Icon(
                  CupertinoIcons.person,
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
      
      body: Stack(
        children: [
          backgroundWidget(controller: controller),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                SizedBox(
                  height: 150,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CarouselSlider(
                        items: movies.map((e) =>GestureDetector
                            (
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return Movie_Details(movie: e);
                                }));
                              },
                              child: MovieCardWidget(movie: e)
                            )
                            ).toList(),
                            options: CarouselOptions(
                            enableInfiniteScroll: false,
                            viewportFraction: 0.75,
                            height: MediaQuery.of(context).size.height * 0.7,
                            enlargeCenterPage: true,
                            onPageChanged: (index, _) => controller.animateToPage(
                              index,
                              duration: Duration(seconds: 1),
                              curve: Curves.ease),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Coming Soon ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: comingSoon.length,
                        itemBuilder: (BuildContext context, int i) {
                          return GestureDetector
                          (
                            onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return Movie_Details(movie: comingSoon[i]);
                                }));
                              },
                            child: SoonCard(
                              movie: comingSoon[i],
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 60,)
                    ],
                  ),
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
                  onPressed: (){}, 
                  icon: Icon(CupertinoIcons.home, color: Colors.grey.shade800,size: 29,)
                ),
                IconButton
                (
                  onPressed: (){Navigator.of(context).pushReplacementNamed("Sercsh");}, 
                  icon: Icon(CupertinoIcons.search, color: Colors.grey.shade200,size: 26)
                ),
                IconButton
                (
                  onPressed: (){Navigator.of(context).pushReplacementNamed("Tickets");}, 
                  icon: Icon(CupertinoIcons.down_arrow, color: Colors.grey.shade200,size: 26)
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
        ],
      ),
    );
  }
}
