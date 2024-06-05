import 'package:quiz/data/model/advanced_question.dart';

import 'model/question.dart';

class AllData {
  static const List<Question> allQuestions = [
    Question(
      image:
          "https://www.shutterstock.com/shutterstock/photos/2296128709/display_1500/stock-vector--indian-teacher-talking-with-students-indian-lady-teacher-2296128709.jpg",
      question: "She ______ a Teacher",
      answer: "is",
      choices: {
        0: "am",
        1: "is",
        2: "are",
      },
    ),
    Question(
      image:
          "https://www.shutterstock.com/shutterstock/photos/2296128709/display_1500/stock-vector--indian-teacher-talking-with-students-indian-lady-teacher-2296128709.jpg",
      question: "He ______ a Teacher",
      answer: "is",
      choices: {
        0: "am",
        1: "is",
        2: "are",
      },
    ),
    Question(
      image:
          "https://www.shutterstock.com/shutterstock/photos/2296128709/display_1500/stock-vector--indian-teacher-talking-with-students-indian-lady-teacher-2296128709.jpg",
      question: "You ______ a Teacher",
      answer: "are",
      choices: {
        0: "am",
        1: "is",
        2: "are",
      },
    ),
    Question(
      image:
          "https://www.shutterstock.com/shutterstock/photos/2296128709/display_1500/stock-vector--indian-teacher-talking-with-students-indian-lady-teacher-2296128709.jpg",
      question: "She ______ a Teacher",
      answer: "is",
      choices: {
        0: "am",
        1: "is",
        2: "are",
      },
    ),
    Question(
      image:
          "https://www.shutterstock.com/shutterstock/photos/2296128709/display_1500/stock-vector--indian-teacher-talking-with-students-indian-lady-teacher-2296128709.jpg",
      question: "He ______ a Teacher",
      answer: "is",
      choices: {
        0: "am",
        1: "is",
        2: "are",
      },
    ),
    Question(
      image:
          "https://www.shutterstock.com/shutterstock/photos/2296128709/display_1500/stock-vector--indian-teacher-talking-with-students-indian-lady-teacher-2296128709.jpg",
      question: "You ______ a Teacher",
      answer: "are",
      choices: {
        0: "am",
        1: "is",
        2: "are",
      },
    ),
    Question(
      image:
          "https://www.shutterstock.com/shutterstock/photos/2296128709/display_1500/stock-vector--indian-teacher-talking-with-students-indian-lady-teacher-2296128709.jpg",
      question: "She ______ a Teacher",
      answer: "is",
      choices: {
        0: "am",
        1: "is",
        2: "are",
      },
    ),
  ];
  static const List<AdvancedQuestion> advancedQuestions = [
    AdvancedQuestion(
      image:
          "https://www.shutterstock.com/shutterstock/photos/2296128709/display_1500/stock-vector--indian-teacher-talking-with-students-indian-lady-teacher-2296128709.jpg",
      information: "A jet is expensive. A sports car is cheap.",
      answer: "A jet is more expensive than sports car .",
      keywords: [
        "expensive",
        "sports",
        "the",
        "than",
        "most",
        "is",
        "expensiver",
        "jet",
        "car",
        "a",
        ".",
        "A",
        "more",
      ],
    ),
    AdvancedQuestion(
      image:
          "https://www.shutterstock.com/shutterstock/photos/2296128709/display_1500/stock-vector--indian-teacher-talking-with-students-indian-lady-teacher-2296128709.jpg",
      information: "Amr Abdalfatah Mohamed",
      answer: "A jet is more expensive than sports car .",
      keywords: [
        "expensive",
        "sports",
        "the",
        "than",
        "most",
        "is",
        "expensiver",
        "jet",
        "car",
        "a",
        ".",
        "A",
        "more",
      ],
    ),
    AdvancedQuestion(
      image:
          "https://www.shutterstock.com/shutterstock/photos/2296128709/display_1500/stock-vector--indian-teacher-talking-with-students-indian-lady-teacher-2296128709.jpg",
      information: "Adel Abdalfatah Mohamed",
      answer: "A jet is more expensive than a sports car.",
      keywords: [
        "expensive",
        "sports",
        "the",
        "than",
        "most",
        "is",
        "expensiver",
        "jet",
        "car",
        "a",
        ".",
        "A",
        "more",
      ],
    ),
    AdvancedQuestion(
      image:
          "https://www.shutterstock.com/shutterstock/photos/2296128709/display_1500/stock-vector--indian-teacher-talking-with-students-indian-lady-teacher-2296128709.jpg",
      information: "Mohamed Ahmed",
      answer: "A jet is more expensive than a sports car.",
      keywords: [
        "expensive",
        "sports",
        "the",
        "than",
        "most",
        "is",
        "expensiver",
        "jet",
        "car",
        "a",
        ".",
        "A",
        "more",
      ],
    ),
  ];

  static List<String> separateQuestion(String question) {
    return question.split(" ______ ");
  }
}
