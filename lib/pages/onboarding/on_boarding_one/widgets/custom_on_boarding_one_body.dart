import 'package:flutter/material.dart';
import 'package:quizapp/pages/onboarding/onboarding_2/onboarding_view.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/extentionhelper.dart';
import 'package:quizapp/utilites/styles.dart';

import 'custom_on_boarding_small_container.dart';

class CustomOnBoardingOneBody extends StatelessWidget {
  const CustomOnBoardingOneBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 10, right: 10),
      child: Container(
        width: double.infinity,
        height: height * .8,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 120, bottom: 25, left: 12, right: 12),
              child: Text(
                'What type of account will you open ?',
                style: Styles.style30,
              ),
            ),
            GestureDetector(
              onTap: () {
                context.push(OnBoardingView());
              },
              child: CustomOnBoardingSmallContainer(
                color: AppColor.primary,
                image: AssetsData.student,
                text: 'Student',
              ),
            ),
            SizedBox(
              height: 18,
            ),
            GestureDetector(
              onTap: () {
                context.push(OnBoardingView());
              },
              child: CustomOnBoardingSmallContainer(
                color: AppColor.lightGreenColor,
                image: AssetsData.father,
                text: 'Father',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
