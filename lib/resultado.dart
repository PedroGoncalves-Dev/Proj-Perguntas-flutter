import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;

  Resultado(this.texto);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      child: Text(
        texto,
        style: const TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
