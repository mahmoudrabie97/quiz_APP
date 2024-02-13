import 'package:flutter/material.dart';
import 'package:quizapp/pages/verification_code/widgets/custom_verification_body.dart';

class VerificationaCodeView extends StatelessWidget {
  const VerificationaCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: CustomVerificationBody()),
    );
  }
}




