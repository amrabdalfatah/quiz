import 'package:flutter/material.dart';
import 'package:quiz/data/all_data.dart';

class QuestionProvider with ChangeNotifier {
  int numberQuestion = 0;

  String choice = " ______ ";
  int? choiceKey;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  List<Color> colors = [];
  IconData iconButton = Icons.done;

  void addColors() {
    AllData.allQuestions[numberQuestion].choices.values.toList().forEach((_) {
      colors.add(Colors.indigo);
    });
  }

  void checkChoice(int key) {
    choiceKey = key;
    colors.clear();
    addColors();
    colors[key] = Colors.orange;
    notifyListeners();
  }

  void finalCheck(BuildContext context) {
    // Validate choiceKey
    if (iconButton == Icons.done) {
      var valueSelected =
          AllData.allQuestions[numberQuestion].choices[choiceKey!];
      var correctAnswer = AllData.allQuestions[numberQuestion].answer;
      if (valueSelected == correctAnswer) {
        choice = correctAnswer;
        colors[choiceKey!] = Colors.green;
        iconButton = Icons.arrow_forward;
        correctAnswers++;
        notifyListeners();
      } else {
        MapEntry specificItem = MapEntry(0, "amr");
        AllData.allQuestions[numberQuestion].choices
            .map((int key, String value) {
          if (value == correctAnswer) {
            specificItem = MapEntry(key, value);
          }
          return specificItem;
        });
        // Key correct
        colors[choiceKey!] = Colors.red;
        colors[specificItem.key] = Colors.green;
        wrongAnswers++;
        iconButton = Icons.arrow_forward;
        notifyListeners();
      }
    } else {
      // check length of list
      if (numberQuestion < AllData.allQuestions.length - 1) {
        choice = " ______ ";
        choiceKey = null;
        numberQuestion++;
        colors.clear();
        addColors();
        iconButton = Icons.done;
        notifyListeners();
      } else {
        Navigator.of(context).pop();
      }
    }
  }

  bool isCompleted = true;

  void checkFinalCorrectAnswers() {
    var result = correctAnswers / AllData.allQuestions.length;
    if (result > 0.50) {
      isCompleted = true;
    }
  }
}
