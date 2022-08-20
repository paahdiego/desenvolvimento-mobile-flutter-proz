import '../utils/utils.dart';

void runThirdExercice() {
  bool isValidTriangle = false;

  do {
    final firstSideOfTriangle = receiveDoubleFromUser(
      start: 0.0,
      message: "provide the first side of the triangle",
      errorMessage: "provide a valid positive number",
    );
    final secondSideOfTriangle = receiveDoubleFromUser(
      start: 0.0,
      message: "provide the second side of the triangle",
      errorMessage: "provide a valid positive number",
    );
    final thirdSideOfTriangle = receiveDoubleFromUser(
      start: 0.0,
      message: "provide the third side of the triangle",
      errorMessage: "provide a valid positive number",
    );

    isValidTriangle = checkIfIsAValidTriangle(
      firstSideOfTriangle,
      secondSideOfTriangle,
      thirdSideOfTriangle,
    );

    print(
        "sides of the triangule: ($firstSideOfTriangle, $secondSideOfTriangle, $thirdSideOfTriangle");

    if (!isValidTriangle) {
      print("This is not a valid triangule");
      pauseApp(message: "\n\nPress enter to try again");
    } else {
      print("valid triangule");
    }
  } while (!isValidTriangle);
}

bool checkIfIsAValidTriangle(double sideA, double sideB, double sideC) {
  //https://mundoeducacao.uol.com.br/matematica/condicao-existencia-um-triangulo.htm#:~:text=S%C3%B3%20ir%C3%A1%20existir%20um%20tri%C3%A2ngulo,soma%20dos%20outros%20dois%20lados.
  bool validState = true;
  if ((sideB - sideC).abs() >= sideA || sideA >= sideB + sideC) {
    validState = false;
  }
  if ((sideA - sideC).abs() >= sideB || sideB >= sideA + sideC) {
    validState = false;
  }
  if ((sideA - sideB).abs() >= sideC || sideC >= sideA + sideB) {
    validState = false;
  }

  return validState;
}

String returnTrianguleType(double sideA, double sideB, double sideC) {
  if (sideA == sideB && sideB == sideC) {
    return "Equilateral Triangle";
  } else if (sideA == sideB || sideB == sideC || sideC == sideA) {
    return "Isosceles Triangle";
  } else {
    return "Scalene Triangle";
  }
}
