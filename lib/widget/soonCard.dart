import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ticket_station/model/movie.dart';

class SoonCard extends StatelessWidget {
  final Movie movie;
  const SoonCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9),
      margin: EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 200,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    movie.image,
                  ),
                )),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                Text("  ${movie.movieName}",style: TextStyle(fontSize: 19 , fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                bulidGenra(movie: movie),
                SizedBox(height: 15,),
                Row
                (
                  children: 
                  [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:5.0),
                      child: Icon(CupertinoIcons.time),
                    ),
                    Text("  ${movie.time} ")
                  ],
                )
              ],
          
            ),
          )
        ],
      ),
    );
  }
}

  bulidGenra({required Movie movie})
  {
    return Row
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children: movie.genres.map((genre) => Padding
      (
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Container
        (
          decoration: BoxDecoration
          (
            border: Border.all(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(15)
          ),
          padding: EdgeInsets.all(5),
          child: Text(genre , style: TextStyle(color: Colors.grey.shade600 , fontSize: 12),),
        ),
        )
        ).toList(),
    );

  }

