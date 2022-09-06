abstract class Animal {
  String nome;
  String peso;
  String altura;

  Animal({
    required this.nome,
    required this.peso,
    required this.altura,
  });

  void comer() {}

  void dormir() {}

  void andar(double x, double y, double z) {}
}

class Gato extends Animal {
  String especie;
  String cor;
  String idade;

  Gato({
    required super.nome,
    required super.peso,
    required super.altura,
    required this.especie,
    required this.cor,
    required this.idade,
  });

  void miar() {}
  void ronronar() {}
  void arrumarConfusaoComOutrosGatos({required List<Gato> gatosParaBrigar}) {}
}

abstract class Veiculo {
  String peso;
  String altura;
  String comprimento;
  String classificacao;
  Veiculo({
    required this.peso,
    required this.altura,
    required this.comprimento,
    required this.classificacao,
  });

  void movimentar(double x, double y, double z) {}
  void ligar() {}
  void parar() {}
}

class Carro extends Veiculo {
  String nome;
  String placa;
  String chassi;
  String renavam;
  Carro({
    required super.peso,
    required super.altura,
    required super.comprimento,
    required super.classificacao,
    required this.nome,
    required this.placa,
    required this.chassi,
    required this.renavam,
  });

  void sinalizarManutencao() {}
  void sinalizarCombustivel() {}
  void buzinar() {}
}
