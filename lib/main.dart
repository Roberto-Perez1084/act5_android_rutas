import 'package:flutter/material.dart';
import 'package:perezrutas/pagina1.dart';
import 'package:perezrutas/pagina2.dart';
import 'package:perezrutas/pagina3.dart';
import 'package:perezrutas/pagina4.dart';
import 'package:perezrutas/pagina5.dart';
import 'package:perezrutas/pagina6.dart';
import 'package:perezrutas/pagina7.dart';
import 'package:perezrutas/pagina8.dart';
import 'package:perezrutas/pagina9.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta el banner de debug
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const FSC(),
        '/pantalla2': (context) => const SSC(),
        '/pantalla3': (context) => const TSC(),
        '/pantalla4': (context) => const FOSC(),
        '/pantalla5': (context) => const FISC(),
        '/pantalla6': (context) => const SISC(),
        '/pantalla7': (context) => const SESC(),
        '/pantalla8': (context) => const ESC(),
        '/pantalla9': (context) => const NSC(),
      },
    );
  }
}
