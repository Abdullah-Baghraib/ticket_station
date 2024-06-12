import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ticket_station/model/movie.dart';

class CustomAppBar_Widget extends StatefulWidget {
  final Movie movie;
  const CustomAppBar_Widget({super.key, required this.movie});

  @override
  State<CustomAppBar_Widget> createState() => _CustomAppBar_WidgetState();
}

class _CustomAppBar_WidgetState extends State<CustomAppBar_Widget> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    
    return Expanded(
        flex: 15,
        child: Container(
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 100,
                child: Container(
                  child: Text(
                    widget.movie.movieName,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                  left: 10,
                  child: Material(
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(
                          CupertinoIcons.arrow_left,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  )),
              Positioned(
                  right: 10,
                  child: Material(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(
                          CupertinoIcons.ellipsis,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  )),
              Positioned(
                  right: 70,
                  child: Material(
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.of(context).pushNamed("Notification"),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(
                          CupertinoIcons.bell,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
