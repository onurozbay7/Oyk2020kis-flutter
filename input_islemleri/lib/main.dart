import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return InputIslemleri();
  }
}

class InputIslemleri extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Input Islemleri"),
          backgroundColor: Colors.pinkAccent,
        ),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text("Kullanıcıdan veri alma islemleri"),
                TextField(
                  keyboardType: TextInputType.number,
                  maxLines: 2,
                  maxLength: 11,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.airplanemode_active),
                    hintText: "Telefon Numarası",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}

