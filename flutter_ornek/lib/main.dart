import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Ornek Tasarım"),
          backgroundColor: Colors.pink,
        ),
        body: AyEvreleri(),
      ),
    );
  }
}

class AyEvreleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/wallpaper.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              child: Text("Ay'ın Evreleri",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/son_hilal.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/ilk_dort.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/dolunay.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/son_dort.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/hilal.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.network(
                "https://img1.picmix.com/output/stamp/normal/6/4/1/8/968146_8f521.gif"),
          ),
        ],
      ),
    );
  }
}
