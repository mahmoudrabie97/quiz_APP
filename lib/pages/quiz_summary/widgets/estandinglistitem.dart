import 'package:flutter/material.dart';
import 'package:quizapp/pages/quiz_summary/widgets/custom_column_quize_summary.dart';
import 'package:quizapp/pages/quiz_summary/widgets/custom_container_think.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';

class EstandingsListItem extends StatelessWidget {
  const EstandingsListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: '1 st Try'),
          CustomColumnQuizeSummary(
            image: AssetsData.question,
            text: 'Total Que',
          ),
          CustomContainerThink(),
          CustomColumnQuizeSummary(
            image: AssetsData.accept,
            text: 'Correct',
          ),
          CustomContainerThink(),
          CustomColumnQuizeSummary(
            image: AssetsData.cansel1,
            text: ' Wrong',
          ),
        ],
      ),
    );
  }
}
