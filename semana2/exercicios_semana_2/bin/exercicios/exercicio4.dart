import '../utils/utils.dart';

void exercicio4() async {
  clearConsole();
  int valor1 = receiveIntegerFromUser(message: "digite o primeiro valor: ");

  int valor2 = receiveIntegerFromUser(message: "digite o segundo valor: ");

  double media = (valor1 + valor2) / 2;

  clearConsole();

  print("valor1: $valor1");
  print("valor2: $valor2");
  print("media: ${media.toStringAsFixed(2)}\n\n");
}
