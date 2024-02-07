import 'package:flutter/material.dart';

import '../../../utilites/assets.dart';
import '../../../utilites/styles.dart';
import 'custom_container_solo_quize_dollar.dart';


class CustomRow1Container extends StatelessWidget {
  const CustomRow1Container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsData.dollar),
        Text('20',style: Styles.style15),
        const Text(
          'Reward ',
          style: Styles.style17,
        ),
        const Text(
          'Entry',
          style: Styles.style17,
        ),
        const CustomContainerSoloQuizeDollar(
          text: '05',
          width: 60,
        ),
      ],
    );
  }
}
