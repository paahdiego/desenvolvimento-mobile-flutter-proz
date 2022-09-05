class LinhaDeOnibus {
  String _codigo;
  String pontoDeChegada;
  String pontoDePartida;
  String _motorista;

  LinhaDeOnibus(
    this._codigo,
    this._motorista, {
    required this.pontoDeChegada,
    required this.pontoDePartida,
  }) : assert(_codigo.length == 4 && _motorista.isNotEmpty) {
    //garante que o código tenha 4 digitos
    if (_codigo.length > 4) {
      _codigo = _codigo.substring(_codigo.length - 4);
    } else if (_codigo.length < 4) {
      _codigo = _codigo.padLeft(4, '0');
    }
  } //assets só funciona quando em debug

  String get codigo => _codigo;
  set codigo(String codigo) {
    if (codigo.length > 4) {
      _codigo = codigo.substring(codigo.length - 4);
      return;
    } else if (codigo.length < 4) {
      _codigo = codigo.padLeft(4, '0');
      return;
    }
    _codigo = codigo;
  }

  String get motorista => _motorista;
  set motorista(String motorista) {
    if (motorista.isEmpty) return;
    _motorista = motorista;
  }

  @override
  String toString() {
    return 'LinhaDeOnibus(_codigo: $_codigo, pontoDeChegada: $pontoDeChegada, pontoDePartida: $pontoDePartida, _motorista: $_motorista)';
  }
}

void main(List<String> arguments) {
  final linhaDeOnibus1 = LinhaDeOnibus(
    "22",
    "Ramiro da Silva",
    pontoDePartida: "Jaguaribe",
    pontoDeChegada: "Castelo Branco",
  );

  final linhaDeOnibus2 = LinhaDeOnibus(
    "003200",
    "Julio Costa",
    pontoDePartida: "Centro",
    pontoDeChegada: "Manaíra",
  );

  print(linhaDeOnibus1);
  print(linhaDeOnibus2);

  linhaDeOnibus1.motorista = "Claudio Regis";

  linhaDeOnibus2.codigo = "105210";

  print("motorista da linha 1: ${linhaDeOnibus1.motorista}");
  print("codigo da linha 2: ${linhaDeOnibus2.codigo}");

  linhaDeOnibus2.codigo = "305";

  print("codigo da linha 2: ${linhaDeOnibus2.codigo}");
}
