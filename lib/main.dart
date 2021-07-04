import 'package:flutter/material.dart';
import 'package:edmar/components/alternativa.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Práctica para examen';

  static const Color pcolor = Color.fromRGBO(18, 129, 129, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: pcolor,
      ),
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          // child: MyStatefulWidget(),
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  _MyStatelessWidgetState createState() => _MyStatelessWidgetState();
}


List<Object> algo1() {
  return [
    [
      "Respecto de los dispositivos de control o regulación del tránsito",
      "url_imagen",
      1,
      [
        "Solo los peatones están obligados a su obediencia.",
        "Los conductores y los peatones están obligados a su obediencia, salvo instrucción de la Policía Nacional del Perú asignada al tránsito que indique lo contrario.",
        "Solo los conductores están obligados a su obediencia.",
        "Los conductores están obligados a su obediencia, aun cuando la Policía Nacional del Perú asignada al tránsito pueda indicar lo contrario."
      ]
    ],
    [
      "La señal vertical reglamentaria R-6 “prohibido voltear a la izquierda”, significa que:",
      "url_imagen",
      0,
      [
        "Está prohibido voltear a la izquierda y, por lo tanto también está prohibido el giro en U.",
        "Está prohibido voltear a la izquierda, sin embargo, está permitido el giro en U.",
        "El único sentido de desplazamiento es continuar de frente.",
        "Ninguna de las alternativas es correcta."
      ]
    ]
  ];
}

Map<int, Map<String, Map<Object, String>>> algo() {
  return {
    0: {
      "pregunta": {
        "pregunta":
            "Respecto de los dispositivos de control o regulación del tránsito",
        "urlimage": ""
      },
      "alternativa": {
        0: "Solo los peatones están obligados a su obediencia.",
        1: "Los conductores y los peatones están obligados a su obediencia, salvo instrucción de la Policía Nacional del Perú asignada al tránsito que indique lo contrario.",
        2: "Solo los conductores están obligados a su obediencia.",
        3: "Los conductores están obligados a su obediencia, aun cuando la Policía Nacional del Perú asignada al tránsito pueda indicar lo contrario."
      }
    }
  };
}

String letra(int numero) {
  var abc = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ];
  return abc[numero];
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        // children: [Alternativa(letra(0), algo()[0]["alternativa"][0]],
        children: [
          Alternativa("a", "Solo los peatones están obligados a su obediencia."),
          Alternativa("b", "Solo los peatones están obligados a su obediencia."),
          Alternativa("c", "Solo los peatones están obligados a su obediencia."),
          Alternativa("d", "Solo los peatones están obligados a su obediencia.")
        ],
        );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double sideLength = 50;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: sideLength,
      width: sideLength,
      duration: const Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Material(
        color: Colors.yellow,
        child: InkWell(
          onTap: () {
            setState(() {
              sideLength == 50 ? sideLength = 100 : sideLength = 50;
            });
          },
        ),
      ),
    );
  }
}
