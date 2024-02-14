import 'package:flutter/material.dart';
import 'package:quizapp/utilites/extentionhelper.dart';
import 'package:quizapp/utilites/styles.dart';

import '../../../utilites/appcolors.dart';

class CustomRowSummaryAPBar extends StatelessWidget {
  const CustomRowSummaryAPBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(89, 255, 255, 255),
          ),
        ),
        Text(
          'Quiz Summary ',
          style: Styles.style28,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.home,
            color: AppColor.whiteColor,
          ),
        ),
      ],
    );
  }
}
