import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_station/model/Movies.dart';
import 'package:ticket_station/model/movie.dart';

class Tickets_Page extends StatefulWidget {
  const Tickets_Page({super.key});

  @override
  State<Tickets_Page> createState() => _Tickets_PageState();
}

class _Tickets_PageState extends State<Tickets_Page> {
  @override
  Widget build(BuildContext context) {
    List<Movie> myMovie = List.from(movies);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
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
        child: Stack(
          children: [
            Positioned(
              child: ListView.separated(
                itemCount: 4,
                padding: EdgeInsets.fromLTRB(20,10,20,90),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 40,
                  );
                },
                
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 200,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              color: Colors.black,
                              child: Center(
                                child: RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      myMovie[index].movieName,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                              ),
                            )
                            ),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  color: Colors.black.withOpacity(0.1),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ticket for ${myMovie[index].movieName}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Expanded(
                                          child: Row(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context).size.height,
                                            width: MediaQuery.of(context).size.width *0.3,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Material(
                                                      elevation: 2,
                                                      child: Container(
                                                        height: 110,
                                                        width: 110,
                                                        color: Colors
                                                            .grey.shade600,
                                                            child: Icon(CupertinoIcons.barcode_viewfinder , size: 80,),
                                                      ),
                                                    )),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Image.asset("images/barcod.png")
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Expanded(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons
                                                      .calendar_today_rounded),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Expanded(
                                                      child: Text(
                                                    "26 / 10 2024 06:30",
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  )),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons
                                                      .location_on_outlined),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Expanded(
                                                      child: Text(
                                                    "Riyadh Park",
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  )),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              ElevatedButton.icon(
                                                  style: ElevatedButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.black,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.check_circle,
                                                    color: Colors.white,
                                                    size: 19,
                                                  ),
                                                  label: Text(
                                                    "Confirmed",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ))
                                            ],
                                          )
                                          ),
                                        ],
                                      )
                                      ),
                                    ],
                                  ),
                                )
                                ),
                          ],
                        ),
                        CustomPaint(
                          painter: SideCutsDesign(),
                          child: SizedBox(
                            height: 200,
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0),
                    child: Container(
                      color: Colors.grey.withOpacity(0.6),
                      width: double.infinity,
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed("Home");
                              },
                              icon: Icon(
                                CupertinoIcons.home,
                                color: Colors.grey.shade200,
                                size: 26,
                              )),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed("Sercsh");
                              },
                              icon: Icon(CupertinoIcons.search,
                                  color: Colors.grey.shade200, size: 26)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(CupertinoIcons.ticket,
                                  color: Colors.grey.shade800, size: 29)),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed("Prpfile");
                              },
                              icon: Icon(CupertinoIcons.person,
                                  color: Colors.grey.shade200, size: 26)),
                        ],
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class SideCutsDesign extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var h = size.height;
    var w = size.width;

    //lift cat
    canvas.drawArc(
      Rect.fromCircle(center: Offset(0, h / 2), radius: 18),
      0,
      10,
      false,
      Paint()
        ..style = PaintingStyle.fill
        ..color = Colors.white,
    );

    //rhit cat
    canvas.drawArc(
      Rect.fromCircle(center: Offset(w, h / 2), radius: 18),
      0,
      10,
      false,
      Paint()
        ..style = PaintingStyle.fill
        ..color = Colors.white,
    );

    canvas.drawArc(
      Rect.fromCircle(center: Offset(w / 5, h), radius: 7),
      0,
      10,
      false,
      Paint()
        ..style = PaintingStyle.fill
        ..color = Colors.white,
    );

    canvas.drawArc(
      Rect.fromCircle(center: Offset(w / 5, 0), radius: 7),
      0,
      10,
      false,
      Paint()
        ..style = PaintingStyle.fill
        ..color = Colors.white,
    );

    canvas.drawArc(
      Rect.fromCircle(center: Offset(0, h), radius: 7),
      0,
      10,
      false,
      Paint()
        ..style = PaintingStyle.fill
        ..color = Colors.white,
    );

    canvas.drawArc(
      Rect.fromCircle(center: Offset(0, 0), radius: 7),
      0,
      10,
      false,
      Paint()
        ..style = PaintingStyle.fill
        ..color = Colors.white,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
