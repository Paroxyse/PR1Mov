import 'package:flutter/material.dart';

class Cards extends StatefulWidget
{
  @override 
  State<StatefulWidget> createState()
  {
   return ListaCard();
  }
}
  class CustomCard extends State<Cards>
  {
    @override
  Widget build(BuildContext context)
  {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
   elevation: 10,
   margin: EdgeInsets.all(10),
   child: new Column(
     children: [
       Text("bottom text"),
       Image.asset("assets/Edgar.jpg"),
       ListTile(
         title: Text("Edgar el cuervo"),
         leading: Icon(Icons.add_card, color: Colors.black,),
         subtitle: Text("Foto por Tom Swinnen"),
       )
     ],
   )
   //contenido :D 
    );
  }
  }
  Card CustomCard2(String filepath, String title, String subtitle ){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    margin: EdgeInsets.all(5),
    elevation: 10,
    child: new Column(
      children: [
        Image.asset(filepath),
        ListTile(
          title: Text(title),
          leading: Icon(Icons.favorite),
          subtitle: Text(subtitle),
        )

      ],
    ),
  );
  }
class ListaCard extends State<Cards>{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
appBar: AppBar(
  title: Text("Aves bonitas", style: TextStyle(fontSize: 15,fontFamily: "fonts/Funni"),),
),
    body: Container(
      child: new ListView(
        children: <Widget>[
          CustomCard2("assets/Patricio.jpg","Patricio el pato","Pixabay"),
          CustomCard2("assets/Edgar.jpg","Edgar el cuervo","Tom Swinnen"),
          CustomCard2("assets/Pablo.jpg", "Pablo el perico","Frans van Heerden")
        ]
      ),
    ),
    );
  }
}