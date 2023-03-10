import 'package:flutter/material.dart';
import 'package:pr1/classes/data.dart';

class CardPage2 extends StatelessWidget
{
  late List<data> _data;
  CardPage2(this._data);

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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage('https://picsum.photos/700/400?random'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    bottom: 0,
                                    top:8),
                                width: 150,
                                color: Colors.amberAccent,
                                height: 2,
                              ),
                              SizedBox(height: 4),
                              Text(item.id),
                              Text(item.nombrecom),
                              Text(item.nombrecien),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                ),
              );
            })
    );
  }
}