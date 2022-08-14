import 'dart:io';

void showMenu() {
  print(
      '\n\tMenu\n\n1.Soma\n2.Diferença\n3.Multiplicação\n4.Média\n5.Area do Retangulo\n6.Area do triangulo equilatero\n7.Raio da Circunferencia\n8.Calculo de idade a partir da quantidade de dias.\n0.Sair\n\n');
}

void clearConsole() {
  print("\x1B[2J\x1B[0;0H");
}

int receiveIntegerFromUser({
  String message = "Digite um número inteiro",
}) {
  int? number;

  while (number == null) {
    print("\n$message");
    String? read = stdin.readLineSync();

    if (read != null) number = int.tryParse(read);
    if (number == null) {
      print("é necessário um valor inteiro válido");
    }
  }

  return number;
}

double receiveDoubleFromUser({
  String message = "Digite um número to tipo double",
}) {
  double? number;

  while (number == null) {
    print("\n$message");
    String? read = stdin.readLineSync();

    if (read != null) number = double.tryParse(read);
    if (number == null) {
      print("é necessário um valor double válido");
    }
  }

  return number;
}
