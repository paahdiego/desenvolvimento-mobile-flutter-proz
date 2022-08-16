import 'dart:io';

int receiveIntegerFromUser({
  String message = "Digite um número inteiro",
  int? start,
  int? end,
}) {
  int? number;

  while (number == null) {
    print("\n$message");
    String? read = stdin.readLineSync();

    if (read != null) {
      number = int.tryParse(read);

      if (number == null) {
        print("é necessário um valor inteiro válido");
        continue;
      }

      if (start != null && end != null) {
        if (number < start || number > end) {
          number = null;
          print("é necessário um valor inteiro dentro do limite");
        }
      }
    }
  }

  return number;
}

double receiveDoubleFromUser({
  String message = "Digite um número double",
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

String clientTypeNameByNumber(int tipoDeCliente) {
  switch (tipoDeCliente) {
    case 1:
      return "Client Comum";
    case 2:
      return "Funcionário";
    case 3:
      return "Cliente Vip";
    default:
      return " opção inválida para tipo de cliente.";
  }
}
