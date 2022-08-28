import '../utils/utils.dart';

void runEighthExercice() {
  final cartValue = receiveDoubleFromUser(
    message: "provide the total price of the purchase",
    start: 0.0,
    errorMessage: "the total value must be positive",
  );

  int discount = 0;

  if (cartValue > 500) {
    //inicio, condição de parada; incremento
    for (int counter = 500; counter < cartValue; counter += 100) {
      discount += 1;
      if (discount == 25) {
        break;
      }
    }
  }

  print("The purchase total value is: R\$ ${cartValue.toStringAsFixed(2)}");
  print("The total discount is: ${(discount).toStringAsFixed(2)} %");
  print(
    "The value with discount is: R\$ ${(cartValue * (1 - (discount / 100.0))).toStringAsFixed(2)}",
  );
}
