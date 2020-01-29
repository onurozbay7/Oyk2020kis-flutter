import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.green

      ),
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        appBar: AppBar(
          title: Text("Image Turleri"),
          backgroundColor: Colors.red,

        ),
        body: ImageTurleri(


        ),
      ),
    );
  }

}

class ImageTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("resimler/wallpaper.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,

      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child:  Container(
                  child:  Image.asset("resimler/barney.jpg"),
                ),
              ),

              Expanded(
                child:  Container(
                  child:  Image.asset("resimler/cat.jpeg"),
                ),
              ),

              Expanded(
                child:  Container(
                  child:  Image.network("https://vignette.wikia.nocookie.net/lotr/images/f/f5/Eye_of_sauron.jpg/revision/latest?cb=20100402161911"),
                ),
              ),

              Expanded(
                child:  Container(
                  child:  Image.asset("resimler/himym.jpg"),
                ),
              ),


            ],

          ),

          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage("https://i4.hurimg.com/i/hurriyet/75/750x422/5aa7cdce7af5071efc764ed4.jpg"),
                  ),

                ),
              ),

              Expanded(
                child: Container(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("resimler/himym.jpg"),
                  ),

                ),
              ),
            ],
          ),

          
        ],
      ),
    );
  }

}