
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
              leading: Image.asset('assets/leon.jpg'),
              title: Text("Leon"),
              trailing: Icon(Icons.movie_filter_outlined,
              size: 55),
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.black, height: 30,),
          ), //aralarına çizgi tanımlamak için
          //Divider widget'ını tanımlıyoruz

          Card(
            margin: EdgeInsets.all(10),
            elevation:20,
            color: Colors.white,
            child: ListTile(
              leading: Image.asset('assets/avatar.jpg'),
              title: Text("Avatar"),

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
              leading: Image.asset('assets/avangers.jpg'),
              title: Text("Avangers"),

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
              leading: Image.asset('assets/harry.jpg'),
              title: Text("Harry Potter"),

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
              leading: Image.asset('assets/arog.jpg'),
              title: Text("Arog"),

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
