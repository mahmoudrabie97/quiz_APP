import 'package:flutter/material.dart';

import '../../../utilites/widgets/custom_appbar_profile.dart';
import 'custom_payment_method_main_container.dart';

class CustomPaymentMethodBody extends StatelessWidget {
  const CustomPaymentMethodBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(
          text: 'Payment Method',
          icon: Icons.home,
          onPressed: () {},
        ),
        CustomPaymentMethodMainContainer(),
      ],
    );
  }
}
