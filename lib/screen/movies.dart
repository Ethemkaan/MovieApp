import 'package:animated_button/animated_button.dart';
import 'package:finalproject/screen/movie_info.dart';
import 'package:finalproject/screen/top_5_screen.dart';
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
        backgroundColor: Color(0xFFCFD8DC),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: Icon(Icons.local_movies),
          title: Text(
            'All Movies Here !!!!',
            style: TextStyle(
              fontSize: 28,
              color: Color(0xFFCFD8DC),
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
              SizedBox(
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Image.asset(
                      "assets/filmler.jpg"
                  ),
                ),
              ),
              Divider(
                color: Colors.black,

              ),

              Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      promptedFilm = value;
                    },
                    decoration: InputDecoration(
                      labelText: ('Which movie would you like to watch?'),
                      labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                      hintText: '',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          
                        ),borderRadius: BorderRadius.circular(25)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        service.findFilmInfo(promptedFilm).then((value) {
                          if (value != null) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    MovieInfo(movieDetails: value)));
                          } else {}
                        });
                      },
                      label: Icon(Icons.search),
                      icon: Text('Search',
                      style: TextStyle(
                        fontSize: 20
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          backgroundColor: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 35,
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
