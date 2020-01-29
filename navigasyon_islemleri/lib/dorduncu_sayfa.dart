import 'package:flutter/material.dart';

class CSayfasi extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return WillPopScope(

      child: Scaffold(
        appBar: AppBar(
          title: Text("C Sayfasi"),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Text("C sayfasına hoş geldiniz."),

              RaisedButton(
                onPressed: (){
               bool  gelenDeger = Navigator.pop<bool>(context,true);
                },
                child: Text(
                    "Anasayfaya dön ve veri gönder"
                ),
                color: Colors.yellowAccent,

              )
            ],
          ),
        ),
      ),

    );
  }



}