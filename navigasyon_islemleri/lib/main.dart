import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navigasyon_islemleri/besinci_sayfa.dart';
import 'package:navigasyon_islemleri/dorduncu_sayfa.dart';
import 'package:navigasyon_islemleri/ikinci_sayfa.dart';
import 'package:navigasyon_islemleri/ucuncu_sayfa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigasyon İşlemleri"),
          backgroundColor: Colors.green,

        ),

        body: NavigasyonIslemleri(),
      ),
    );
  }
}

class NavigasyonIslemleri extends StatelessWidget {
  bool gelenVeri;

  String gonderilenYazi="Navigasyon İşlemleri Sayfasından Geldiniz.";
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ASayfasi()));
            },
            child: Text("A sayfasına git"),
            color: Colors.red,

          ),

          RaisedButton(
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => BSayfasi(gonderilenYazi)
              ));
            },
            child: Text("B sayfasına veri gönder"),
            color: Colors.purpleAccent,

          ),

          RaisedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => CSayfasi())
              ).then((gelenDeger) {
                debugPrint("Gelen veri $gelenDeger");
               gelenVeri = gelenDeger;
              }
              );
            },
            child: Text("C sayfasına git ve veri getir"),
            color: Colors.blue,



          ),

          RaisedButton(
            onPressed: () async {
              String value = await Navigator.push(context,
                  new MaterialPageRoute<String>(builder: (BuildContext context){
                    return Center(
                      child: GestureDetector(
                          child: Container(
                            color: Colors.greenAccent,
                            child: Text("Ekran silindi, geri dönmek için tıklayınız",
                              style: TextStyle(fontSize: 20,),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onTap:  () { Navigator.pop(context, "Anasayfaya dönüldü"); }
                      ),
                    );
                  }
                  ));
            },
            child: Text("Ekranı değiştirip geri dön"),
            color: Colors.pink,

          ),

          RaisedButton(
            onPressed: (){
              _navigateAndDisplaySelection(context);
            },
            child: Text("D sayfasına git, veri tipi getir ve göster"),
            color: Colors.yellowAccent,

          ),

        ],
      ),
    );
  }
}

void _navigateAndDisplaySelection(BuildContext context) async {

  final result = await Navigator.push(context,
      MaterialPageRoute(builder: (context) => DSayfasi()),
  );

  Scaffold.of(context)
  ..removeCurrentSnackBar()
  ..showSnackBar(SnackBar(
    duration: Duration(seconds: 15),
    content: Text("Gelen veri $result"),
  ));
}

