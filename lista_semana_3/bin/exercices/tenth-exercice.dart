import '../utils/utils.dart';

void runTenthExercice() {
  final ages = <int>[];
  for (int index = 0; index < 15; index++) {
    final age = receiveIntegerFromUser(
      message: "provide the ${getOrdinalNumberByInt(index + 1)} age: ",
      start: 0,
      errorMessage: "age provided must be positive",
    );
    ages.add(age);
  }

  final tillFifteenAges = <int>[];
  final betweenSixteenAndThirty = <int>[];
  final betweenThirtyOneAndFourtyFive = <int>[];
  final betweenFourtySixAndSixty = <int>[];
  final aboveSixty = <int>[];

  tillFifteenAges.addAll(ages.where((age) => age <= 15).toList());
  betweenSixteenAndThirty.addAll(
    ages.where((age) => age > 15 || age <= 30).toList(),
  );
  betweenThirtyOneAndFourtyFive.addAll(
    ages.where((age) => age > 30 || age <= 45).toList(),
  );
  betweenFourtySixAndSixty.addAll(
    ages.where((age) => age > 45 || age <= 60).toList(),
  );
  aboveSixty.addAll(
    ages.where((age) => age > 60).toList(),
  );

  print("\nages provided: ");
  for (final age in ages) {
    print("${getOrdinalNumberByInt(ages.indexOf(age) + 1)}) $age years.");
  }

  print("\nages before fifteen: ");
  for (final age in tillFifteenAges) {
    print(
      "${getOrdinalNumberByInt(tillFifteenAges.indexOf(age) + 1)}) $age years.",
    );
  }
  print("\nages between sixteen and thirty years: ");
  for (final age in betweenSixteenAndThirty) {
    print(
      "${getOrdinalNumberByInt(betweenSixteenAndThirty.indexOf(age) + 1)}) $age years.",
    );
  }
  print("\nages before fifteen: ");
  for (final age in tillFifteenAges) {
    print(
      "${getOrdinalNumberByInt(tillFifteenAges.indexOf(age) + 1)}) $age years.",
    );
  }
  print("\nages before fifteen: ");
  for (final age in tillFifteenAges) {
    print(
      "${getOrdinalNumberByInt(tillFifteenAges.indexOf(age) + 1)}) $age years.",
    );
  }
  print("\nages before fifteen: ");
  for (final age in tillFifteenAges) {
    print(
      "${getOrdinalNumberByInt(tillFifteenAges.indexOf(age) + 1)}) $age years.",
    );
  }
}
