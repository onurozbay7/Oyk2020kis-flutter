import 'package:flutter/material.dart';

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("D Sayfası"),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context,"String ifade");
                  },
                  child: Text("Anasayfaya String veri gönder"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context,100);
                  },
                  child: Text("Anasayfaya int veri gönder"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}