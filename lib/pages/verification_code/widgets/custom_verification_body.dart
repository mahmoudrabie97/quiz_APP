import 'package:flutter/material.dart';
import 'package:quizapp/pages/verification_code/widgets/custom_squar_container.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/styles.dart';

import '../../../utilites/widgets/custombutton.dart';
import 'custom_verification_main_container.dart';

class CustomVerificationBody extends StatelessWidget {
  const CustomVerificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColor.whiteColor,
            )),
        Padding(
          padding: const EdgeInsets.only(left: 130),
          child: Image.asset(AssetsData.graduation),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: CustomVerificationMainContainer(),
        ),
      ],
    );
  }
}


