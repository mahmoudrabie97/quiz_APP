import 'package:flutter/material.dart';
import 'package:quizapp/pages/Auth_pages/signUp/widgets/signup_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SignUpBody());
  }
}
