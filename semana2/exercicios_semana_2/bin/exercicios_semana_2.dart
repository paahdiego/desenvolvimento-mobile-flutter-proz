import 'package:exercicios_semana_2/exercicios/exercicios.dart';
import 'package:exercicios_semana_2/utils/utils.dart';

void main(List<String> arguments) {
  int? option;
  do {
    showMenu();

    option = receiveIntegerFromUser(
      message: "Digite o número da opção desejada: ",
    );

    switch (option) {
      case 1:
        exercicio1();
        break;
      case 2:
        exercicio2();
        break;
      case 3:
        exercicio3();
        break;
      case 4:
        exercicio4();
        break;
      case 5:
        exercicio5();
        break;
      case 6:
        exercicio6();
        break;
      case 7:
        exercicio7();
        break;
      case 8:
        exercicio8();
        break;
      default:
        break;
    }
  } while (option != 0);
}
