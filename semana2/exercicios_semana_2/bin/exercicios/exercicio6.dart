import 'dart:math';

import '../utils/utils.dart';

void exercicio6() {
  clearConsole();
  double ladoTrianguloEquilatero = receiveDoubleFromUser(
    message: "digite o lado do triangulo equilatero",
  );

  double areaDoTrianguloEquilatero =
      (ladoTrianguloEquilatero * ladoTrianguloEquilatero) * sqrt(3) / 4.0;

  clearConsole();

  print(
    "lado do triangulo equilatero: ${ladoTrianguloEquilatero.toStringAsFixed(2)}\narea do triangulo equilatero: ${areaDoTrianguloEquilatero.toStringAsFixed(2)}\n",
  );
}
