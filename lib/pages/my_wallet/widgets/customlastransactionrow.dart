import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';

class CustomLastTransactionRow extends StatelessWidget {
  const CustomLastTransactionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: 'Last Transaction',
            fontSize: 17,
            fontWeight: FontWeight.w900,
          ),
          CustomText(
            text: 'View',
            color: AppColor.primary,
            fontSize: 17,
            fontWeight: FontWeight.w900,
          )
        ],
      ),
    );
  }
}
