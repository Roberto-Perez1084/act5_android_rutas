import 'package:flutter/material.dart';

//! AnimatedDefaultTextStyle

class FISC extends StatefulWidget {
  const FISC({Key? key}) : super(key: key);

  @override
  State<FISC> createState() => _FISCState();
}

class _FISCState extends State<FISC> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa86eca), // Fondo azul
        centerTitle: true, // Texto centrado
        title: const Text('Pantalla 3',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20, // Tamaño 20
            )),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              child: const Text('Flutter'),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _fontSize = _first ? 90 : 60;
                _color = _first ? Colors.blue : Colors.red;
                _first = !_first;
              });
            },
            child: const Text(
              "Switch",
            ),
          )
        ],
      ),
    );
  }
}
