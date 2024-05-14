import 'package:flutter/material.dart';
import 'package:quizapp/pages/Auth_pages/loginpage/login_page.dart';
import 'package:quizapp/utilites/extentionhelper.dart';

import '../../../../utilites/appcolors.dart';
import '../../../../utilites/styles.dart';

class CustomRowSignUp extends StatelessWidget {
  const CustomRowSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Already have account?',
          style: Styles.style17,
        ),
        GestureDetector(
          onTap: () {
            context.push(const LoginView());
          },
          child: Text(
            'Login',
            style: Styles.style17.copyWith(color: AppColor.primary),
          ),
        ),
      ],
    );
  }
}
