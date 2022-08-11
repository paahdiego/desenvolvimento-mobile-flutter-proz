import 'package:exercicios_semana_2/utils/utils.dart';

void exercicio8() {
  int idadeEmDias = receiveIntegerFromUser(
    message: "digite sua idade em quantidade de dias: ",
  );

  print("idade em dias: $idadeEmDias");

  int anosDeIdade = idadeEmDias ~/ 365;
  int restoDeDias = idadeEmDias % 365;

  int mesesDeIdade = restoDeDias ~/ 30;
  int diasDeIdade = restoDeDias % 30;

  print("anos: $anosDeIdade\nmeses: $mesesDeIdade\ndias: $diasDeIdade\n");
}
