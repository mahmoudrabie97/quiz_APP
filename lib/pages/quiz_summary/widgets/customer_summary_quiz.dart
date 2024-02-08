import 'package:flutter/material.dart';
import 'package:quizapp/pages/question/widgets/custom_row_question_appbar.dart';
import 'package:quizapp/pages/quiz_summary/widgets/custom_row_summary_appar.dart';

import '../../../utilites/appcolors.dart';

class CustomerMainSummaryContainerQuiz extends StatelessWidget {
  const CustomerMainSummaryContainerQuiz({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        width: double.infinity,
        height: height * .25,
        decoration: const BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(22),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(bottom: 120),
          child: CustomRowSummaryAPBar(),
        ),
      ),
    );
  }
}
