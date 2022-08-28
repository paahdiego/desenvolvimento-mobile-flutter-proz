import '../utils/utils.dart';

void runNinthExercice() {
  final ages = <int>[];
  for (int index = 0; index < 10; index++) {
    final age = receiveIntegerFromUser(
      message: "provide the ${getOrdinalNumberByInt(index + 1)} age: ",
      start: 0,
      errorMessage: "age provided must be positive",
    );
    ages.add(age);
  }

  final aboveEighteenAges = <int>[];

  aboveEighteenAges.addAll(ages.where((age) => age >= 18).toList());

  print("\nages provided: ");
  for (final age in ages) {
    print("${getOrdinalNumberByInt(ages.indexOf(age) + 1)}) $age years.");
  }

  print("\nages above eighteen: ");
  for (final age in aboveEighteenAges) {
    print(
      "${getOrdinalNumberByInt(aboveEighteenAges.indexOf(age) + 1)}) $age years.",
    );
  }
}
