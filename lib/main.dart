import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito',
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('AppBar'),
            ),
            body: Column(
              children: [
                Text(perguntas[0]),
                ElevatedButton(onPressed: null, child: Text('Click aqui')),
                TextButton(onPressed: null, child: Text('TextButton')),
                OutlinedButton(onPressed: null, child: Text('outlined Button'))
              ],
            )));
  }
}
