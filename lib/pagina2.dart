import 'package:flutter/material.dart';

class SSC extends StatelessWidget {
  const SSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa86eca), // Fondo azul
        centerTitle: true, // Texto centrado
        title: const Text('Pantalla 2',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20, // Tamaño 20
            )),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            width: double.infinity,
            height: 300,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.blueGrey,
              ),
            ),
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
