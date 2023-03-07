import 'package:flutter/material.dart';
import 'package:pr1/classes/data.dart';
class ListaDatos extends StatelessWidget
{
  late final List<data> lista;
  ListaDatos(this.lista);
  @override
  Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
     title: Text('Datos Aspirantes'),
   ),
   body: ListView.builder(
      itemCount: lista.length,
       itemBuilder: (context,index)
       {
         final item= lista[index];
         return ListTile(
           title: Text(item.id+" "+item.nombrecom),
           subtitle: Text(item.nombrecien),
           leading: const Image(
             image: NetworkImage("https://picsum.photos/700/400?random"),
             fit: BoxFit.fitHeight,
             width: 100,
           ),
         );
       }
   ),
  );
  }
}