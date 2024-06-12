import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_station/model/Movies.dart';
import 'package:ticket_station/model/movie.dart';



class backgroundWidget extends StatelessWidget {
  final PageController controller ;
  const backgroundWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder
    (
      reverse: true,
      physics: NeverScrollableScrollPhysics(),
      controller: controller,
      itemBuilder: (context, i) 
      {
        final movie = movies[i];
        return bulidBackground(movie:movie);
      },
      itemCount: movies.length,
    );


  }
}
Widget bulidBackground({required Movie movie})
    {
      return Stack
      (
        children: 
        [
          Container
          (
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(movie.image , fit: BoxFit.cover,),
          ),
          Container
          (
            decoration: BoxDecoration
            (
              gradient: LinearGradient
              (
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.15 , 0.75],
                colors: 
                [
                  Colors.white.withOpacity(0.0001),
                  Colors.white,

                ]
              )
            ),
          )
        ],
      );

    }
