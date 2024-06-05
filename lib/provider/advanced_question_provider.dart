import 'package:flutter/material.dart';
import 'package:quiz/data/all_data.dart';

class AdvancedQuestionProvider with ChangeNotifier {
  int numberQuestion = 0;
  int correctAnswers = 0;
  int wrongAnswers = 0;

  String answer = "";
  List<bool> colorsChip = [];

  void initialColorsChip() {
    AllData.advancedQuestions[numberQuestion].keywords.forEach((keyword) {
      colorsChip.add(false);
    });
  }

  void collectAnswer(String choice, int item) {
    var allItems = answer.split(" ");
    if (allItems.contains(choice)) {
      answer = "";
      allItems.remove(choice);
      allItems.forEach((item) {
        if (answer == "") {
          answer = item;
        } else {
          answer = "$answer $item";
        }
      });
      colorsChip[item] = false;
    } else {
      if (answer == "") {
        answer = choice;
      } else {
        answer = "$answer $choice";
      }
      colorsChip[item] = true;
    }
    print(answer);
    notifyListeners();
  }

  void checkAnswer(BuildContext context) {
    if (answer == AllData.advancedQuestions[numberQuestion].answer) {
      correctAnswers++;
      numberQuestion++;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Congratulation"),
          duration: Duration(seconds: 1),
        ),
      );
    } else {
      wrongAnswers++;
      numberQuestion++;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AllData.advancedQuestions[numberQuestion].answer,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          duration: const Duration(seconds: 4),
          backgroundColor: Colors.red,
        ),
        snackBarAnimationStyle: AnimationStyle(
          curve: Curves.easeIn,
          duration: const Duration(seconds: 2),
        ),
      );
    }
    notifyListeners();
  }
}
// a
// answer => A jet car => ["A", "jet", "car"]
