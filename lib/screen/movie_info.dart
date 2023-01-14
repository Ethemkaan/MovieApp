import 'package:flutter/material.dart';
import 'movies.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({Key? key, required this.movieDetails}) : super(key: key);

  // Declare a field that holds the Todo.
  final Map<String, Object> movieDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCFD8DC),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: Icon(Icons.local_movies),
        title: Text(
          movieDetails['filmName'].toString(),
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
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                width: 400,
                height: 250,
                child: Image.network(movieDetails['filmImageUrl'].toString()),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text(
                      'IMDB PUANI : ' + movieDetails['filmRating'].toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 22,
              child: Text(
                'Storyline',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color:Colors.brown
                ),
              ),
            ),
            SingleChildScrollView(
              reverse: true,
            child :SizedBox(
                height: 200,
                child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    movieDetails['filmPlot'].toString(),
                    style: TextStyle(
                        fontSize:16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.left,
                  ),
                ))),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Movies()));
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
