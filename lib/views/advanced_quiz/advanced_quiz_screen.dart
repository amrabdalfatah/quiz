import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/data/all_data.dart';
import 'package:quiz/provider/advanced_question_provider.dart';
import 'package:quiz/views/widgets/custom_app_bar.dart';
import 'package:quiz/views/widgets/custom_button.dart';

import 'widgets/show_infromation.dart';

class AdvancedQuizScreen extends StatelessWidget {
  const AdvancedQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int numberAdvance =
        Provider.of<AdvancedQuestionProvider>(context).numberQuestion;
    context.read<AdvancedQuestionProvider>().initialColorsChip();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomAppBar(
                currentQuestion: numberAdvance + 1,
                allQuestions: AllData.advancedQuestions.length,
                wrongAnswers:
                    Provider.of<AdvancedQuestionProvider>(context).wrongAnswers,
                correctAnswers: Provider.of<AdvancedQuestionProvider>(context)
                    .correctAnswers,
              ),
              const SizedBox(height: 20.0),
              ShowInformation(
                textInfo: AllData.advancedQuestions[numberAdvance].information,
                color: Colors.orange,
              ),
              SizedBox(
                height: 200,
                child: Image.network(
                  AllData.advancedQuestions[numberAdvance].image,
                ),
              ),
              const SizedBox(height: 20.0),
              ShowInformation(
                textInfo: Provider.of<AdvancedQuestionProvider>(context).answer,
                color: Colors.pink,
              ),
              const SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  children: List.generate(
                    AllData.advancedQuestions[numberAdvance].keywords.length,
                    (item) {
                      var keyword = AllData
                          .advancedQuestions[numberAdvance].keywords[item];
                      return GestureDetector(
                        onTap: () {
                          Provider.of<AdvancedQuestionProvider>(context,
                                  listen: false)
                              .collectAnswer(keyword, item);
                        },
                        child: Chip(
                          label: Text(
                            keyword,
                            style: TextStyle(
                              color: Colors.white,
                              decoration: context
                                      .watch<AdvancedQuestionProvider>()
                                      .colorsChip[item]
                                  ? TextDecoration.lineThrough
                                  : null,
                            ),
                          ),
                          color: WidgetStatePropertyAll<Color>(
                            context
                                    .watch<AdvancedQuestionProvider>()
                                    .colorsChip[item]
                                ? Colors.grey
                                : Colors.orange,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const Spacer(),
              CustomButton(
                buttonClicked: () {
                  context.read<AdvancedQuestionProvider>().checkAnswer(context);
                },
                icon: Icons.done,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
