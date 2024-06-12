import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ticket_station/model/movie.dart';

class MovieCardWidget extends StatelessWidget {
  final Movie movie;
  const MovieCardWidget({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container
      (
        decoration: BoxDecoration
        (
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25) )
        ),
        child: Column
        (
          children: 
          [
            Expanded(child: bulidImage(movie : movie)),
            SizedBox(height: 4,),
            Text(movie.movieName , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
            SizedBox(height: 10,),
            bulidGenra(movie: movie),
            SizedBox(height: 10,),
            bulidRating(movie:movie),
            SizedBox(height: 10,),
            Text(movie.time , ),
            SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }

  bulidImage({required Movie movie})
  {
    return Container
    (
      margin: EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.symmetric(horizontal:12),
      child: ClipRRect
      (
        borderRadius: BorderRadius.circular(25),
        child: Image.asset(movie.image , fit: BoxFit.cover,),
      ),
    );

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
  bulidRating({required Movie movie})
  {
    return Row
    (
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: 
      [
        Text(movie.rating.toStringAsFixed(1)),
        SizedBox(width: 10,),
        ...List.generate(movie.stars, (index) => Icon(Icons.star_rate , size: 18, color: Colors.orange,))
      ],
    );

  }
}
