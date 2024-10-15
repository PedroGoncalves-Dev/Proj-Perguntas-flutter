import 'package:flutter/material.dart';
import './pergunta.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      if (_perguntaSelecionada < perguntas.length - 1) {
        _perguntaSelecionada++;
      } else {
        _perguntaSelecionada = 0;
      }
    });
    print(_perguntaSelecionada);
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
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              onPressed: _responder,
              child: const Text(
                'Click aqui',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: _responder,
              child: const Text('TextButton'),
            ),
            OutlinedButton(
              onPressed: _responder,
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
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
