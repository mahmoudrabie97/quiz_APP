import 'package:flutter/material.dart';
import 'package:quizapp/pages/solo_quize/widgets/custom_row1_container.dart';
import 'package:quizapp/pages/solo_quize/widgets/custom_row2_container.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/assets.dart';
import '../../../utilites/styles.dart';
import 'custom_container_solo_body.dart';
import 'custom_container_solo_quize_dollar.dart';
class ListViewSoloQuizIetm extends StatelessWidget {
  const ListViewSoloQuizIetm({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomContainerSoloBody(
          childRow: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: CustomRow1Container(),
          ),
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
        ),
         CustomContainerSoloBody(
          childRow: Padding(
            padding: EdgeInsets.only(left: 16,right: 16),
            child: CustomRow2Container(),
          ),
          color: AppColor.lightGreyColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        )
      ],
    );
  }
}