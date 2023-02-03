import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState((){_perguntaSelecionada++;});
    print("pergunta respondida");
  }

  @override
  Widget build(BuildContext context){
    final perguntas = [
      "Qual o nome da sua esposa?",
      "Qual o nome da sua filha?",
      "Qual o nome do seu pai?",
      "Qual o nome do seu irmão?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('primeiro app flutter'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              child: Text("Resposta 1"),
              onPressed: _responder
            ),
            ElevatedButton(
              child: Text("Resposta 4"),
              onPressed: _responder
            ),
            ElevatedButton(
              child: Text("Resposta 3"),
              onPressed: _responder
            )
          ],
        )
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  _PerguntaAppState createState() {
   return _PerguntaAppState();
  }
  
}