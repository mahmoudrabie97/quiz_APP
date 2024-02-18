import 'package:flutter/material.dart';
import 'package:quizapp/pages/my_wallet/widgets/custom_wallet_body.dart';

import 'package:quizapp/pages/quiz_summary/widgets/customer_quiz_summary_body.dart';
import 'package:quizapp/utilites/appcolors.dart';

class MyWalletView extends StatelessWidget {
  const MyWalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.primary,
      body: CustomWalletBody(),
    );
  }
}
