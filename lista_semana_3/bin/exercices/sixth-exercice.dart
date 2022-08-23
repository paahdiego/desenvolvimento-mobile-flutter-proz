import '../utils/utils.dart';

void runSixthExercice() {
  final monthNumber = receiveIntegerFromUser(
    message: "type the month number",
    start: 1,
    end: 12,
    errorMessage: "the month number must be between 1 and 12",
  );

  print(
    "number provided: $monthNumber\nmonth: ${getMonthByItsNumber(monthNumber)}",
  );
}

String getMonthByItsNumber(int monthNumber) {
  switch (monthNumber) {
    case 1:
      return "January";
    case 2:
      return "February";
    case 3:
      return "March";
    case 4:
      return "April";
    case 5:
      return "May";
    case 6:
      return "June";
    case 7:
      return "July";
    case 8:
      return "August";
    case 9:
      return "September";
    case 10:
      return "October";
    case 11:
      return "November";
    case 12:
      return "December";
    default:
      return "Invalid month number";
  }
}
