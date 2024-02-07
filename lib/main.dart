import 'package:flutter/material.dart';
import 'package:quizapp/pages/Auth_pages/signUp/signup_view.dart';
import 'package:quizapp/pages/onboarding/onboarding_view.dart';
import 'package:quizapp/pages/question/question_view.dart';
import 'package:quizapp/pages/solo_quize/solo_quize_view.dart';

import 'package:quizapp/utilites/appcolors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.primary,
      ),
      home: const QuestionView(),
    );
  }
}
//