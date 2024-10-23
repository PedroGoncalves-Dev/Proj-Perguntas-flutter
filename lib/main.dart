import 'package:flutter/material.dart';
import 'questionario.dart';
import 'resultado.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;
  bool perguntasRespondidas = false;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual  sua cor favorita?',
      'resposta': [
        {'texto': 'Azul', 'pontuacao': 29},
        {'texto': 'Vermelho', 'pontuacao': 10},
        {'texto': 'Amarelo', 'pontuacao': 5}
      ]
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'resposta': [
        {'texto': 'Cachorro', 'pontuacao': 20},
        {'texto': 'Macaco', 'pontuacao': 10},
        {'texto': 'Gato', 'pontuacao': 5}
      ]
    },
    {
      'texto': 'Qual o seu instrutor favorito',
      'resposta': [
        {'texto': 'Maria', 'pontuacao': 20},
        {'texto': 'Tamires', 'pontuacao': 10},
        {'texto': 'Pedro', 'pontuacao': 5}
      ]
    }
  ];

  void _responder(int pontuacao) {
    setState(() {
      if (_perguntaSelecionada < _perguntas.length - 1) {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      } else {
        _perguntaSelecionada = 0;
        perguntasRespondidas = true;
      }
    });
  }

  void _reiniciarPerguntas() {
    setState(() {
      perguntasRespondidas = false;
      _pontuacaoTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //estou pegando a chave resposta com o index

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'App Perguntas',
          ),
        ),
        body: !perguntasRespondidas
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder)
            : Resultado(_pontuacaoTotal, _reiniciarPerguntas),
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
