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
    ages.where((age) => age > 15 && age <= 30).toList(),
  );

  betweenThirtyOneAndFourtyFive.addAll(
    ages.where((age) => age > 30 && age <= 45).toList(),
  );

  betweenFourtySixAndSixty.addAll(
    ages.where((age) => age > 45 && age <= 60).toList(),
  );

  aboveSixty.addAll(
    ages.where((age) => age > 60).toList(),
  );

  int total = 0;
  total+= tillFifteenAges.length;
  total+= betweenSixteenAndThirty.length;
  total+= betweenThirtyOneAndFourtyFive.length;
  total+= betweenFourtySixAndSixty.length;
  total+= aboveSixty.length;

  print("\nages provided: ");
  for (final age in ages) {
    print("${getOrdinalNumberByInt(ages.indexOf(age) + 1)}) $age years.");
  }

  print("\ntotal ages: ${ages.length}");

  print("\nages till 15: ${tillFifteenAges.length} - ${((tillFifteenAges.length/total.toDouble()) * 100.00).toStringAsFixed(2)}%");
  for (final age in tillFifteenAges) {
    print("$age years.",);
  }
  print("\nages between 16 and 30 years: ${betweenSixteenAndThirty.length} - ${(betweenSixteenAndThirty.length/total.toDouble()) * 100.00}%");
  for (final age in betweenSixteenAndThirty) {
    print("$age years.");
  }
  print("\nages between 31 and 45: ${betweenThirtyOneAndFourtyFive.length} - ${(betweenThirtyOneAndFourtyFive.length/total.toDouble()) * 100.00}%");
  for (final age in betweenThirtyOneAndFourtyFive) {
    print("$age years.",);
  }
  print("\nages between 46 and 60: ${betweenFourtySixAndSixty.length} - ${(betweenFourtySixAndSixty.length/total.toDouble()) * 100.00}%");
  for (final age in betweenFourtySixAndSixty) {
    print("$age years.",);
  }
  print("\nages above 60: ${aboveSixty.length} - ${(aboveSixty.length/total.toDouble()) * 100.00}%");
  for (final age in aboveSixty) {
    print("$age years.");
  }

}
