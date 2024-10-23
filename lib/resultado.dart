import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  int pontuacaoFinal;
  final void Function() perguntasRespondidas;

  Resultado(this.pontuacaoFinal, this.perguntasRespondidas);

  String get fraseResultado {
    if (pontuacaoFinal < 10) {
      return 'Você é bom';
    } else if (pontuacaoFinal < 15) {
      return 'Você é muito bom';
    } else if (pontuacaoFinal < 20) {
      return 'voce é top';
    } else {
      return 'Você é jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(
        fraseResultado,
        style: const TextStyle(fontSize: 20),
      ),
      Text(
        pontuacaoFinal.toString(),
        style: const TextStyle(fontSize: 30),
      ),
      ElevatedButton(
          onPressed: perguntasRespondidas,
          child: const Text('Reiniciar perguntas!'))
    ]));
  }
}
