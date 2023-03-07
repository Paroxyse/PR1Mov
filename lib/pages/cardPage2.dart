import 'package:flutter/material.dart';
import 'package:pr1/classes/data.dart';

class CardPage2 extends StatelessWidget
{
  late final List<data> _data;
  CardPage2(_data);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aves Dgo"),
      ),
        body: ListView.builder(
            itemCount: _data.length,
            itemBuilder: (context, index)
            {
              final item=_data[index];
              return Padding(
                  padding: EdgeInsets.all(10),
                child: Card(color: Colors.amber[300],
                elevation: 8,
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: 350,
                ),
                ),
              );
            })
    );
  }
}