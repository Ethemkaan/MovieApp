import 'package:animated_button/animated_button.dart';
import 'package:finalproject/screen/movie_info.dart';
import 'package:finalproject/screen/top_10_screen.dart';
import 'package:flutter/material.dart';

import '../service/film_service.dart';

class Movies extends StatefulWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  final FilmService service = FilmService();
  var promptedFilm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffbbdefb),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: Icon(Icons.local_movies),
          title: Text(
            'All Movies Here !!!!',
            style: TextStyle(
              fontSize: 28,
              color: Color(0xffbbdefb),
            ),
          ),
          toolbarTextStyle: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
            ),
          ).bodyText2,
          titleTextStyle: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
            ),
          ).headline6,
        ),
        body: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/filmler.jpg',
                    width: 350,
                    height: 300,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      promptedFilm = value;
                    },
                    decoration: InputDecoration(
                      labelText: ('Which movie would you like to watch?'),
                      labelStyle: TextStyle(color: Colors.black, fontSize: 21),
                      hintText: '',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      service.findFilmInfo(promptedFilm).then((value) {
                        if (value != null) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  MovieInfo(movieDetails: value)));
                        } else {}
                      });

                      //BASINCA NE OLACAĞI BURADAN YAPILACAK
                    },
                    label: Icon(Icons.search),
                    icon: Text('Search'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.black),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  AnimatedButton(
                      child: Text(
                        'Top 5 Movies',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      color: Colors.black54,
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => TopTen()));
                      }),
                ],
              )
            ],
          ),
        ));
  }
}
