import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:
      Colors.blue),
      home: const RootPage(),
    );
  }
}

//Raíz de nuestras páginas
class RootPage extends StatefulWidget { //Widget Inicia Mayúsculas
  const RootPage({super.key});

  @override
  State<RootPage> createState() => 
  _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), //Argumento Inicia Letra minúscula
    );
  }
}