
import 'package:flutter/material.dart';
import 'movies.dart';


class MovieInfo extends StatelessWidget {
  const MovieInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbbdefb),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: Icon(Icons.local_movies),
        title: Text('MOVIE INFO',
          style: TextStyle(
            fontSize: 28,
            color: Color(0xffbbdefb),
          ),

        ), toolbarTextStyle: TextTheme(
        headline6: TextStyle(
          color: Colors.white,
        ),
      ).bodyText2, titleTextStyle: TextTheme(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Filmin fotoğrafı',style: TextStyle(fontSize: 30),)],
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
                      height: 30 ,
                      child:
                      Text('IMDB PUANI : ',),


                    ),
                  )
              ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        height: 30,
                        child: ListView(
                          children: [
                            Text('ACTORS:')
                          ],
                        )

                      ),
                    )
                ),
              ],
             ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Özet kısmı ', style: TextStyle(fontSize: 35),)
              ],

            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(onPressed: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Movies()));
                  //BASINCA NE OLACAĞI BURADAN YAPILACAK
                },
                  label: Icon(Icons.arrow_back),
                  icon: Text(
                      'BACK'
                  ),
                  style:ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      backgroundColor: Colors.black
                  ) ,

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
