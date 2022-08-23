import 'eighth-exercice.dart';
import 'fifth-exercice.dart';
import 'first-exercice.dart';
import 'second-exercice.dart';
import 'seventh-exercice.dart';
import 'sixth-exercice.dart';
import 'third-exercice.dart';
import 'fourth-exercice.dart';

void callExerciceByGivenNumber(int option) {
  switch (option) {
    case 1:
      return runFirstExercice();
    case 2:
      return runSecondExercice();
    case 3:
      return runThirdExercice();
    case 4:
      return runForthExercice();
    case 5:
      return runFifthExercice();
    case 6:
      return runSixthExercice();
    case 7:
      return runSeventhExercice();
    case 8:
      return runEighthExercice();
    case 9:
      return runFirstExercice();
    case 10:
      return runFirstExercice();
    case 11:
      return runFirstExercice();
    case 12:
      return runFirstExercice();
    case 13:
      return runFirstExercice();
    case 14:
      return runFirstExercice();
    case 15:
      return runFirstExercice();
  }
}

void showExercicesMenu() {
  print(
    """
\x1B[2J\x1B[0;0H
Exercices Menu\n

1. Compare two numbers
2. Calculate total price by number of bought apples
3. Check the type of given triangle
4. Get the smallest and biggest number providing 3 numbers
5. Get the total price to pay after fuel supply
6. Get month name by its number
7. Calculate your ideal weight
8. 
9. 
10. 
11. 
12. 
13. 
14. 
15. 

0 .Exit
""",
  );
}
