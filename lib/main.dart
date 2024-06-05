import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/provider/question_provider.dart';

import 'views/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuestionProvider(),
      child: const MaterialApp(
        title: 'Quiz',
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}
