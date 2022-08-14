import 'dart:math';

import '../utils/utils.dart';

void exercicio7() {
  // C = 2piR
  clearConsole();
  double circunferencia =
      receiveDoubleFromUser(message: "digite o valor da circunferencia: ");

  double raio = circunferencia / (2 * pi);

  clearConsole();

  print(
      "circunferencia: ${circunferencia.toStringAsFixed(2)}\nraio:${raio.toStringAsFixed(2)}\n");
}
