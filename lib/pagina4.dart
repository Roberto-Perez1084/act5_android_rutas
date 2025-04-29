import 'package:flutter/material.dart';

//! Align

class FOSC extends StatelessWidget {
  const FOSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa86eca), // Fondo azul
        centerTitle: true, // Texto centrado
        title: const Text('Pantalla 4',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20, // Tamaño 20
            )),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              height: 120.0,
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Atras'),
            ),
          ),
        ],
      ),
    );
  }
}
