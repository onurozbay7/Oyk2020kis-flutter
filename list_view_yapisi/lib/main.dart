import 'package:flutter/material.dart';
import 'package:list_view_yapisi/list_view_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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

        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myListView(context);
  }


  /* Widget myListView(BuildContext context){
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
} */


  Widget myListView(BuildContext context) {

    return Column(
      children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(10),
                elevation: 20,
                color: Colors.blue,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                    radius: 15,
                  ),
                  title: Text("Onur Özbay"),
                  subtitle: Text("Pamukkale Üniversitesi"),
                  trailing: Icon(Icons.call),
                ),
              ),


              Card(
                margin: EdgeInsets.all(10),
                elevation: 20,
                color: Colors.blue,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                    radius: 15,
                  ),
                  title: Text("Faruk Özdemir"),
                  subtitle: Text("Pamukkale Üniversitesi"),
                  trailing: Icon(Icons.call),
                ),
              ),


              Card(
                margin: EdgeInsets.all(10),
                elevation: 20,
                color: Colors.blue,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                    radius: 15,
                  ),
                  title: Text("Ufuk Can Kurt"),
                  subtitle: Text("Pamukkale Üniversitesi"),
                  trailing: Icon(Icons.call),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text("Diğer List View yapısını göster."),
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => ListView2()));
                  },
                ),
              ),
            ],
          ),

        ),
      ],
    );
  }

}