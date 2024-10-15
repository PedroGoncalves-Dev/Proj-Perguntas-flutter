import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  responder() {
    print('Resposta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito',
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('AppBar'),
            ),
            body: Column(
              children: [
                Text(perguntas[0]),
                ElevatedButton(
                    onPressed: () => responder(),
                    child: const Text('Click aqui')),
                TextButton(
                    onPressed: () => responder(),
                    child: const Text('TextButton')),
                OutlinedButton(
                    onPressed: () => responder(),
                    child: const Text('outlined Button'))
              ],
            )));
  }
}
