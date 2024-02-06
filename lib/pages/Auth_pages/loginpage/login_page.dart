import 'package:flutter/material.dart';
import 'package:quizapp/pages/Auth_pages/loginpage/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginBody(),
    );
  }
}
