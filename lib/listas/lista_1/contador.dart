// Arquivo flutter_aulas/lib/contasnack.dart
import 'package:flutter/material.dart';

/// Código para o exercício [Contador]

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text('Contador'),
//       ),
//       body: const Contador(),
//     ),
//   ));
// }

class Contador extends StatelessWidget {
  const Contador({super.key});

  static int _counter = 0;

  void updateCounter(BuildContext context, int addition) {
    _counter += addition;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Contador: $_counter"),
      duration: const Duration(milliseconds: 500),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () => updateCounter(context, 1),
              child: const Text("+1"),
            ),
            FloatingActionButton(
              onPressed: () => updateCounter(context, 5),
              child: const Text("+5"),
            ),
            FloatingActionButton(
              onPressed: () => updateCounter(context, 25),
              child: const Text("+25"),
            ),
          ],
        ),
      ),
    );
  }
}
