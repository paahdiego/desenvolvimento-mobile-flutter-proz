import 'dart:math';

import 'package:exercicios_semana_2/utils/utils.dart';

void exercicio6() {
  //Triangulo Equilatero - 3 Lados iguais = lado*lado*sqrt(3)/4
  double ladoTrianguloEquilatero = receiveDoubleFromUser(
    message: "digite o lado do triangulo equilatero",
  );

  double areaDoTrianguloEquilatero =
      (ladoTrianguloEquilatero * ladoTrianguloEquilatero) * sqrt(3) / 4.0;

  print(
    "lado do triangulo equilatero: ${ladoTrianguloEquilatero.toStringAsFixed(2)}\narea do triangulo equilatero: ${areaDoTrianguloEquilatero.toStringAsFixed(2)}\n",
  );
}
