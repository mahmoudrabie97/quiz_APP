import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';

class CustomRowSummaryAPBar extends StatelessWidget {
  const CustomRowSummaryAPBar({Key? key}) : super(key: key);

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
        Spacer(),
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
