import 'package:flutter/material.dart';
import 'package:quizapp/utilites/assets.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/styles.dart';
import 'custom_column_quize_summary.dart';
import 'custom_container_think.dart';
import 'custom_row_text.dart';

class CustomerInformationSummary extends StatelessWidget {
  const CustomerInformationSummary({
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
          Image.asset('assets/svg/medal 1.png'),
          const Text(
            'Congratulations !',
            style: Styles.style25,
          ),
          const CustomRowText(),
          const Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomColumnQuizeSummary(image: AssetsData.question, text: 'Total Que',),
                CustomContainerThink(),
                CustomColumnQuizeSummary(image: AssetsData.accept, text: 'Correct',),
                CustomContainerThink(),
                CustomColumnQuizeSummary(image: AssetsData.cansel1, text: ' Wrong',),
              ],
            ),
          )

        ],
      ),
    );
  }
}

 