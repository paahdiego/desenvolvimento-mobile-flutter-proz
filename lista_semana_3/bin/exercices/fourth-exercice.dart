import '../utils/utils.dart';

void runForthExercice() {
  final firstNumber =
      receiveDoubleFromUser(message: "provide the first number: ");
  final secondNumber =
      receiveDoubleFromUser(message: "provide the second number: ");
  final thirdNumber =
      receiveDoubleFromUser(message: "provide the third number: ");

  print(
      "you provided these numbers: $firstNumber, $secondNumber, $thirdNumber");

  late double biggest;
  late double smallest;

  if (firstNumber > secondNumber && firstNumber > thirdNumber) {
    biggest = firstNumber;
  } else if (secondNumber > firstNumber && secondNumber > thirdNumber) {
    biggest = secondNumber;
  } else {
    biggest = thirdNumber;
  }

  if (firstNumber <= secondNumber && firstNumber <= thirdNumber) {
    smallest = firstNumber;
  } else if (secondNumber <= firstNumber && secondNumber <= thirdNumber) {
    smallest = secondNumber;
  } else {
    smallest = thirdNumber;
  }

  print("smallest: $smallest, biggest: $biggest ");
}
