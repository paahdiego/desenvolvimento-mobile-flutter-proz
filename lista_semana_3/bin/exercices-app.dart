import 'exercices/exercices.dart';
import 'utils/utils.dart';

void runExercicesApp() {
  int? option;

  do {
    showExercicesMenu();

    option = receiveIntegerFromUser(
      message: "choose an option:",
      start: 0,
      end: 15,
      errorMessage: "provide an valid option",
    );

    if (option != 0) {
      callExerciceByGivenNumber(option);

      pauseApp();
    }
  } while (option != 0);
}
