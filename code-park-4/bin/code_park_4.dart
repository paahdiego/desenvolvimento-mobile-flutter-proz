abstract class Pessoa {
  String nome;

  Pessoa({
    required this.nome,
  });
}

class Funcionario extends Pessoa {
  String cpf;

  Funcionario({
    required super.nome,
    required this.cpf,
  });

  String formatarCPF() {
    final formatted = cpf.replaceAll(".", "").replaceAll("-", "");

    return "${formatted.substring(0, 3)}.${formatted.substring(3, 6)}.${formatted.substring(6, 9)}-${formatted.substring(9, 11)}";
  }
}

class Aluno extends Pessoa {
  DateTime aniversario;

  Aluno({
    required super.nome,
    required this.aniversario,
  });

  String formatarAniversario() {
    return "${aniversario.day}/${aniversario.month}/${aniversario.year}";
  }
}

class ContaCorrente {
  String nomeDoCliente;
  double saldo;

  ContaCorrente({
    required this.nomeDoCliente,
    required this.saldo,
  });

  String formatarSaldo() {
    return "R\$ ${saldo.toStringAsFixed(2).replaceAll(".", ",")}";
  }
}

void main(List<String> arguments) {
  final funcionario = Funcionario(nome: "Robson", cpf: "21255533322");

  print(funcionario.formatarCPF());

  final aluno = Aluno(nome: "Roberval", aniversario: DateTime(1994, 07, 20));

  print(aluno.formatarAniversario());

  final contaCorrente = ContaCorrente(
    nomeDoCliente: "Julia",
    saldo: 15232.2543232,
  );

  print(contaCorrente.formatarSaldo());
}
