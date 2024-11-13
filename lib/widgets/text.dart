import 'package:curso/models/texto.dart';
import 'package:flutter/material.dart';

class TextoPersonalizado extends StatefulWidget {
  const TextoPersonalizado({
    super.key,
    required int counter,
  }) : _counter = counter;

  final int _counter;

  @override
  State<TextoPersonalizado> createState() => _TextoPersonalizadoState();
}

class _TextoPersonalizadoState extends State<TextoPersonalizado> {
  late List<MeuTexto> texts;

  @override
  void initState() {
    super.initState();
    texts = [
      MeuTexto(
          titulo: 'You have pushed the button this many times:',
          descricao: '${widget._counter}'),
      MeuTexto(
          titulo: 'You have pushed the button this many times:',
          descricao: '${widget._counter}')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                texts[index].titulo,
              ),
              Text(
                texts[index].descricao,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          );
        }
      ),
    );
  }
}
