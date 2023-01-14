
import 'package:flutter/material.dart';

class TopTen extends StatefulWidget {
  const TopTen({Key? key}) : super(key: key);

  @override
  State<TopTen> createState() => _TopTenState();
}

class _TopTenState extends State<TopTen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('Top 5 Movies')

      ),
      body: ListView(

        children: <Widget>[

          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.black, height: 30,),
          ),

          Card(
            margin: EdgeInsets.all(10),
            elevation:20,
            color: Colors.white,
            child: ListTile(
              leading: Image.asset('assets/esaret.jpg'),
              title: Text("The Shawshank Redemption \n IMDB:9.2"),
              trailing: Icon(Icons.movie_filter_outlined,
              size: 45),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.black, height: 30,),
          ),

          Card(
            margin: EdgeInsets.all(10),
            elevation:20,
            color: Colors.white,
            child: ListTile(
              leading: Image.asset('assets/thegodfather.jpg'),
              title: Text("The Godfather \n IMDB:9.2"),

              trailing: Icon(Icons.movie_filter_outlined,size: 55),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.black, height: 30,),
          ),

          Card(
            margin: EdgeInsets.all(10),
            elevation:20,
            color: Colors.white,
            child: ListTile(
              leading: Image.asset('assets/dark.jpg'),
              title: Text("The Dark Knight \n IMDB:9.0"),

              trailing: Icon(Icons.movie_filter_outlined,size: 55),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.black, height: 30,),
          ),
          Card(
            margin: EdgeInsets.all(10),
            elevation:20,
            color: Colors.white,
            child: ListTile(
              leading: Image.asset('assets/thegodfather2.jpg'),
              title: Text("The Godfather 2 \n IMDB:9.0"),

              trailing: Icon(Icons.movie_filter_outlined,size: 55),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.black, height: 30,),
          ),
          Card(
            margin: EdgeInsets.all(10),
            elevation:20,
            color: Colors.white,
            child: ListTile(
              leading: Image.asset('assets/12adam.jpg'),
              title: Text("12 Angry Men \n IMDB:9.0"),

              trailing: Icon(Icons.movie_filter_outlined,size: 55),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.black, height: 30,),
          ),

        ],
      )



    );
  }
}
