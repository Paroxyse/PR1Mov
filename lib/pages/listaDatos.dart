import 'package:flutter/material.dart';
import 'package:pr1/classes/data.dart';
class ListaDatos extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
     title: Text('Datos Aspirantes'),
   ),
   body: ListView.builder(
       itemBuilder: (context,index)
       {
         final item= Lista[index];
         return ListTile(
           title: Text(item.id+" "+item.nombrecom),
           subtitle: Text(item.nombrecien),
         );
       }
   ),
  );
  }
}