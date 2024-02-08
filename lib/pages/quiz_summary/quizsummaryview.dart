import 'package:flutter/material.dart';

import 'package:quizapp/pages/question/widgets/custom_question_body.dart';
import 'package:quizapp/pages/quiz_summary/widgets/customer_quiz_summary_body.dart';
import 'package:quizapp/utilites/appcolors.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      backgroundColor: AppColor.primary,
      // appBar: AppBar(
      //   backgroundColor: AppColor.primary,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       color: AppColor.whiteColor,
      //     ),
      //     onPressed: () {},
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.menu_outlined,color: AppColor.whiteColor,),
      //     ),
      //   ],
      // ),
      body: CustomerQuizSummaryBody(),
    );
  }
}
