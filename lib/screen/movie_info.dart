import 'package:flutter/material.dart';
import 'movies.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({Key? key, required this.movieDetails}) : super(key: key);

  // Declare a field that holds the Todo.
  final Map<String, Object> movieDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbbdefb),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: Icon(Icons.local_movies),
        title: Text(
          movieDetails['filmName'].toString(),
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
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                width: 250,
                height: 250,
                child: Image.network(movieDetails['filmImageUrl'].toString()),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: 30,
                    child: Text(
                      'IMDB PUANI : ' + movieDetails['filmRating'].toString(),
                    ),
                  ),
                )),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                      height: 30,
                      child: ListView(
                        children: [Text('ACTORS:')],
                      )),
                )),
              ],
            ),
            SizedBox(
                height: 100,
                child: Text(
                  movieDetails['filmPlot'].toString(),
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Movies()));
                    //BASINCA NE OLACAĞI BURADAN YAPILACAK
                  },
                  label: Icon(Icons.arrow_back),
                  icon: Text('BACK'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
