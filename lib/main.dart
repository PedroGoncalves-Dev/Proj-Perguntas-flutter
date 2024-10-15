import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      if (perguntaSelecionada < perguntas.length - 1) {
        perguntaSelecionada++;
      }
    });
    print(perguntaSelecionada);
  }

  final perguntas = [
    'Qual sua cor favorita?',
    'Qual seu animal favorito?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Click aqui'),
            ),
            TextButton(
              onPressed: responder,
              child: const Text('TextButton'),
            ),
            OutlinedButton(
              onPressed: responder,
              child: const Text('Outlined Button'),
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
