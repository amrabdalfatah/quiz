import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/data/all_data.dart';
import 'package:quiz/provider/question_provider.dart';
import 'package:quiz/views/widgets/custom_app_bar.dart';
import 'package:quiz/views/widgets/custom_button.dart';
import 'package:quiz/views/widgets/select_answer.dart';

import '../widgets/show_question.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var questionNumber = Provider.of<QuestionProvider>(context).numberQuestion;
    var question =
        AllData.separateQuestion(AllData.allQuestions[questionNumber].question);
    Provider.of<QuestionProvider>(context, listen: false).addColors();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomAppBar(
                currentQuestion: questionNumber + 1,
                allQuestions: AllData.allQuestions.length,
                wrongAnswers:
                    Provider.of<QuestionProvider>(context).wrongAnswers,
                correctAnswers:
                    Provider.of<QuestionProvider>(context).correctAnswers,
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                height: 200,
                child: Image.network(
                  AllData.allQuestions[0].image,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              ShowQuestion(
                question: question,
                choice: " ${Provider.of<QuestionProvider>(context).choice} ",
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                height: 280,
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      AllData.allQuestions[questionNumber].choices.length,
                      (element) {
                        var choices =
                            AllData.allQuestions[questionNumber].choices;
                        return SelectAnswer(
                          answer: choices.values.toList()[element], // am
                          value: choices.keys.toList()[element], // 0
                          groupValue: Provider.of<QuestionProvider>(context)
                              .choiceKey, // 2
                          color: Provider.of<QuestionProvider>(context)
                              .colors[element],
                          changeRadio: Provider.of<QuestionProvider>(context)
                                      .iconButton ==
                                  Icons.done
                              ? (value) {
                                  Provider.of<QuestionProvider>(context,
                                          listen: false)
                                      .checkChoice(value!);
                                }
                              : null,
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              CustomButton(
                buttonClicked: () {
                  Provider.of<QuestionProvider>(context, listen: false)
                      .finalCheck(context);
                },
                icon: Provider.of<QuestionProvider>(context).iconButton,
                // icon: Icons.arrow_forward_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
