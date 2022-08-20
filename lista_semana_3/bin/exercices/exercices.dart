import 'first-exercice.dart';
import 'second-exercice.dart';
import 'third-exercice.dart';

void callExerciceByGivenNumber(int option) {
  switch (option) {
    case 1:
      return runFirstExercice();
    case 2:
      return runSecondExercice();
    case 3:
      return runThirdExercice();
    case 4:
      return runFirstExercice();
    case 5:
      return runFirstExercice();
    case 6:
      return runFirstExercice();
    case 7:
      return runFirstExercice();
    case 8:
      return runFirstExercice();
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
4. 
5. 
6. 
7. 
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
