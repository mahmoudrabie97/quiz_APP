import 'package:flutter/material.dart';
import 'package:quizapp/pages/onboarding/onboarding_2/widgets/onboarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
