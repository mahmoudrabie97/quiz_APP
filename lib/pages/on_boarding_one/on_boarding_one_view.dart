import 'package:flutter/material.dart';
import 'package:quizapp/pages/on_boarding_one/widgets/custom_on_boarding_one_body.dart';
import 'package:quizapp/utilites/appcolors.dart';


class OnBoardingOneView extends StatelessWidget {
  const OnBoardingOneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: AppColor.primary,
      // appBar: AppBar(),
      body: SafeArea(child: CustomOnBoardingOneBody()),
    );
  }

}
