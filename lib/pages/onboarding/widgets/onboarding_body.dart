import 'package:flutter/material.dart';

import '../../../utilites/assets.dart';


class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsData.onBoarding),
        CustomContainerOnBoarding(),
      ],
    );
  }
}

class CustomContainerOnBoarding extends StatelessWidget {
  const CustomContainerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),

    );
  }
}


