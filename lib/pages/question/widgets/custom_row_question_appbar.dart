import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';

class CustomRowQuestionAppbar extends StatelessWidget {
  const CustomRowQuestionAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.whiteColor,
          ),
        ),
        SizedBox(width: 300,),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: AppColor.whiteColor,
          ),
        ),
      ],
    );
  }
}