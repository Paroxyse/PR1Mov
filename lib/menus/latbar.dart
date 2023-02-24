import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr1/pages/HomePage.dart';

class latbar extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Text(""),
          decoration: BoxDecoration(
            color:Colors.grey,
            image: DecorationImage(
              image: AssetImage("assets/Edgar.jpg"),
              fit:BoxFit.fitHeight
            )
          )
          ),
          Ink(
            color: Colors.redAccent,
            child:  new ListTile(
              title: Text(
                "Aves Endémicas de Durango",
                style:TextStyle(color: Colors.white) ,),
            ),
          ),
          new ListTile(
            title: Text("Inicio", style: TextStyle(color: Colors.black),),
            leading: Icon(Icons.home,color: Colors.black,),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)
                  {
                    return HomePage();
                  }));
            })
        ],
      )
    );
  }
}