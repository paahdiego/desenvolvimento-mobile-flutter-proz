import '../utils/utils.dart';

void runSecondExercice() {
  final totalBoughtApples = receiveIntegerFromUser(
    message: "how many apples do you want to buy?",
    start: 0,
    errorMessage: "provide a positive number",
  );

  late double toPay;

  if (totalBoughtApples < 12) {
    toPay = 0.3 * totalBoughtApples;
  } else {
    toPay = 0.25 * totalBoughtApples;
  }

  print("the total price is: R\$${toPay.toStringAsFixed(2)}");
}
