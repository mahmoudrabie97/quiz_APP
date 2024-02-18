import 'package:flutter/material.dart';
import 'package:quizapp/pages/paymentpage/widgets/paymentbody.dart';
import 'package:quizapp/utilites/appcolors.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.primary,
      body: PaymentBody(),
    );
  }
}
