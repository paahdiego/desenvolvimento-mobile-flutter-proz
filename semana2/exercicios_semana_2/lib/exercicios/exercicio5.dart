import 'package:exercicios_semana_2/utils/utils.dart';

void exercicio5() {
  clearConsole();
  double ladoDoRetangulo =
      receiveDoubleFromUser(message: "digite o lado do retangulo: ");

  double alturaDoRetangulo =
      receiveDoubleFromUser(message: "digite a altura do retangulo: ");

  double areaDoRetangulo = ladoDoRetangulo * alturaDoRetangulo;

  print(
    "lado do retangulo: ${ladoDoRetangulo.toStringAsFixed(2)}\naltura do retangulo: ${alturaDoRetangulo.toStringAsFixed(2)}\narea do retangulo: ${areaDoRetangulo.toStringAsFixed(2)}\n",
  );
}
