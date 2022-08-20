import '../utils/utils.dart';

void runFirstExercice() {
  final firstNumber = receiveDoubleFromUser(message: "type the first number.");
  final secondNumber =
      receiveDoubleFromUser(message: "type the second number.");

  final compare = firstNumber.compareTo(secondNumber);

  if (compare < 0) {
    print(
      "first number ($firstNumber) is lesser than second one ($secondNumber)",
    );
  } else if (compare > 0) {
    print(
      "first number ($firstNumber) is greater than second one ($secondNumber)",
    );
  } else {
    print(
      "both first and second numbers are equals ($firstNumber,$secondNumber)",
    );
  }
}
