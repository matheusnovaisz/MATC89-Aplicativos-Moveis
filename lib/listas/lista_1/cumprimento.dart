// Arquivo flutter_aulas/lib/cumprimento.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Cumprimento(nome: 'Mundo'));
}

class Cumprimento extends StatelessWidget {
  final String nome;

  const Cumprimento({super.key, this.nome = 'forasteiro'});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Olá, $nome.")],
        ),
      ),
    ));
  }
}
