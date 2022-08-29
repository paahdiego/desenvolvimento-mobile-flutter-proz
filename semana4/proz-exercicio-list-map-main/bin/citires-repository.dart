class CitiesRepository {
  final _cities = <Map<String, dynamic>>[];

  void createCity({
    required String nome,
    required String estado,
    required double populacao,
    required String regiao,
  }) {
    _cities.add({
      "nome": nome,
      'estado': estado,
      'populacao': populacao,
      'regiao': regiao,
    });
  }

  List<Map<String, dynamic>> getCities() {
    return _cities;
  }

  Map<String, dynamic> getCity(int index) {
    return _cities[index];
  }

  void removeCity(int index) {
    _cities.removeAt(index);
  }

  Map<String, dynamic> editCity(
    int index, {
    String? nome,
    String? estado,
    double? populacao,
    String? regiao,
  }) {
    if (nome != null) {
      _cities[index].update('nome', (value) => nome);
    }
    if (estado != null) {
      _cities[index].update('estado', (value) => estado);
    }
    if (populacao != null) {
      _cities[index].update('populacao', (value) => populacao);
    }
    if (nome != null) {
      _cities[index].update('nome', (value) => nome);
    }

    return _cities[index];
  }
}
