import 'dart:io';

int receiveIntegerFromUser({
  String message = "provide a int type number",
  int? start,
  int? end,
  String? errorMessage = "provide a valid int number",
}) {
  int? number;

  while (number == null) {
    print("\n$message");
    String? userInput = stdin.readLineSync();

    if (userInput != null) {
      number = int.tryParse(userInput);

      if (number == null) {
        print(errorMessage);
        continue;
      }

      if (start != null && end != null) {
        if (number < start || number > end) {
          number = null;
          print(errorMessage);
        }
      }
    }
  }

  return number;
}

double receiveDoubleFromUser({
  String message = "provide a double type number",
  double? start,
  double? end,
  String? errorMessage = "provide a double int number",
}) {
  double? number;

  while (number == null) {
    print("\n$message");
    String? userInput = stdin.readLineSync();

    if (userInput != null) {
      number = double.tryParse(userInput);

      if (number == null) {
        print(errorMessage);
        continue;
      }

      if (start != null && end != null) {
        if (number < start || number > end) {
          number = null;
          print(errorMessage);
        }
      }
    }
  }

  return number;
}

void pauseApp({String message = "\n\npress enter to proceed..."}) {
  print(message);
  stdin.readLineSync();
}
