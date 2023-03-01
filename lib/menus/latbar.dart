import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr1/pages/HomePage.dart';
import 'package:pr1/pages/card.dart';
import 'package:pr1/pages/mapPage.dart';
class latbar extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return  Drawer(
      child: ListView(
        children: [
         const DrawerHeader(

          decoration: BoxDecoration(
            color:Colors.grey,
            image: DecorationImage(
              image: AssetImage("assets/Edgar.jpg"),
              fit:BoxFit.fitHeight
            )
          ),
           child: Text(""),
          ),
          Ink(
            color: Colors.redAccent,
            child: const ListTile(
               title: Text(
                "Aves Endémicas de Durango",
                style:TextStyle(color: Colors.white) ,),
            ),
          ),
           ListTile(
            title: const Text("Inicio", style: TextStyle(color: Colors.black),),
            leading: const Icon(Icons.home,color: Colors.black,),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)
                  {
                    return HomePage();
                  }));
            }),
           ListTile(
              title: const Text("Fotos", style: TextStyle(color: Colors.black),),
              leading: const Icon(Icons.photo_album_sharp,color: Colors.black,),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)
                    {
                      return Cards();
                    }));
              }),
          ListTile(
              title: const Text("Mapa", style: TextStyle(color: Colors.black),),
              leading: const Icon(Icons.map,color: Colors.black,),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)
                    {
                      return mapPage();
                    }));
              })
        ],
      )
    );
  }
}