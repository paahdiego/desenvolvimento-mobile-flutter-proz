class FuelSupply {
  final String name;
  final double price;
  final double discount;
  final double litters;
  final double toPay;

  FuelSupply({
    required this.name,
    required this.price,
    required this.discount,
    required this.litters,
    required this.toPay,
  });

  factory FuelSupply.fromLittersTypeAndPrice({
    required String fuelName,
    required double litters,
    required double price,
  }) {
    late double discount;

    if (litters > 20) {
      if (fuelName == "Gasoline") {
        discount = 0.06;
      } else {
        discount = 0.05;
      }
    } else {
      if (fuelName == "Gasoline") {
        discount = 0.04;
      } else {
        discount = 0.03;
      }
    }

    return FuelSupply(
      discount: discount,
      litters: litters,
      name: fuelName,
      toPay: litters * (price * (1 - discount)),
      price: price,
    );
  }

  @override
  String toString() {
    return """
Fuel name: $name
price: R\$${price.toStringAsFixed(2)}
discount: ${(discount * 100).toStringAsFixed(2)} %
litters: ${litters.toStringAsFixed(2)} Lts
value to pay: R\$ ${toPay.toStringAsFixed(2)}
""";
  }
}
