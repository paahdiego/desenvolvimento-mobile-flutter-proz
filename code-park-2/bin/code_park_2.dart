class Aluno {
  String _nome;
  String _matricula;
  double _idade;
  Aluno(this._nome, this._matricula, this._idade) : assert(_idade >= 0);

  double get idade => _idade;

  set idade(double idade) {
    if (idade < 0) return;
    _idade = idade;
  }

  String get nome => _nome;

  set nome(String nome) {
    if (nome.isEmpty) return;
    _nome = nome;
  }

  String get matricula => _matricula;

  void mostrarAluno() {
    print("nome: $_nome");
    print("matricula: $_matricula");
    print("idade: $_idade");
  }
}

void main(List<String> arguments) {
  final aluno1 = Aluno("Ronaldo", "2022124", 25);
  final aluno2 = Aluno("Rafael", "2022125", 28);
  final aluno3 = Aluno("Renata", "2022126", 18);

  aluno1.mostrarAluno();
  aluno2.mostrarAluno();
  aluno3.mostrarAluno();

  aluno1.idade = 26; //setter
  aluno1.nome = ""; // teste de validação

  //Getters
  print("nome do aluno 1: ${aluno1.nome}");
  print("idade do aluno 1: ${aluno1.idade}");

  aluno1.mostrarAluno();
}
