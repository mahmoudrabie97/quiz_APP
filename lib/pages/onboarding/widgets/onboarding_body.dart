import 'package:flutter/material.dart';

import '../../../utilites/widgets/assets.dart';
import 'custom_container_onboarding.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      
        children: [
          Image.asset(
            AssetsData.onBoarding,
            height: MediaQuery.of(context).size.height * .4,
            width: MediaQuery.of(context).size.width * .6,
          ),
          CustomContainerOnBoarding(),
        ],
      ),
    );
  }
}


