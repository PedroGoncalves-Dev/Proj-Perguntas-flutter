import 'package:flutter/material.dart';
import './pergunta.dart';
import 'resposta.dart';
import 'resultado.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  bool perguntasRespondidas = false;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual  sua cor favorita?',
      'resposta': ['Azul', 'Vermelho', 'Amarelo']
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'resposta': ['Cachorro', 'Macaco', 'Gato']
    },
    {
      'texto': 'Qual o seu instrutor favorito',
      'resposta': ['Maria', 'Tamires', 'Pedro']
    }
  ];

  void _responder() {
    setState(() {
      if (_perguntaSelecionada < _perguntas.length - 1) {
        _perguntaSelecionada++;
      } else {
        _perguntaSelecionada = 0;
        perguntasRespondidas = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //estou pegando a chave resposta com o index
    List<String> respostas =
        _perguntas[_perguntaSelecionada]['resposta'] as List<String>;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'App Perguntas',
          ),
        ),
        body: !perguntasRespondidas
            ? Column(
                children: [
                  Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
                  ...respostas
                      .map((e) => Resposta(e, _responder)) //mapeando resposta
                ],
              )
            : Resultado('Fim de jogo!'),
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
