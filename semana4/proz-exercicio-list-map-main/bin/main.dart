import 'cities-controller.dart';
import 'menu.dart';
import 'utils.dart';

void main(List<String> arguments) {
  final citiesController = CitiesController();

  int? option;

  do {
    showMenu();

    option = receiveIntegerFromUser(
      message: "choose an option:",
      start: 0,
      end: 4,
      errorMessage: "provide an valid option",
    );

    if (option != 0) {
      switch (option) {
        case 1:
          citiesController.createCity();
          break;
        case 2:
          citiesController.removeCity();
          break;
        case 3:
          citiesController.editCity();
          break;
        case 4:
          citiesController.showCity();
          break;
      }

      pauseApp();
    }
  } while (option != 0);
}
