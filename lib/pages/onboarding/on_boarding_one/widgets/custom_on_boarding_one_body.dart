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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(top: 120, bottom: 25, left: 12, right: 12),
                child: Text(
                  'Login As',
                  style: Styles.style30,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.push(const OnBoardingView());
                },
                child: const CustomOnBoardingSmallContainer(
                  color: AppColor.primary,
                  image: AssetsData.student,
                  text: 'Student',
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              GestureDetector(
                onTap: () {
                  context.push(const OnBoardingView());
                },
                child: const CustomOnBoardingSmallContainer(
                  color: AppColor.greenColor,
                  image: AssetsData.parent,
                  text: 'Parent',
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              GestureDetector(
                onTap: () {
                  context.push(const OnBoardingView());
                },
                child: const CustomOnBoardingSmallContainer(
                  color: AppColor.pink,
                  image: AssetsData.father,
                  text: 'Teacher',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
