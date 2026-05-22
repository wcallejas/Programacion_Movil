import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppOne());
}

class MyAppOne extends StatelessWidget {
  const MyAppOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarjeta de presentación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),    
      );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portafolio'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.red],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              )
          ),
        ),
        
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Wilmer Callejas',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Desarrollador UNICIENCIA',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildContactButton(Icons.phone, 'Whatsapp'),
                  _buildContactButton(Icons.email, 'Email'),
                  _buildContactButton(Icons.share, 'Redes Sociales'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Widget auxiliar para los botones de contacto (StateLess)
  Widget _buildContactButton(IconData icon, String label){
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.blue),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
