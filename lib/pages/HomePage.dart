import 'package:flutter/material.dart';
import 'package:pr1/menus/latbar.dart';
import 'package:pr1/pages/card.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.amber,
        title: const Text("ui'"),
        centerTitle: true,
        elevation: 25.5,
        actions: [
          IconButton(onPressed: ()
          {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Transformación Digital de las Organizaciones', style: TextStyle(color: Colors.black),),
                content: const Text('Daniel Alejandro Montoya Soto, ISC\nDesarrollo de Soluciones móviles grupo 8AY 19041228\n'
                    'Docente: Norma Alicia García Vidaña'),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Regresar'))
                ],
              ),
            );
          }, icon: const Icon(Icons.info, color: Colors.white),
            tooltip: "Información",

          )
        ],
      ),
      drawer: latbar(),
      body: Center(
        child: WebView(),
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
}

class WebView extends StatefulWidget{
  const WebView({super.key});
  @override
  State<StatefulWidget> createState() {

    return _WebViewExampleState();
  }
}

class _WebViewExampleState extends State<WebView>{
  late final WebViewController controller;
  @override
  void initState()
  {
    super.initState();
    controller=WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://www.google.com'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller,),
    );
  }
}
