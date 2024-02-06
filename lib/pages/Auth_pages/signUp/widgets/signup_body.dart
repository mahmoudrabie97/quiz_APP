import 'package:flutter/material.dart';
import 'package:quizapp/utilites/assets.dart';

import 'custom_container_signup.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Image.asset(
              AssetsData.signUp,
              width: MediaQuery.of(context).size.width * .5,
              height: MediaQuery.of(context).size.height * .24,
            ),
             CustomContainerSignUp(),
          ],
        ),
      ],
    );
  }
}
