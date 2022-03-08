import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    title: 'Frases do dia',
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Levanta, sacode a poeira, dá a volta por cima!",
    "Nem todos os dias são bons, mas há algo bom em cada dia.",
    "Respeite sua mente e trate seu corpo com carinho.",
    "Um passo de cada vez. Até meio passo serve. Siga firme, não há motivo para ter pressa.",
    "Suba o primeiro degrau com fé. Não é necessário que você veja toda a escada, apenas dê o primeiro passo.",
    "Toda manhã você tem duas escolhas: continuar dormindo com seus sonhos ou acordar e persegui-los!",
    "A sua irritação não solucionará problema algum. O seu mau humor não modifica a vida. Não estrague o seu dia.",
    "Vamos inventar o amanhã no lugar de se preocupar com o que aconteceu ontem.",
    "As pessoas mais felizes não têm as melhores coisas. Elas sabem fazer o melhor das oportunidades que aparecem em seus caminhos.",
    "Ninguém, além de você, está no controle de sua felicidade. Portanto, ajuste as velas e corrija e rumo.",
    "Acredite em milagres, mas não dependa deles.",
    "Cada dia é uma chance para ser melhor que ontem.",
    "Já sorriu para alguém hoje?",
    "Se chovesse felicidade, te desejaria uma tempestade!",
    "Que o verão no seu sorriso nunca acabe.",
    "Queira o bem, plante o bem e o resto vem.",
    "Tranquilidade na alma, porque dessa vida a gente não leva nada.",

  ];
  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase(){
    //numeros randomicos, pegar o numero do Array, o numero da frase
    //Importa o Math e faz gerar um numero inteiro com o maximo de frase.
    //.length ve o maximo do tamanho do array.
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
       _fraseGerada = _frases[numeroSorteado];
    });
   
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do dia',
        style: TextStyle(
            fontWeight: FontWeight.bold,
          fontSize: 25
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        
      ),
      body: Container(
        width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              ElevatedButton(
                onPressed: () => {
                  _gerarFrase()
                },
                child: Text('Nova frase',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              )
            ],
          )),
    );
  }
}
