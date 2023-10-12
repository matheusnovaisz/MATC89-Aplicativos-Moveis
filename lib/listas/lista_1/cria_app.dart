// Arquivo flutter_aulas/lib/aprendendo.dart
import 'package:flutter/material.dart';

void main() {
  runApp(criaApp());
}

Widget criaApp() {
  return MaterialApp(
      title: 'Cria App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Aprendendo Flutter!')],
        )),
      ));
}
