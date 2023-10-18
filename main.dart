import 'dart:convert';
import 'dart:io';
import 'pessoa.dart';

void main() {
  print("Digite nome");
  var line = stdin.readLineSync();
  String nome = line ?? "";
  print("Digite Peso");
  line = stdin.readLineSync();
  double peso = double.parse(line ?? "0");
  print("Digite altura");
  line = stdin.readLineSync();
  double altura = double.parse(line ?? "0");

  var p1 = new Pessoa(nome,peso,altura);
  double imc = p1.clacularIMC();
  print("Seu IMC é de ${imc.toStringAsFixed(2)}");
}
