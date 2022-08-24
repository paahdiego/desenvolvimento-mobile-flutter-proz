import '../utils/utils.dart';

void runEighthExercice() {
  final cartValue = receiveDoubleFromUser(
    message: "provide the total price of the purchase",
    start: 0.0,
    errorMessage: "the total value must be positive",
  );

  double discount = 0.00; // utilizar int

  if (cartValue > 500) {
    for (int counter = 500; counter < cartValue; counter += 100) {
      discount += 0.01;
      print(discount);
      if (discount == 0.25) {
        print("entrou aqui");
        break;
      } // precisa corrigir
    }
  }

  print("The purchase total value is: R\$ ${cartValue.toStringAsFixed(2)}");
  print("The total discount is: ${(discount * 100).toStringAsFixed(2)} %");
  print(
    "The value with discount is: R\$ ${(cartValue * (1 - discount)).toStringAsFixed(2)}",
  );
}
