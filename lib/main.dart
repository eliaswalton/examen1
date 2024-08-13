import 'package:examen_1/Screens/CambioMoneda.dart';
import 'package:examen_1/Screens/MenuPrincipal.dart';
import 'package:examen_1/Screens/Noticias.dart';
import 'package:examen_1/Screens/Podcast.dart';
import 'package:examen_1/Screens/Tareas.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CEUTEC App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuPrincipal(),
        '/noticias': (context) => const Noticias(),
        '/tareas': (context) => const ListaTareas(),
        '/moneda': (context) => const CambioMoneda(),
        '/podcast': (context) => const Podcast()
        
      },
    );
  }
}

