import 'dart:io';

int receiveIntegerFromUser({
  String message = "provide a int type number",
  int? start,
  int? end,
  String errorMessage = "provide a valid int number",
}) {
  int? number;

  while (number == null) {
    print("\n$message");
    String? userInput = stdin.readLineSync();

    if (userInput != null) {
      number = int.tryParse(userInput);

      if (number == null) {
        print(errorMessage);
      } else {
        if (start != null && number < start) {
          number = null;
          print(errorMessage);
          continue;
        }
        if (end != null && number > end) {
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
      } else {
        if (start != null && number < start) {
          number = null;
          print(errorMessage);
          continue;
        }
        if (end != null && number > end) {
          number = null;
          print(errorMessage);
        }
      }
    }
  }

  return number;
}

String receiveLetterFromUser({
  String message = "provide a letter",
  String errorMessage = "provide a letter",
  List<String>? filter,
}) {
  String? letter;

  if (filter != null) {
    filter = filter.map((element) => element.toUpperCase()).toList();
  }

  while (letter == null) {
    print("\n$message");
    String? userInput = stdin.readLineSync();

    if (userInput != null) {
      letter = userInput[0].toUpperCase();
      if (!letter.contains(RegExp(r'[A-Z]'))) {
        print(errorMessage);
        letter = null;
        continue;
      }

      if (filter != null) {
        if (!filter.contains(letter)) {
          print(errorMessage);
          letter = null;
        }
      }
    }
  }

  return letter;
}

void pauseApp({String message = "\n\npress enter to proceed..."}) {
  print(message);
  stdin.readLineSync();
}

String getOrdinalNumberByInt(int number) {
  switch (number) {
    case 1:
      return "first";
    case 2:
      return "second";
    case 3:
      return "thirth";
    case 4:
      return "fourth";
    case 5:
      return "fifth";
    case 6:
      return "sixth";
    case 7:
      return "seventh";
    case 8:
      return "eighth";
    case 9:
      return "ninth";
    case 10:
      return "tenth";
    case 11:
      return "eleventh";
    case 12:
      return "twelfth";
    case 13:
      return "thirteen";
    case 14:
      return "fourteenth";
    case 15:
      return "fifteenth";
    default:
      return "";
  }
}
