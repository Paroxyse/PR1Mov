import 'package:pr1/pages/card.dart';
import 'package:pr1/pages/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:pr1/pages/HomePage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ui'",
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.amber,
            fontFamily: "Funni" ,
          textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 20.0),
              headline6: TextStyle(fontSize: 25.0, fontStyle: FontStyle.normal, color: Colors.white),
              bodyText1: TextStyle(fontSize: 25.0, color: Colors.black)
          ),

        ),
        home: SplashScreen()
    );
  }
}
/*class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("La criatura"),
          actions: [
            IconButton(onPressed: null, icon: Icon(Icons.info, color: Colors.white),
              tooltip: "Información",
            )
          ],

        ),
      body: Center(
        child: Text("Aves de Durango"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => Cards()),);
        },
        tooltip: "Siguiente",
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}*/