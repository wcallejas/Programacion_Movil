import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPage());
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootpageState();
}

class _RootpageState extends State<RootPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola Mundo"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Click Desde Flutter");
          },
          child: const Icon(Icons.add),
        ),
    );
    
  }
}
