import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/styles.dart';
class CustomRowText extends StatelessWidget {
  const CustomRowText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        const Text(

          'You’ve scored ',
          style: Styles.style17,
        ),
        Text('+89 ',style: Styles.style17.copyWith(color: AppColor.lightGreenColor),),
        const Text(
          ' points',
          style: Styles.style17,
        ),
      ],
    );
  }
}
