import 'package:flutter/material.dart';

//!AnimatedPadding

class SISC extends StatefulWidget {
  const SISC({Key? key}) : super(key: key);

  @override
  State<SISC> createState() => _SISCState();
}

class _SISCState extends State<SISC> {
  double padValue = 0.0;

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
            child: const Text('Change padding'),
            onPressed: () {
              setState(() {
                padValue = padValue == 0.0 ? 100.0 : 0.0;
              });
            },
          ),
          Text('Padding = $padValue'),
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.orangeAccent,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll<Color>(Colors.orangeAccent),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Atras'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
