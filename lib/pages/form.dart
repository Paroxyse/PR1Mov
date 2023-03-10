import 'package:flutter/material.dart';
import 'package:pr1/classes/data.dart';
import 'package:pr1/pages/cardPage2.dart';
import 'package:flutter/services.dart';
import 'package:pr1/pages/listaDatos.dart';
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
  final _NumController = TextEditingController();
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
                  labelText: "Nombre común",
                    icon: Icon(Icons.nature)
                ),
              ),
              Padding(padding: EdgeInsets.all(20.00),),
              TextField(
                controller: _Text2Controller,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nombre científico",
                  icon: Icon(Icons.science)
            )
            ),
              Padding(padding: EdgeInsets.all(20.00),),
              TextField(
                  controller: _NumController,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                      labelText: "Identificador",
                      hintText: "Ingresa un ID, solo se permiten numeros",
                      icon: Icon(Icons.numbers)
                  )
              ),
              Padding(padding: EdgeInsets.all(20.00),),
              ElevatedButton(onPressed: (){
                bool b1=validarNombre(_Text1Controller.text);
                bool b2=validarNombreCien(_Text2Controller.text);
                bool b3=validarNum(_NumController.text);
                if(b1 && b2 && b3)
                {
                  _data.add( data(_NumController.text,_Text1Controller.text, _Text2Controller.text));
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)
                      {
                        return ListaDatos(_data);
                      }
                      )
                  );
                }else
                {
                  String errorMessage="";
                  if(!b1)
                  {
                    errorMessage+="-El campo de nombre común es obligatorio y solamente permite letras del alfabeto latino (Diacríticos de español) y espacios\n";
                  }
                  if(!b2)
                  {
                    errorMessage+="-El campo de nombre científico es obligatorio, solamente permite letras del alfabeto latino, empieza y termina con paréntesis (Diacríticos de español) y espacios\n";
                  }
                  if(!b3)
                  {
                    errorMessage+="-El campo de Identificador es obligatorio, de mínimo 3 caracteres y solamente permite números enteros\n";
                  }
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Datos erroneos ingresados", style: TextStyle(color: Colors.red, fontSize: 20),),
                      content: Text(errorMessage),
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
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          _data.add( data(_NumController.text.toString(),_Text1Controller.text.toString(), _Text2Controller.text.toString()));
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)
              {
                return CardPage2(_data);
              }
              )
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }

}
bool validarNombre(String cadena)
{
  RegExp exp =  RegExp(r'^[a-zA-ZÁÉÍÓÚÜ]+[a-zA-ZáéíóúüÁÉÍÓÚÜ ]*$');
  return exp.hasMatch(cadena);
}
bool validarNombreCien(String cadena)
{
  RegExp exp =  RegExp(r'^[(][a-zA-ZáéíóúüÁÉÍÓÚÜ]+[a-zA-ZáéíóúüÁÉÍÓÚÜ ]*[)]$');
  return exp.hasMatch(cadena);
}
bool validarNum(String cadena)
{
  if(cadena.length<3){
    return false;
  }
  //Esto es código muerto 8)
  RegExp exp =  RegExp(r'[0-9]');
  return exp.hasMatch(cadena);
}

