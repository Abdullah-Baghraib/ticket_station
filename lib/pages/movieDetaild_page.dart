import 'package:flutter/material.dart';
import 'package:ticket_station/model/movie.dart';
import 'package:flutter/cupertino.dart';
import 'package:ticket_station/pages/booking_page.dart';


class Movie_Details extends StatefulWidget {
  final Movie movie;
  const Movie_Details({
    super.key,
    required this.movie,
  });

  @override
  State<Movie_Details> createState() => _Movie_DetailsState();
}

class _Movie_DetailsState extends State<Movie_Details> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        
        width: double.infinity,
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 120,vertical: 25),
        decoration: BoxDecoration
        (
          gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [
                        0.15,
                        0.90,
                      ],
                      colors: [
                        Colors.white,
                        Colors.white.withOpacity(0.0005),
                        
                      ]),
        ),
        child:ElevatedButton
        (
          style: ElevatedButton.styleFrom
          (
            primary: Colors.black,
            shape: RoundedRectangleBorder
            (
              borderRadius: BorderRadius.circular(12)
            )
          ),
          onPressed: () 
          {
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return Booking_Page(movie: widget.movie);
              }
              )
              );
          }, 
          child: Text("Play")
        ) ,
      ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 500,
                child: Image.asset(
                  widget.movie.image,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                height: 502,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                        0.15,
                        0.90
                      ],
                      colors: [
                        Colors.white.withOpacity(0.0005),
                        Colors.white,
                      ]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 19),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(15)),
                        child: IconButton(
                            onPressed:  () => Navigator.of(context).pushNamed("Notification"),
                            icon: Icon(
                              CupertinoIcons.bell,
                              size: 25,
                              color: Colors.white,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 19),
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
                ],
              ),
              Positioned(
                  top: 435,
                  child: Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 410,
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.movie.movieName,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration
                              (
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black.withOpacity(0.2)
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    widget.movie.rating.toString(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    CupertinoIcons.star_fill,
                                    color: Colors.yellowAccent,
                                    size: 20,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      
                    ],
                  )
                  ),
                  
            ],
          ),
          Container
          (
            color: Colors.white,
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                        Container(
                        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            bulidGenra(movie: widget.movie),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          width: 350,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            widget.movie.des,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          )),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                          width: 350,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Cast",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          )
                          ),
                      SizedBox(
                        height: 20,
                      ),

                        Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 390,
                        height: 220,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: widget.movie.cast.length,
                          itemBuilder: (BuildContext context, int i) {
                            return Padding(
                                        padding:
                                          EdgeInsets.symmetric(horizontal: 5),
                                        child: Container(
                                            width: 110,
                                            height: 170,
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color:
                                                    Colors.black.withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child:Column
                                            (
                                              children: 
                                              [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(12),
                                                child: Image.asset
                                                (
                                                widget.movie.cast[i],
                                                fit: BoxFit.cover,
                                                width: 100,
                                                height: 150,
                                                ),
                                              ),
                                            SizedBox(height: 8,),
                                            Text("${widget.movie.castNames[i]}",style: TextStyle(color: Colors.black),)
                                            
                                              ],
                                            )
                                            ),
                                      );
                          },
                        ),
                      ),
                      
                    
                      SizedBox(
                        height: 90,
                      ),
              ],
            ),
          )

        ]
        )
        );
  }
}






bulidGenra({required Movie movie}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: movie.genres
        .map((genre) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  genre,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ))
        .toList(),
  );
}

bulidCast({required Movie movie}) {
  return Row(
    children: movie.cast
        .map((castImge) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                  width: 100,
                  height: 150,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(
                    castImge,
                    fit: BoxFit.cover,
                  )),
            ))
        .toList(),
  );
}

