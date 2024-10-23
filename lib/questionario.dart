import 'package:flutter/material.dart';
import 'pergunta.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.responder});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        perguntas[perguntaSelecionada]['resposta'] as List<Map<String, Object>>;

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map(
          (e) => Resposta(e['texto'].toString(),
              () => responder(int.parse(e['pontuacao'].toString()))),
        ) //mapeando resposta
      ],
    );
  }
}
