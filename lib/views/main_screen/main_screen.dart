import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/provider/advanced_question_provider.dart';
import 'package:quiz/provider/question_provider.dart';
import 'package:quiz/views/advanced_quiz/advanced_quiz_screen.dart';
import 'package:quiz/views/quiz_screen/quiz_screen.dart';
import 'package:quiz/views/widgets/main_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<QuestionProvider>(context, listen: false)
        .checkFinalCorrectAnswers();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainButton(
              textButton: "Quiz",
              isCompleted: Provider.of<QuestionProvider>(context).isCompleted,
              previousCompleted: true,
              buttonClicked: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) {
                      return const QuizScreen();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 16.0),
            MainButton(
              textButton: "Advanced Quiz",
              isCompleted: false,
              previousCompleted:
                  Provider.of<QuestionProvider>(context).isCompleted,
              buttonClicked: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) {
                      return ChangeNotifierProvider(
                        create: (context) => AdvancedQuestionProvider(),
                        child: AdvancedQuizScreen(),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
