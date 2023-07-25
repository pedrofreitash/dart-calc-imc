import 'dart:convert';
import 'dart:io';

import 'model/pessoa.dart';

void main() {
  print('Digite seu nome: ');
  String nome = stdin.readLineSync(encoding: utf8) as String;
  print('Digite sua altura(m): ');
  var altura = stdin.readLineSync();
  print('Digite sua peso(kg): ');
  var peso = stdin.readLineSync();

  double alturaConvertida = double.parse(altura!);
  double pesoConvertido = double.parse(peso!);

  var user = Pessoa(nome, alturaConvertida, pesoConvertido);

  double imc = user.calc(user.getAltura(), user.getPeso());
  String classificacaoIMC = user.classificaIMC(imc);

  print(
      '${user.getNome()}, seu IMC é de $imc, com a classificação $classificacaoIMC');
}
