import '../utils/utils.dart';

void runSeventhExercice() {
  final gender = receiveLetterFromUser(
    message: "type your gender letter: \n\nM - Male\nF - Female\n\n",
    errorMessage: "You must provide an valid option",
    filter: ["m", "f"],
  );

  final height = receiveDoubleFromUser(
    message: "provide your height: ",
    start: 0,
    errorMessage: "You must provide a positive number",
  );

  late String genderName;
  late double idealWeight;

  if (gender == "M") {
    genderName = "Male";
    idealWeight = (72.7 * height) - 58;
  } else {
    genderName = "Female";
    idealWeight = (62.1 * height) - 44.7;
  }
  print(
    "your gender is: $genderName and your ideal weight is: ${idealWeight.toStringAsFixed(2)} Kg",
  );
}
