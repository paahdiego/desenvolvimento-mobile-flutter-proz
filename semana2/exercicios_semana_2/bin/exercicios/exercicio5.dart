import '../utils/utils.dart';

void exercicio5() {
  clearConsole();
  double comprimentoDoRetangulo =
      receiveDoubleFromUser(message: "digite o comprimento do retangulo: ");

  double alturaDoRetangulo =
      receiveDoubleFromUser(message: "digite a altura do retangulo: ");

  double areaDoRetangulo = comprimentoDoRetangulo * alturaDoRetangulo;

  clearConsole();

  print(
    "comprimento do retangulo: ${comprimentoDoRetangulo.toStringAsFixed(2)}\naltura do retangulo: ${alturaDoRetangulo.toStringAsFixed(2)}\narea do retangulo: ${areaDoRetangulo.toStringAsFixed(2)}\n",
  );
}
