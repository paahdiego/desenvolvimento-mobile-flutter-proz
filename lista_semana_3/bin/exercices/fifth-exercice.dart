import '../utils/utils.dart';
import '../models/fuelSupply.dart';

void runFifthExercice() {
  final litters = receiveDoubleFromUser(
    message: "provide how many litters did you refill:",
    start: 0.0,
    errorMessage: "the litters number must be positive",
  );

  final fuelType = receiveLetterFromUser(
    message: "select the fuel type: \n A - Ethanol \n G - Gasoline",
    errorMessage: "you must provide an valid option",
    filter: ["A", "G"],
  );

  final fuelName = getFuelNameByLetter(fuelType);

  final fuelPrice = receiveDoubleFromUser(
    message: "what is the price of the litter of $fuelName: ",
    start: 0.0,
    errorMessage: "the price of $fuelName must be positive",
  );

  final fuelSupply = FuelSupply.fromLittersTypeAndPrice(
    fuelName: fuelName,
    litters: litters,
    price: fuelPrice,
  );

  print(fuelSupply);
}

String getFuelNameByLetter(String fuelFirstLetter) {
  if (fuelFirstLetter == "A") {
    return "Ethanol";
  } else {
    return "Gasoline";
  }
}
