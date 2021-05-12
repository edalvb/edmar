import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edmar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Balotario de preguntas"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        children: [
          pregunta("1", "Soy una pregunta preguntona"),
          card("Una pregunta"),
          card("Dos preguntas"),
          card("Tres preguntas"),
          card("Cuatro preguntas"),
        ],
      ),
    );
  }
}

Widget pregunta(String numero, String pregunta) {
  return Row(
    children: [
      Text(numero + "."),
      Text(pregunta),
    ],
  );
}

Widget card(String texto) {
  return Center(
    child: Card(
      child: InkWell(
        splashColor: Colors.yellow,
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          width: double.infinity,
          height: 100,
          padding: EdgeInsets.all(10),
          child: Text(texto),
        ),
      ),
    ),
  );
}