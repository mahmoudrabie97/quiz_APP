import 'package:flutter/material.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/styles.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/custom_half_container.dart';
import 'custom_row1_son_quizes_list.dart';
import 'custom_row2_son_quizes_list.dart';

class CustomListViewIetm extends StatelessWidget {
  const CustomListViewIetm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHalfContainerBody(
            childRow: CustomRow1SonQuizezList(),
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
            )),
        CustomHalfContainerBody(
            childRow: CustomRow2SonQuizezList(),
            color: AppColor.lightBlue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            )),
      ],
    );
  }
}


