import 'package:exercicios_semana_2/utils/utils.dart';

void exercicio2() async {
  clearConsole();

  int valor1 = receiveIntegerFromUser(message: "digite o primeiro valor: ");

  int valor2 = receiveIntegerFromUser(message: "digite o segundo valor: ");

  int diferenca = valor1 - valor2;

  print("valor1: $valor1");
  print("valor2: $valor2");
  print("diferença: $diferenca\n\n");
}
