import 'package:flutter/material.dart';
import 'dart:math'; //passo 13: adicionar a library

void main() => runApp(
      MaterialApp(
        home: BallPage(), //passo 2: substituir null pelo nome da classe
      ),
    );
// Passo 1 Criar o sttless e da rnome a classe

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //passo 3, criar o scaffold, a appbar e o body
      appBar: AppBar(
        //passo 4: dar titulo, cor e texto a appbar
        title: Center(
          child: Text('Ask Me Anything'),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(), // passo5: dar um container para o body
      //passo 7: substituir o Container pelo nome da classe sttful
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  // passo6: criar o sttful e dar uma classe
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1; //passo 10: criar uma var

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        //passo 9: adicionar um botão
        onPressed: () {
          //passo 11: fazer com que o botao mude quando for apertado
          setState(() {
            ballNumber = Random().nextInt(5) +
                1; //passo 14: fazer a imagem atualizar sozinha
            print('$ballNumber');
          });
        },
        child: Image.asset(
            'images/ball$ballNumber.png'), // passo 8: display uma imagem
        // passo 12: substituir
      ),
    );
  }
}
