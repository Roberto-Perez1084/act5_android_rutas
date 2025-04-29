import 'package:flutter/material.dart';

class TSC extends StatefulWidget {
  const TSC({Key? key}) : super(key: key);

  @override
  State<TSC> createState() => _TSCState();
}

class _TSCState extends State<TSC> {
  int _counter = 0;
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
        children: <Widget>[
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _counter += 1;
                });
              },
              child: Container(
                height: 200,
                width: 200,
                color: Color(0xffffcaf3),
                child: Center(
                  child: Text(
                    _counter.toString(),
                    style: const TextStyle(
                      fontSize: 50,
                    ),
                  ),
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
