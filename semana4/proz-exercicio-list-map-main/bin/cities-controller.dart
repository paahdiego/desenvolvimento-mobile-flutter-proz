import 'citires-repository.dart';
import 'utils.dart';

class CitiesController {
  final citiesRepository = CitiesRepository();

  createCity() {
    final nome = receiveStringFromUser(
      message: "digite o nome: ",
      errorMessage: "digite um nome válido.",
    );

    final estado = receiveStringFromUser(
      message: "digite o estado: ",
      errorMessage: "digite um estado válido.",
    );

    final regiao = receiveStringFromUser(
      message: "digite o região",
      errorMessage: "digite uma região válido.",
    );

    final populacao = receiveDoubleFromUser(
      message: "digite a populacao",
      start: 0,
      errorMessage: "digite uma populacao válida.",
    );

    citiesRepository.createCity(
      nome: nome,
      estado: estado,
      regiao: regiao,
      populacao: populacao,
    );
  }

  void editCity() {
    showCities();

    final cities = citiesRepository.getCities();

    final indice = receiveIntegerFromUser(
      message: "digite o indice da cidade que deseja editar",
      start: 1,
      end: cities.length,
      errorMessage: "digite um indice válido",
    );

    final campo = receiveIntegerFromUser(
      message:
          "qual campo deseja editar?\n\n1. Nome\n2. Região\n3. Estado\n4.Populacao\n",
      start: 1,
      end: 4,
      errorMessage: "digite um valor válido.",
    );

    String? novoNome, novaRegiao, novoEstado;
    double? novaPopulacao;

    switch (campo) {
      case 1:
        novoNome = receiveStringFromUser(
          message: "digite o nome",
          errorMessage: "digite um nome válido",
        );

        break;
      case 2:
        novaRegiao = receiveStringFromUser(
          message: "digite o regiao",
          errorMessage: "digite uma região válida",
        );

        break;

      case 3:
        novoEstado = receiveStringFromUser(
          message: "digite o estado",
          errorMessage: "digite um estado válido",
        );

        break;
      case 4:
        novaPopulacao = receiveDoubleFromUser(
          message: "digite o populacao",
          start: 0,
          errorMessage: "Número de população deve ser positivo",
        );

        break;
    }

    final editedCity = citiesRepository.editCity(
      indice - 1,
      nome: novoNome,
      regiao: novaRegiao,
      estado: novoEstado,
      populacao: novaPopulacao,
    );

    showCityDetails(editedCity);
  }

  void removeCity() {
    final cities = citiesRepository.getCities();

    showCities();

    final indice = receiveIntegerFromUser(
      message: "digite o indice da cidade que deseja remover",
      start: 1,
      end: cities.length,
      errorMessage: "digite um indice de cidade válido",
    );

    citiesRepository.removeCity(indice - 1);
  }

  void showCity() {
    showCities();

    final cities = citiesRepository.getCities();

    final indice = receiveIntegerFromUser(
      message: "digite o indice da cidade que deseja visualizar",
      start: 1,
      end: cities.length,
      errorMessage: "digite um indice de cidade válido",
    );

    final city = citiesRepository.getCity(indice - 1);

    showCityDetails(city);
  }

  void showCities() {
    final cities = citiesRepository.getCities();

    for (int i = 0; i < cities.length; i++) {
      print("${i + 1}) nome da cidade: ${cities[i]['nome']}");
    }
  }

  void showCityDetails(Map<String, dynamic> city) {
    print("nome: ${city['nome']}");
    print("estado: ${city['estado']}");
    print("regiao: ${city['regiao']}");
    print("populacao: ${city['populacao']}");
  }
}
