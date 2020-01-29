import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.red,

      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Example"),
        ),

        body: BodyLayout2(),
      ),
    );
  }
}

class BodyLayout2  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myListView(context);
  }

  Widget myListView(BuildContext context) {
    return Container(

      child: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
                radius: 15,
              ),
              title: Text("Onur Özbay"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),

            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
                radius: 15,
              ),
              title: Text("Ufuk Can Kurt"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),

            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
                radius: 15,
              ),
              title: Text("Faruk Özdemir"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),

            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
                radius: 15,
              ),
              title: Text("Bihter Kuşcu"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ).toList(),
      ),
    );
  }
}