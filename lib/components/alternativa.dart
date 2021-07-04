import 'package:flutter/material.dart';

class Alternativa extends StatefulWidget {
  Alternativa(this.letra, this.pregunta, {Key? key}) : super(key: key);
  String letra, pregunta;

  @override
  _AlternativaState createState() => _AlternativaState(letra, pregunta);
}

class _AlternativaState extends State<Alternativa> {
  _AlternativaState(this.letra, this.pregunta);

  String letra, pregunta;

  double elevation = 3;
  Color scolor = Colors.black;
  double border = 4.0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(border)),
      child: InkWell(
        borderRadius: BorderRadius.circular(border),
        highlightColor:
            Color.fromRGBO(scolor.red, scolor.green, scolor.blue, .3),
        child: GestureDetector(
          child: ListTile(
            leading: Text(
              this.letra,
              style: TextStyle(fontSize: 16),
            ),
            title: Text(
              this.pregunta,
              // style: TextStyle(fontSize: 16),
            ),
          ),
          onTapUp: (TapUpDetails) {
            setState(() {
              elevation = 3;
              scolor = Colors.black;
            });
          },
          onTapDown: (TapDownDetails) {
            setState(() {
              elevation = 1;
              scolor = Color.fromRGBO(18, 129, 129, 1);
            });
          },
        ),
        onTap: () {},
      ),
    );
  }
}
