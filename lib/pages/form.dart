import 'package:flutter/material.dart';
import 'package:pr1/classes/data.dart';
import 'package:pr1/pages/card.dart';
class form extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return myForm();

  }
}
class myForm extends State<form>
{
  final _Text1Controller = TextEditingController();
  final _Text2Controller = TextEditingController();
  List<data> _data=[];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro de dinosaurios"),
        ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20.00),),
              TextField(
                controller: _Text1Controller,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nombre común"
                ),
              ),
              Padding(padding: EdgeInsets.all(20.00),),
              TextField(
                controller: _Text2Controller,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nombre ciencioso"
            )
            ),
              Padding(padding: EdgeInsets.all(20.00),),
              ElevatedButton(onPressed: (){
                if(validarNombre(_Text1Controller.text) && validarNombre(_Text2Controller.text))
                {
                  _data.add(new data(_Text1Controller.text, _Text2Controller.text));
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)
                      {
                        return CustomCard2("assets/Pablo.jpg", _Text1Controller.text, _Text2Controller.text);
                      }
                      )
                  );
                }else
                {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Ponga solamente letras mi loco', style: TextStyle(color: Colors.black),),
                      content: Text(_Text1Controller.text+"\n"+_Text2Controller.text),
                      actions: <Widget>[
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Regresar'))
                      ],
                    ),
                  );
                }


              }, child: Text("Enviar", style: TextStyle(fontSize: 20),))
            ],
          ),
        ),
      ),
    );
  }

}
bool validarNombre(String cadena)
{
  RegExp exp =  RegExp(r'^[a-zA-Z]+[a-zA-Z]*$');
  return exp.hasMatch(cadena);
}
