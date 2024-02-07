import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/styles.dart';

class CustomRowQuestionBody extends StatelessWidget {
  const CustomRowQuestionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "13",
          style: Styles.style13,
        ),
        Container(
          width: 50,
          height: 10,
          decoration: BoxDecoration(
            color: AppColor.primary,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        const Spacer(),
        Positioned(
          top: 0,
         right: 0,
         left: 0,
         bottom: 14,
          child: CircleAvatar(
            backgroundColor: AppColor.primary,
            radius: 40,
            child: CircleAvatar(
              backgroundColor: AppColor.whiteColor,
              radius: 35,
              child: Text(
                '6',
                style: Styles.style26.copyWith(color: AppColor.primary),
              ),
            ),
          ),
        ),
        Spacer(),
        Container(
          width: 50,
          height: 10,
          decoration: const BoxDecoration(
            color: AppColor.greenColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        Text(
          "07",
          style: Styles.style13.copyWith(
            color: AppColor.greenColor,
          ),
        ),
      ],
    );
  }
}
