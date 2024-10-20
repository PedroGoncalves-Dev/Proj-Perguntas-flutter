import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelection;

  Resposta(this.texto, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelection,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white54),
        child: Text(texto,
            style: const TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 0, 0, 0))),
      ),
    );
  }
}
