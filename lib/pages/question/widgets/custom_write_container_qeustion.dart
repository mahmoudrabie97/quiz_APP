import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/styles.dart';
import '../../solo_quize/widgets/custom_row_question_body.dart';

class CustomWriteContainerQuestion extends StatelessWidget {
  const CustomWriteContainerQuestion({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          const CustomRowQuestionBody(),
          Text(
            'Question 13/20',
            style: Styles.style24.copyWith(color: AppColor.primary),
          ),
          const Text('Which Former Britishcolony was ',style: Styles.style17,),
          const Text('Given Back to China in 1997? ',style: Styles.style17,)
        ],
      ),
    );
  }
}