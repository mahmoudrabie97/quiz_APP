import 'package:flutter/material.dart';
import 'package:quizapp/pages/Auth_pages/loginpage/widgets/custom_container_login.dart';
import 'package:quizapp/utilites/widgets/assets.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset(AssetsData.login, width: 200),
            CustomContainerLogin(),
          ],
        ),
      ],
    );
  }
}
