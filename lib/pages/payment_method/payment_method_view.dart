import 'package:flutter/material.dart';
import 'package:quizapp/pages/payment_method/widgets/custom_payment_method_body.dart';


class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomPaymentMethodBody(),
    );
  }
}
