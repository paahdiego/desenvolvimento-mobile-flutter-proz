import 'dart:math';

import 'package:exercicios_semana_2/utils/utils.dart';

void exercicio7() {
  // C = 2piR
  double circunferencia =
      receiveDoubleFromUser(message: "digite o valor da circunferencia: ");

  double raio = circunferencia / pi;

  print(
      "circunferencia: ${circunferencia.toStringAsFixed(2)}\nraio:${raio.toStringAsFixed(2)}\n");
}
